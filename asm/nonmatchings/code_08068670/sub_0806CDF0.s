	thumb_func_start sub_0806CDF0
sub_0806CDF0: @ 0x0806CDF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r5, r0, #0
	bl sub_080020F4
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0]
	mov sl, r0
	ldr r1, [r5, #4]
	str r1, [sp, #0x20]
	ldr r0, [r5, #0x14]
	cmp r0, #7
	bls _0806CE16
	movs r0, #7
	str r0, [r5, #0x14]
_0806CE16:
	ldrh r2, [r5, #0x14]
	mov r8, r2
	mov r3, r8
	str r3, [sp, #0x10]
	mov r4, sl
	cmp r4, #3
	bhi _0806CE3C
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	ldr r0, _0806CE38
	adds r1, r1, r0
	mov r9, r1
	lsls r4, r4, #2
	str r4, [sp, #0x28]
	b _0806CEBC
_0806CE38: .4byte gUnk_03003CE0
_0806CE3C:
	ldr r1, _0806CE98
	mov r2, sl
	lsls r0, r2, #1
	add r0, sl
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r3, _0806CE9C
	adds r0, r0, r3
	ldr r1, [r1, #0]
	adds r7, r1, r0
	adds r0, r7, #0
	adds r0, #0x6a
	ldr r4, _0806CEA0
	adds r1, r7, r4
	ldrh r0, [r0, #0]
	lsls r2, r2, #2
	str r2, [sp, #0x28]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bhs _0806CEBC
	ldr r0, _0806CEA4
	adds r4, r2, r0
	movs r0, #1
	ldr r1, [sp, #0x20]
	lsls r0, r1
	mvns r0, r0
	str r0, [sp, #0x24]
_0806CE74:
	bl sub_08056E90
	cmp r0, #0
	bne _0806CE8E
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806CE8E
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0806CE8E
	cmp r0, #0xb
	bne _0806CEA8
_0806CE8E:
	ldr r0, [r4, #0]
	ldr r2, [sp, #0x24]
	ands r0, r2
	str r0, [r4, #0]
	b _0806D484
_0806CE98: .4byte gUnk_030056F4
_0806CE9C: .4byte 0xFFFFF480
_0806CEA0: .4byte 0x0000022B
_0806CEA4: .4byte gUnk_030063E0
_0806CEA8:
	bl sub_080003F0
	adds r0, r7, #0
	adds r0, #0x6a
	ldr r3, _0806CF08
	adds r1, r7, r3
	ldrh r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _0806CE74
_0806CEBC:
	ldr r4, [sp, #0x1c]
	cmp r4, sl
	beq _0806CF14
	mov r0, sl
	cmp r0, #3
	bls _0806CF4A
	ldr r3, _0806CF0C
	ldr r1, [sp, #0x10]
	lsls r2, r1, #1
	ldr r1, [r5, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r3, #6
	adds r2, r2, r3
	adds r3, r7, #0
	adds r3, #0x5e
	ldrh r0, [r3, #0]
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806CF44
	ldr r2, _0806CF10
	ldr r5, [sp, #0x28]
	adds r2, r5, r2
	movs r1, #1
	ldr r6, [sp, #0x20]
	lsls r1, r6
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	movs r0, #0
	strh r0, [r3, #0]
	b _0806D484
_0806CF08: .4byte 0x0000022B
_0806CF0C: .4byte gUnk_084EBF1C
_0806CF10: .4byte gUnk_030063E0
_0806CF14:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806CF88
	adds r4, r4, r0
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x14]
	bl sub_0806898C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0xc2
	ldrh r1, [r4, #0]
	subs r1, r1, r0
	strh r1, [r4, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0806CF44
	movs r0, #0
	strh r0, [r4, #0]
_0806CF44:
	mov r0, sl
	cmp r0, #3
	bhi _0806D040
_0806CF4A:
	mov r0, r9
	adds r0, #0xb4
	ldrh r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #6
	bhi _0806CF6A
_0806CF56:
	mov r1, r9
	ldrh r0, [r1, #0x20]
	cmp r0, #0xa
	bne _0806CF60
	b _0806D3AC
_0806CF60:
	bl sub_080003F0
	ldrh r0, [r4, #0]
	cmp r0, #6
	bls _0806CF56
_0806CF6A:
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r9
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #0x14]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x18]
	movs r7, #0
	movs r5, #0
	b _0806D032
	.2byte 0x0000
_0806CF88: .4byte gUnk_03003CE0
_0806CF8C:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _0806D03C
	adds r6, r1, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r4, r6, r2
	ldr r0, [r4, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0806D02C
	adds r0, r6, #0
	adds r0, #0x68
	mov r1, r9
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	beq _0806CFC4
	cmp r0, #0
	bne _0806D02C
	bl sub_0800CF80
	cmp r0, #0
	bne _0806D02C
_0806CFC4:
	ldr r0, [r4, #0]
	ldrh r1, [r0, #0]
	lsrs r1, r1, #4
	ldr r3, [sp, #0x14]
	subs r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r4, [sp, #0x18]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0806D02C
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0806CFF2
	negs r0, r0
_0806CFF2:
	cmp r0, #0xc
	bgt _0806D02C
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0806D002
	negs r0, r0
_0806D002:
	cmp r0, #0xc
	bgt _0806D02C
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	add r2, sp, #4
	adds r3, r7, #0
	lsls r1, r3, #1
	adds r2, r2, r1
	strh r0, [r2, #0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r4, sp
	adds r0, r4, r3
	strb r5, [r0, #0]
_0806D02C:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0806D032:
	bl sub_08002164
	cmp r5, r0
	blo _0806CF8C
	b _0806D0DE
_0806D03C: .4byte gUnk_03003CE0
_0806D040:
	ldrh r5, [r7, #0x14]
	str r5, [sp, #0x14]
	ldrh r0, [r7, #0x18]
	str r0, [sp, #0x18]
	movs r7, #0
	movs r5, #0
_0806D04C:
	ldr r0, _0806D1AC
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _0806D0D4
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r2, _0806D1B0
	ldr r1, [r2, #0]
	adds r4, r1, r0
	ldr r1, [r4, #0x14]
	ldr r3, [sp, #0x14]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r1, [r4, #0x18]
	ldr r4, [sp, #0x18]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0806D0D4
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0806D098
	negs r0, r0
_0806D098:
	cmp r0, #0xc
	bgt _0806D0D4
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0806D0A8
	negs r0, r0
_0806D0A8:
	cmp r0, #0xc
	bgt _0806D0D4
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	add r2, sp, #4
	adds r3, r7, #0
	lsls r1, r3, #1
	adds r2, r2, r1
	strh r0, [r2, #0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r4, sp
	adds r1, r4, r3
	adds r0, r5, #4
	strb r0, [r1, #0]
_0806D0D4:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _0806D04C
_0806D0DE:
	movs r5, #0
	cmp r5, r7
	bhs _0806D0FA
_0806D0E4:
	mov r1, sp
	adds r0, r1, r5
	ldrb r0, [r0, #0]
	movs r1, #8
	bl sub_08074DE8
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	blo _0806D0E4
_0806D0FA:
	ldr r2, [sp, #0x1c]
	cmp r2, sl
	bne _0806D1BC
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806D116
	bl sub_0800CD34
	cmp r0, #0
	bne _0806D116
	movs r0, #0x91
	bl sub_0805865C
_0806D116:
	ldr r3, [sp, #0x1c]
	cmp r3, sl
	bne _0806D1BC
	mov r3, r9
	adds r3, #0xc4
	ldr r1, _0806D1B4
	mov r4, r8
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	ldrh r5, [r3, #0]
	adds r0, r0, r5
	movs r4, #0
	strh r0, [r3, #0]
	mov r1, r9
	adds r1, #0x62
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1, #0]
	movs r5, #0
	ldrsh r1, [r1, r5]
	cmp r0, r1
	ble _0806D146
	strh r2, [r3, #0]
_0806D146:
	mov r0, r9
	strh r4, [r0, #0x24]
	strh r4, [r0, #0x26]
	ldr r2, [r0, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0806D172
	adds r0, r6, #0
	adds r0, #0x62
	ldrh r0, [r0, #0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r3, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	blt _0806D172
	ldr r0, _0806D1B8
	ands r2, r0
	mov r5, r9
	str r2, [r5, #0x30]
_0806D172:
	mov r6, r8
	cmp r6, #2
	bls _0806D188
	mov r0, r9
	movs r1, #6
	bl sub_0801E278
	mov r0, r9
	movs r1, #7
	bl sub_0801E278
_0806D188:
	mov r0, r8
	cmp r0, #3
	bls _0806D19E
	mov r0, r9
	movs r1, #5
	bl sub_0801E278
	mov r0, r9
	movs r1, #2
	bl sub_0801E278
_0806D19E:
	mov r1, r8
	cmp r1, #4
	bhi _0806D1A6
	b _0806D472
_0806D1A6:
	mov r0, r9
	b _0806D288
	.2byte 0x0000
_0806D1AC: .4byte gUnk_030056FC
_0806D1B0: .4byte gUnk_030056F4
_0806D1B4: .4byte gUnk_084EC18E
_0806D1B8: .4byte 0xFFFDFFFF
_0806D1BC:
	mov r2, sl
	cmp r2, #3
	bls _0806D1C4
	b _0806D3C0
_0806D1C4:
	movs r5, #0
	cmp r5, r7
	blo _0806D1CC
	b _0806D472
_0806D1CC:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	bne _0806D1D4
	b _0806D472
_0806D1D4:
	mov r4, sp
	adds r0, r4, r5
	ldrb r0, [r0, #0]
	ldr r6, [sp, #0x1c]
	cmp r0, r6
	beq _0806D1E2
	b _0806D398
_0806D1E2:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0806D290
	adds r6, r1, r0
	bl sub_0801DF8C
	cmp r0, #0
	bne _0806D29C
	adds r4, r6, #0
	adds r4, #0xc4
	ldr r1, _0806D294
	mov r2, r8
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add r1, sp, #4
	lsls r2, r5, #1
	adds r1, r1, r2
	ldrh r1, [r1, #0]
	adds r1, #0x78
	bl __divsi3
	ldrh r1, [r4, #0]
	adds r1, r1, r0
	strh r1, [r4, #0]
	adds r3, r6, #0
	adds r3, #0x62
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r3, #0]
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r1, r0
	ble _0806D232
	strh r2, [r4, #0]
_0806D232:
	ldr r2, [r6, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0806D252
	ldrh r0, [r3, #0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r4, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	blt _0806D252
	ldr r0, _0806D298
	ands r2, r0
	str r2, [r6, #0x30]
_0806D252:
	mov r4, r8
	cmp r4, #2
	bls _0806D268
	adds r0, r6, #0
	movs r1, #6
	bl sub_0801E278
	adds r0, r6, #0
	movs r1, #7
	bl sub_0801E278
_0806D268:
	mov r5, r8
	cmp r5, #3
	bls _0806D27E
	adds r0, r6, #0
	movs r1, #5
	bl sub_0801E278
	adds r0, r6, #0
	movs r1, #2
	bl sub_0801E278
_0806D27E:
	mov r0, r8
	cmp r0, #4
	bhi _0806D286
	b _0806D472
_0806D286:
	adds r0, r6, #0
_0806D288:
	movs r1, #3
	bl sub_0801E278
	b _0806D472
_0806D290: .4byte gUnk_03003CE0
_0806D294: .4byte gUnk_084EC18E
_0806D298: .4byte 0xFFFDFFFF
_0806D29C:
	bl sub_0800CF80
	cmp r0, #0
	beq _0806D2A6
	b _0806D472
_0806D2A6:
	mov r1, r8
	cmp r1, #5
	bhi _0806D2AE
	b _0806D472
_0806D2AE:
	cmp r1, #6
	bls _0806D2BC
	adds r0, r6, #0
	adds r0, #0x62
	ldrh r1, [r0, #0]
	adds r0, #0x62
	b _0806D2D0
_0806D2BC:
	adds r0, r6, #0
	adds r0, #0x62
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bge _0806D2CA
	adds r1, #3
_0806D2CA:
	asrs r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xc4
_0806D2D0:
	strh r1, [r0, #0]
	ldrh r0, [r6, #0x20]
	cmp r0, #0xb
	bne _0806D2DC
	movs r0, #0
	strh r0, [r6, #0x20]
_0806D2DC:
	adds r1, r6, #0
	adds r1, #0x68
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_0806617C
	ldr r0, [r6, #0x30]
	ldr r1, _0806D318
	ands r0, r1
	str r0, [r6, #0x30]
	bl sub_08067D74
	ldrh r0, [r6, #0]
	mov r1, r9
	adds r1, #0xe0
	ldr r1, [r1, #0]
	bl sub_08022200
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0, #0]
	subs r0, #1
	cmp r0, #5
	bls _0806D30E
	b _0806D472
_0806D30E:
	lsls r0, r0, #2
	ldr r1, _0806D31C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0806D318: .4byte 0xFFFFDFFF
_0806D31C: .4byte _0806D320
_0806D320:
	.4byte _0806D338
_0806D324: .4byte _0806D348
_0806D328: .4byte _0806D358
_0806D32C: .4byte _0806D368
_0806D330: .4byte _0806D378
_0806D334: .4byte _0806D388
_0806D338:
	ldr r0, _0806D344
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x24]
	adds r0, #1
	strh r0, [r1, #0x24]
	b _0806D472
_0806D344: .4byte gUnk_030034E0
_0806D348:
	ldr r0, _0806D354
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x26]
	adds r0, #1
	strh r0, [r1, #0x26]
	b _0806D472
_0806D354: .4byte gUnk_030034E0
_0806D358:
	ldr r0, _0806D364
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x28]
	adds r0, #1
	strh r0, [r1, #0x28]
	b _0806D472
_0806D364: .4byte gUnk_030034E0
_0806D368:
	ldr r0, _0806D374
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x2a]
	adds r0, #1
	strh r0, [r1, #0x2a]
	b _0806D472
_0806D374: .4byte gUnk_030034E0
_0806D378:
	ldr r0, _0806D384
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	b _0806D472
_0806D384: .4byte gUnk_030034E0
_0806D388:
	ldr r0, _0806D394
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x2e]
	adds r0, #1
	strh r0, [r1, #0x2e]
	b _0806D472
_0806D394: .4byte gUnk_030034E0
_0806D398:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	bhs _0806D472
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _0806D3AA
	b _0806D1D4
_0806D3AA:
	b _0806D472
_0806D3AC:
	ldr r2, _0806D3BC
	ldr r4, [sp, #0x28]
	adds r2, r4, r2
	movs r1, #1
	ldr r5, [sp, #0x20]
	lsls r1, r5
	b _0806D47E
	.2byte 0x0000
_0806D3BC: .4byte gUnk_030063E0
_0806D3C0:
	movs r5, #0
_0806D3C2:
	ldr r0, _0806D494
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _0806D468
	mov r6, sp
	adds r0, r6, r5
	ldrb r1, [r0, #0]
	adds r0, r5, #4
	cmp r1, r0
	bne _0806D468
	ldr r1, _0806D498
	lsls r2, r5, #1
	adds r0, r2, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r4, r1, r0
	ldr r1, _0806D49C
	ldr r3, [sp, #0x10]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add r1, sp, #4
	adds r1, r1, r2
	ldrh r1, [r1, #0]
	adds r1, #0x78
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r2, r4, #0
	adds r2, #0x5c
	ldrh r0, [r2, #0]
	add r0, r8
	strh r0, [r2, #0]
	movs r6, #0xeb
	lsls r6, r6, #1
	adds r1, r4, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r1, #0]
	movs r6, #0
	ldrsh r1, [r1, r6]
	cmp r0, r1
	ble _0806D42E
	strh r3, [r2, #0]
_0806D42E:
	mov r0, r8
	cmp r0, #2
	bls _0806D444
	adds r0, r4, #0
	movs r1, #6
	bl sub_0801E2CC
	adds r0, r4, #0
	movs r1, #7
	bl sub_0801E2CC
_0806D444:
	mov r1, r8
	cmp r1, #3
	bls _0806D45A
	adds r0, r4, #0
	movs r1, #5
	bl sub_0801E2CC
	adds r0, r4, #0
	movs r1, #2
	bl sub_0801E2CC
_0806D45A:
	mov r2, r8
	cmp r2, #4
	bls _0806D468
	adds r0, r4, #0
	movs r1, #3
	bl sub_0801E2CC
_0806D468:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _0806D3C2
_0806D472:
	ldr r2, _0806D4A0
	ldr r3, [sp, #0x28]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x20]
	lsls r1, r4
_0806D47E:
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_0806D484:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806D494: .4byte gUnk_030056FC
_0806D498: .4byte gUnk_030056F4
_0806D49C: .4byte gUnk_084EC18E
_0806D4A0: .4byte gUnk_030063E0
	thumb_func_end sub_0806CDF0
