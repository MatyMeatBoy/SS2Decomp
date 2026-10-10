	thumb_func_start sub_080761A4
sub_080761A4: @ 0x080761A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x174
	str r0, [sp, #0x128]
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x150]
	ldr r0, [sp, #0x128]
	ldrh r0, [r0, #8]
	str r0, [sp, #0x130]
	ldr r1, [sp, #0x128]
	ldr r1, [r1, #0]
	mov sl, r1
	ldr r3, [sp, #0x128]
	ldr r2, [r3, #0x14]
	ldrb r4, [r3, #0x14]
	str r4, [sp, #0x13c]
	ldr r6, [r3, #0x10]
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	ldr r0, _08076264
	adds r7, r1, r0
	movs r5, #0
	movs r4, #0x87
	lsls r4, r4, #1
	add r4, sp
	strh r5, [r4, #0]
	add r3, sp, #0x10c
	strh r5, [r3, #0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r2, r0
	negs r2, r2
	lsrs r2, r2, #0x1f
	str r2, [sp, #0x158]
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x140]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [sp, #0x144]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x134]
	ldr r0, [sp, #0x150]
	cmp sl, r0
	bne _08076272
	adds r0, r7, #0
	adds r0, #0xdc
	ldrh r0, [r0, #0]
	str r0, [sp, #0x138]
	bl sub_0805AD18
	adds r1, r0, #0
	add r0, sp, #0x44
	movs r2, #0xc4
	bl sub_080B96A4
	add r2, sp, #0x100
	ldrh r0, [r2, #0]
	cmp r0, #0
	bne _08076250
	ldr r0, _08076268
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #0x77
	ldrb r0, [r1, #0]
	strh r0, [r2, #0]
_08076250:
	ldr r1, [sp, #0x13c]
	cmp r1, #0
	beq _0807626C
	movs r2, #0x3a
	ldrsh r1, [r7, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0x15c]
	b _08076272
	.2byte 0x0000
_08076264: .4byte gUnk_03003CE0
_08076268: .4byte gUnk_030034E0
_0807626C:
	movs r4, #0x3a
	ldrsh r3, [r7, r4]
	str r3, [sp, #0x15c]
_08076272:
	ldr r5, [sp, #0x13c]
	cmp r5, #0
	bne _08076290
	ldr r1, _0807628C
	movs r3, #0x80
	lsls r3, r3, #0x18
	str r5, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	movs r0, #0x10
	b _080762AA
_0807628C: .4byte 0x00050021
_08076290:
	ldr r1, _08076370
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldr r0, [sp, #0x13c]
	subs r0, #1
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x10
_080762AA:
	str r0, [sp, #0x154]
	add r0, sp, #0x10
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r2, #2
	mov r8, r2
	adds r5, r7, #0
	adds r5, #0xb2
	mov r3, sl
	lsls r3, r3, #2
	str r3, [sp, #0x170]
	ldr r4, [sp, #0x130]
	cmp r4, #3
	bls _08076312
	movs r0, #0
	mov r9, r0
	ldr r0, _08076374
	ldr r2, [r0, #0]
	ldr r3, _08076378
_080762D0:
	movs r0, #1
	mov r1, r9
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _080762FA
	lsls r0, r1, #1
	add r0, r9
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	ldr r1, [r3, #0]
	adds r1, r1, r0
	str r1, [sp, #0x12c]
	ldrh r0, [r1, #0xc]
	cmp r0, #0xb
	beq _080762FA
	ldrh r0, [r1, #2]
	ldr r4, [sp, #0x130]
	cmp r0, r4
	beq _08076308
_080762FA:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r0, #4
	bls _080762D0
_08076308:
	mov r0, r9
	cmp r0, #4
	bls _08076312
	movs r1, #0xff
	str r1, [sp, #0x130]
_08076312:
	ldr r2, [sp, #0x130]
	cmp r2, #0xff
	bne _0807631A
	b _0807641C
_0807631A:
	cmp r2, #3
	bls _08076380
	ldr r3, [sp, #0x12c]
	ldr r0, [r3, #0x14]
	ldr r4, [sp, #0x140]
	subs r0, r0, r4
	lsrs r0, r0, #8
	add r2, sp, #0x108
	strh r0, [r2, #0]
	ldr r1, [r3, #0x18]
	ldr r0, [sp, #0x144]
	subs r1, r1, r0
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	movs r0, #0x85
	lsls r0, r0, #1
	add r0, sp
	strh r1, [r0, #0]
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x18
	adds r1, r4, #0
	cmp r1, #0x80
	ble _0807635E
	ldr r4, _0807637C
	adds r0, r4, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0807635E:
	adds r3, r4, #0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080763EE
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	b _080763EA
_08076370: .4byte 0x000500C9
_08076374: .4byte gUnk_030056FC
_08076378: .4byte gUnk_030056F4
_0807637C: .4byte 0xFFFFFF00
_08076380:
	ldr r1, _08076404
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r3, [sp, #0x130]
	muls r0, r3, r0
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r1, r1, r4
	adds r0, r0, r1
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldr r3, [sp, #0x140]
	asrs r1, r3, #8
	subs r0, r0, r1
	add r3, sp, #0x108
	strh r0, [r3, #0]
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldr r4, [sp, #0x144]
	asrs r0, r4, #8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x85
	lsls r0, r0, #1
	add r0, sp
	strh r1, [r0, #0]
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x18
	adds r1, r4, #0
	cmp r1, #0x80
	ble _080763DA
	ldr r3, _08076408
	adds r0, r3, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080763DA:
	adds r3, r4, #0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080763EE
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
_080763EA:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080763EE:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _08076430
	ldr r2, _08076408
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08076430
_08076404: .4byte gUnk_03003CE0
_08076408: .4byte 0xFFFFFF00
_0807640C:
	ldr r2, _08076418
	ldr r3, [sp, #0x170]
	adds r2, r3, r2
	ldr r4, [sp, #0x128]
	ldr r0, [r4, #4]
	b _08076A5E
_08076418: .4byte gUnk_030063E0
_0807641C:
	ldr r1, _080764F4
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0, #0]
_08076430:
	ldr r4, [sp, #0x130]
	cmp r4, #0xff
	bne _0807643C
	ldr r0, [sp, #0x128]
	ldrh r0, [r0, #8]
	str r0, [sp, #0x130]
_0807643C:
	ldr r2, _080764F8
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #1
	movs r4, #4
	muls r0, r4, r0
	ldr r4, [sp, #0x140]
	adds r4, r4, r0
	str r4, [sp, #0x140]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #1
	movs r4, #4
	muls r0, r4, r0
	ldr r1, [sp, #0x144]
	adds r1, r1, r0
	str r1, [sp, #0x144]
	ldrh r0, [r5, #0]
	str r3, [sp, #0x16c]
	cmp r0, r8
	bhs _08076486
_08076476:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xa
	beq _0807640C
	bl sub_080003F0
	ldrh r0, [r5, #0]
	cmp r0, r8
	blo _08076476
_08076486:
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #1
	movs r1, #0xa
	bl sub_080B9394
	adds r0, #0xa
	str r0, [sp, #0x148]
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	beq _080764BA
	bl sub_0800CCCC
	cmp r0, #0
	bne _080764BA
	bl sub_0800CD34
	cmp r0, #0
	bne _080764BA
	cmp r6, #0
	ble _080764BA
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r6, r2
	bl sub_0805865C
_080764BA:
	ldr r3, [sp, #0x150]
	cmp sl, r3
	bne _080764D2
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	ldr r1, _080764FC
	adds r0, r0, r1
	bl sub_0801FD64
_080764D2:
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x14c]
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x160]
	movs r1, #0x92
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x164]
	b _08076A0E
	.2byte 0x0000
_080764F4: .4byte gUnk_0847AD0A
_080764F8: .4byte gUnk_080B9704
_080764FC: .4byte gUnk_03003CE0
_08076500:
	movs r4, #0
	add r1, sp, #0x110
	ldr r2, [sp, #0x140]
	str r2, [r1, #0]
	ldr r3, [sp, #0x144]
	str r3, [r1, #4]
	ldr r3, _08076540
	ldr r2, _08076544
	ldr r0, _08076548
	ldr r5, [sp, #0x160]
	str r0, [r5, #0]
	ldr r0, [sp, #0x130]
	cmp r0, #3
	bls _0807651E
	b _080766FC
_0807651E:
	ldr r1, [sp, #0x164]
	ldr r0, [r1, #0]
	ands r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	ldr r2, [sp, #0x164]
	str r0, [r2, #0]
	bl sub_08002164
	mov r8, r0
	mov r9, r4
	b _080766E6
	.2byte 0x0000
_08076540: .4byte 0xFFFF0000
_08076544: .4byte 0x0000FFFF
_08076548: .4byte 0x00080008
_0807654C:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r9
	muls r1, r0, r1
	ldr r0, _08076650
	adds r6, r1, r0
	adds r0, r6, #0
	adds r0, #0x68
	adds r1, r7, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bne _0807656A
	b _080766DC
_0807656A:
	cmp r0, #0
	bne _08076570
	b _080766DC
_08076570:
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r2, r6, r3
	ldr r1, [r2, #0]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _08076584
	b _080766DC
_08076584:
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	add r1, sp, #0x118
	str r0, [r1, #0]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [r1, #4]
	add r0, sp, #0x110
	add r2, sp, #0x120
	add r3, sp, #0x124
	bl sub_08021FE0
	cmp r0, #0
	bne _080765A8
	b _080766DC
_080765A8:
	ldrh r0, [r6, #0x20]
	movs r5, #0
	cmp r0, #0xb
	beq _080765CE
	adds r0, r6, #0
	adds r0, #0xf8
	ldr r1, [sp, #0x170]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x138]
	cmp r0, r2
	beq _080765CE
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080765CE
	movs r5, #1
_080765CE:
	cmp r5, #0
	bne _080765D4
	b _080766DC
_080765D4:
	movs r3, #0x3a
	ldrsh r1, [r6, r3]
	ldr r0, [sp, #0x15c]
	bl sub_080223A4
	cmp r0, #0
	beq _08076658
	ldr r4, [sp, #0x158]
	cmp r4, #0
	beq _08076602
	mov r1, sp
	adds r1, #0xed
	ldrb r0, [r1, #0]
	adds r0, #0x18
	strb r0, [r1, #0]
	ldrh r0, [r6, #0]
	bl sub_08022100
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r7, #0x30]
_08076602:
	bl sub_080020F4
	cmp sl, r0
	bne _0807663E
	ldrh r5, [r7, #0x20]
	add r0, sp, #0x134
	ldrh r0, [r0, #0]
	strh r0, [r7, #0x20]
	ldrh r4, [r7, #0x26]
	add r1, sp, #0x13c
	ldrh r1, [r1, #0]
	strh r1, [r7, #0x26]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #0x44
	movs r3, #0
	bl sub_0801F79C
	strh r5, [r7, #0x20]
	strh r4, [r7, #0x26]
	ldrh r1, [r7, #0]
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r2, [sp, #0x138]
	str r2, [r0, #0]
	movs r0, #0x1a
	bl sub_0805865C
_0807663E:
	ldr r3, [sp, #0x158]
	cmp r3, #0
	beq _080766DA
	ldr r0, [r7, #0x30]
	ldr r1, _08076654
	ands r0, r1
	str r0, [r7, #0x30]
	b _080766DA
	.2byte 0x0000
_08076650: .4byte gUnk_03003CE0
_08076654: .4byte 0xFFDFFFFF
_08076658:
	bl sub_0800086C
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0807669E
	bl sub_080020F4
	cmp sl, r0
	bne _080766DA
	ldrh r5, [r7, #0x20]
	add r4, sp, #0x134
	ldrh r4, [r4, #0]
	strh r4, [r7, #0x20]
	ldrh r4, [r7, #0x26]
	add r0, sp, #0x13c
	ldrh r0, [r0, #0]
	strh r0, [r7, #0x26]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #0x44
	movs r3, #1
	bl sub_0801F79C
	strh r5, [r7, #0x20]
	strh r4, [r7, #0x26]
	ldrh r1, [r7, #0]
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r1, [sp, #0x138]
	str r1, [r0, #0]
	movs r0, #0x1a
	b _080766D6
_0807669E:
	bl sub_080020F4
	cmp sl, r0
	bne _080766DA
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	adds r1, r6, #0
	adds r1, #0x90
	ldr r1, [r1, #0]
	bl sub_080223F4
	ldrh r1, [r7, #0]
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r2, [sp, #0x138]
	str r2, [r0, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080766DA
	bl sub_0800CD34
	cmp r0, #0
	bne _080766DA
	movs r0, #0x55
_080766D6:
	bl sub_0805865C
_080766DA:
	movs r4, #1
_080766DC:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
_080766E6:
	cmp r9, r8
	blo _080766EC
	b _080768DA
_080766EC:
	cmp sl, r9
	beq _080766DC
	bl sub_0800CDF8
	cmp r0, #0
	bne _080766FA
	b _0807654C
_080766FA:
	b _080768DA
_080766FC:
	movs r3, #0
	mov r9, r3
	movs r5, #0x92
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x168]
	b _080768CA
_0807670A:
	ldr r0, _08076830
	movs r1, #1
	mov r2, r9
	lsls r1, r2
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _0807671C
	b _080768C0
_0807671C:
	ldr r1, _08076834
	lsls r0, r2, #1
	add r0, r9
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r6, r1, r0
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r6, r3
	adds r1, r7, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bne _08076740
	b _080768C0
_08076740:
	cmp r0, #0
	bne _08076746
	b _080768C0
_08076746:
	ldr r5, _08076838
	adds r0, r6, r5
	ldrb r0, [r0, #0]
	ldr r1, [sp, #0x168]
	strh r0, [r1, #0]
	ldr r2, _0807683C
	adds r0, r6, r2
	ldrb r0, [r0, #0]
	strh r0, [r1, #2]
	adds r1, r6, #0
	adds r1, #0x14
	add r0, sp, #0x110
	add r2, sp, #0x120
	ldr r3, [sp, #0x168]
	bl sub_08021FE0
	cmp r0, #0
	bne _0807676C
	b _080768C0
_0807676C:
	ldrh r0, [r6, #0xc]
	movs r5, #0
	cmp r0, #0xb
	beq _0807679E
	ldr r0, [r6, #0x54]
	ldr r3, [sp, #0x138]
	cmp r0, r3
	beq _0807679E
	adds r0, r6, #0
	adds r0, #0x5c
	movs r1, #0
	ldrsh r3, [r0, r1]
	subs r0, #0x12
	ldrh r2, [r0, #0]
	subs r0, r3, r2
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0807679E
	adds r1, r3, #0
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0807679E:
	cmp r5, #0
	bne _080767A4
	b _080768C0
_080767A4:
	ldr r2, _08076840
	adds r0, r6, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [sp, #0x15c]
	bl sub_080223A4
	cmp r0, #0
	beq _08076848
	ldr r4, [sp, #0x158]
	cmp r4, #0
	beq _080767DA
	mov r1, sp
	adds r1, #0xed
	ldrb r0, [r1, #0]
	adds r0, #0x18
	strb r0, [r1, #0]
	ldr r5, [sp, #0x12c]
	ldrh r0, [r5, #0]
	adds r0, #4
	bl sub_08022100
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r7, #0x30]
_080767DA:
	ldr r0, [sp, #0x150]
	cmp sl, r0
	bne _0807681E
	ldrh r5, [r7, #0x20]
	add r1, sp, #0x134
	ldrh r1, [r1, #0]
	strh r1, [r7, #0x20]
	ldrh r4, [r7, #0x26]
	add r2, sp, #0x13c
	ldrh r2, [r2, #0]
	strh r2, [r7, #0x26]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #0x44
	movs r3, #0
	bl sub_0801F374
	strh r5, [r7, #0x20]
	strh r4, [r7, #0x26]
	adds r0, r6, #0
	adds r0, #0x58
	mov r3, sl
	strh r3, [r0, #0]
	adds r2, r6, #0
	adds r2, #0x5a
	movs r0, #1
	mov r4, sl
	lsls r0, r4
	ldrh r1, [r2, #0]
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #0x1a
	bl sub_0805865C
_0807681E:
	ldr r5, [sp, #0x158]
	cmp r5, #0
	beq _080768BE
	ldr r0, [r7, #0x30]
	ldr r1, _08076844
	ands r0, r1
	str r0, [r7, #0x30]
	b _080768BE
	.2byte 0x0000
_08076830: .4byte gUnk_030056FC
_08076834: .4byte gUnk_030056F4
_08076838: .4byte 0x0000022E
_0807683C: .4byte 0x0000022F
_08076840: .4byte 0x00000206
_08076844: .4byte 0xFFDFFFFF
_08076848:
	ldr r0, [sp, #0x150]
	cmp sl, r0
	bne _080768BE
	bl sub_0800086C
	movs r1, #1
	mov r8, r1
	ands r1, r0
	cmp r1, #0
	bne _0807689C
	ldrh r5, [r7, #0x20]
	add r2, sp, #0x134
	ldrh r2, [r2, #0]
	strh r2, [r7, #0x20]
	ldrh r4, [r7, #0x26]
	add r3, sp, #0x13c
	ldrh r3, [r3, #0]
	strh r3, [r7, #0x26]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #0x44
	movs r3, #1
	bl sub_0801F374
	strh r5, [r7, #0x20]
	strh r4, [r7, #0x26]
	adds r0, r6, #0
	adds r0, #0x58
	mov r4, sl
	strh r4, [r0, #0]
	adds r2, r6, #0
	adds r2, #0x5a
	mov r0, r8
	mov r5, sl
	lsls r0, r5
	ldrh r1, [r2, #0]
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #0x1a
	bl sub_0805865C
	b _080768BE
_0807689C:
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	bl sub_080223F4
	ldr r0, [sp, #0x138]
	str r0, [r6, #0x54]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080768BE
	bl sub_0800CD34
	cmp r0, #0
	bne _080768BE
	movs r0, #0x55
	bl sub_0805865C
_080768BE:
	movs r4, #1
_080768C0:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
_080768CA:
	mov r1, r9
	cmp r1, #4
	bhi _080768DA
	bl sub_0800CDF8
	cmp r0, #0
	bne _080768DA
	b _0807670A
_080768DA:
	ldr r2, [sp, #0x150]
	cmp sl, r2
	bne _080768EE
	add r0, sp, #0x110
	add r1, sp, #0x120
	bl sub_0801F99C
	cmp r0, #0
	beq _080768EE
	movs r4, #1
_080768EE:
	ldr r3, [sp, #0x13c]
	cmp r3, #0
	bne _080768FA
	cmp r4, #0
	beq _080768FA
	b _08076A36
_080768FA:
	ldr r0, [sp, #0x140]
	ldr r1, [sp, #0x144]
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0807691A
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0807691A
	b _08076A36
_0807691A:
	ldr r2, _08076A78
	ldr r4, [sp, #0x16c]
	asrs r1, r4, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	movs r3, #4
	muls r0, r3, r0
	ldr r4, [sp, #0x140]
	adds r4, r4, r0
	str r4, [sp, #0x140]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r3, r0
	ldr r1, [sp, #0x144]
	adds r1, r1, r0
	str r1, [sp, #0x144]
	bl sub_0800CC98
	cmp r0, #0
	bne _08076A0A
	bl sub_0800CD8C
	cmp r0, #0
	bne _08076A0A
	bl sub_0800CCCC
	adds r3, r0, #0
	cmp r3, #0
	bne _08076A0A
	asrs r5, r4, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x144]
	asrs r4, r2, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	add r2, sp, #0x108
	movs r3, #0x85
	lsls r3, r3, #1
	add r3, sp
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r4, [sp, #0x14c]
	ldr r3, [sp, #0x154]
	adds r1, r3, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	add r2, sp, #0x10c
	movs r3, #0x87
	lsls r3, r3, #1
	add r3, sp
	bl sub_08065370
	ldr r0, _08076A7C
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	add r5, sp, #0x108
	movs r6, #0x85
	lsls r6, r6, #1
	add r6, sp
	cmp r0, #4
	bne _080769CA
	bl sub_0800CDC0
	cmp r0, #0
	beq _080769CA
	movs r0, #0
	mov r8, r0
_080769CA:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r3, _08076A80
	lsls r2, r4, #0x10
	asrs r2, r2, #0xe
	adds r1, r2, r3
	movs r5, #0
	ldrsh r1, [r1, r5]
	adds r0, r0, r1
	movs r5, #0
	ldrsh r1, [r6, r5]
	adds r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r5, [sp, #0x154]
	adds r2, r5, r4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r4, sp, #0x10c
	ldrh r3, [r4, #0]
	mov r5, r8
	str r5, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_08076A0A:
	bl sub_080003F0
_08076A0E:
	ldr r0, [sp, #0x148]
	adds r1, r0, #0
	subs r1, #1
	str r1, [sp, #0x148]
	cmp r0, #0
	beq _08076A36
	bl sub_08056E90
	cmp r0, #0
	bne _08076A36
	ldrh r0, [r7, #0x20]
	cmp r0, #0xb
	beq _08076A36
	cmp r0, #0xc
	beq _08076A36
	bl sub_0800D11C
	cmp r0, #0
	bne _08076A36
	b _08076500
_08076A36:
	ldr r2, [sp, #0x150]
	cmp sl, r2
	bne _08076A54
	ldrh r0, [r7, #0x20]
	cmp r0, #5
	bne _08076A54
	movs r0, #0
	strh r0, [r7, #0x20]
	movs r3, #0x91
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r0, [r1, #0]
	add r4, sp, #0x13c
	ldrh r4, [r4, #0]
	strh r4, [r7, #0x28]
_08076A54:
	ldr r2, _08076A84
	ldr r5, [sp, #0x170]
	adds r2, r5, r2
	ldr r1, [sp, #0x128]
	ldr r0, [r1, #4]
_08076A5E:
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x174
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076A78: .4byte gUnk_080B9704
_08076A7C: .4byte gUnk_03003170
_08076A80: .4byte gUnk_084EBEBC
_08076A84: .4byte gUnk_030063E0
	thumb_func_end sub_080761A4
