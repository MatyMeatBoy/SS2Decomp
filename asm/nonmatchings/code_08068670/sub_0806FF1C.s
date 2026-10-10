	thumb_func_start sub_0806FF1C
sub_0806FF1C: @ 0x0806FF1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xbc
	str r0, [sp, #0x4c]
	bl sub_080020F4
	str r0, [sp, #0x7c]
	ldr r0, [sp, #0x4c]
	ldr r0, [r0, #4]
	str r0, [sp, #0x84]
	ldr r1, [sp, #0x4c]
	ldr r1, [r1, #0]
	mov r8, r1
	ldr r0, _0806FF58
	adds r3, r1, r0
	ldrb r2, [r3, #0]
	cmp r2, #0
	beq _0806FF60
	ldr r0, _0806FF5C
	lsls r2, r1, #2
	adds r2, r2, r0
	movs r1, #1
	ldr r3, [sp, #0x84]
	lsls r1, r3
	bl _080710BC
	.2byte 0x0000
_0806FF58: .4byte gUnk_03006430
_0806FF5C: .4byte gUnk_030063E0
_0806FF60:
	movs r5, #1
	strb r5, [r3, #0]
	ldr r4, [sp, #0x4c]
	ldrh r4, [r4, #8]
	str r4, [sp, #0x60]
	ldr r6, [sp, #0x4c]
	ldrh r6, [r6, #0x14]
	str r6, [sp, #0x68]
	str r6, [sp, #0x64]
	add r1, sp, #0x44
	strh r2, [r1, #0]
	mov r0, sp
	adds r0, #0x46
	strh r2, [r0, #0]
	mov r0, r8
	cmp r0, #3
	bhi _0806FF9C
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r8
	muls r1, r0, r1
	ldr r0, _0806FF98
	adds r1, r1, r0
	str r1, [sp, #0x54]
	mov r1, r8
	lsls r1, r1, #2
	str r1, [sp, #0xb0]
	b _08070026
_0806FF98: .4byte gUnk_03003CE0
_0806FF9C:
	ldr r1, _08070000
	mov r2, r8
	lsls r0, r2, #1
	add r0, r8
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r4, _08070004
	adds r0, r0, r4
	ldr r1, [r1, #0]
	adds r1, r1, r0
	str r1, [sp, #0x58]
	adds r0, r1, #0
	adds r0, #0x6a
	ldr r6, _08070008
	adds r1, r1, r6
	ldrh r0, [r0, #0]
	lsls r2, r2, #2
	str r2, [sp, #0xb0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bhs _08070026
	ldr r0, _0807000C
	adds r4, r2, r0
	adds r6, r3, #0
	adds r0, r5, #0
	ldr r1, [sp, #0x84]
	lsls r0, r1
	mvns r5, r0
_0806FFD6:
	bl sub_08056E90
	cmp r0, #0
	bne _0806FFF2
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806FFF2
	ldr r2, [sp, #0x58]
	ldrh r0, [r2, #0xc]
	cmp r0, #0xa
	beq _0806FFF2
	cmp r0, #0xb
	bne _08070010
_0806FFF2:
	ldr r0, [r4, #0]
	ands r0, r5
	str r0, [r4, #0]
	movs r0, #0
	strb r0, [r6, #0]
	bl _080710C2
_08070000: .4byte gUnk_030056F4
_08070004: .4byte 0xFFFFF480
_08070008: .4byte 0x0000022B
_0807000C: .4byte gUnk_030063E0
_08070010:
	bl sub_080003F0
	ldr r0, [sp, #0x58]
	adds r0, #0x6a
	ldr r3, [sp, #0x58]
	ldr r2, _08070080
	adds r1, r3, r2
	ldrh r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _0806FFD6
_08070026:
	ldr r3, [sp, #0x7c]
	cmp r3, r8
	beq _08070090
	mov r4, r8
	cmp r4, #3
	bls _080700C8
	ldr r3, _08070084
	ldr r5, [sp, #0x64]
	lsls r2, r5, #1
	ldr r6, [sp, #0x4c]
	ldr r1, [r6, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r3, #6
	adds r2, r2, r3
	ldr r3, [sp, #0x58]
	adds r3, #0x5e
	ldrh r0, [r3, #0]
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080700C2
	ldr r2, _08070088
	ldr r5, [sp, #0xb0]
	adds r2, r5, r2
	movs r1, #1
	ldr r6, [sp, #0x84]
	lsls r1, r6
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	ldr r0, _0807008C
	add r0, r8
	movs r1, #0
	strb r1, [r0, #0]
	movs r0, #0
	strh r0, [r3, #0]
	bl _080710C2
	.2byte 0x0000
_08070080: .4byte 0x0000022B
_08070084: .4byte gUnk_084EBF1C
_08070088: .4byte gUnk_030063E0
_0807008C: .4byte gUnk_03006430
_08070090:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _080700DC
	adds r4, r4, r0
	ldr r1, [sp, #0x4c]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x14]
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
	bge _080700C2
	movs r0, #0
	strh r0, [r4, #0]
_080700C2:
	mov r2, r8
	cmp r2, #3
	bhi _080700E4
_080700C8:
	ldr r3, [sp, #0x54]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x78]
	ldr r1, _080700E0
	b _080700F2
_080700DC: .4byte gUnk_03003CE0
_080700E0: .4byte gUnk_0847AD0A
_080700E4:
	ldr r1, _08070148
	ldr r5, [sp, #0x58]
	ldrh r5, [r5, #8]
	str r5, [sp, #0x78]
	ldr r6, [sp, #0x58]
	movs r2, #8
	ldrsh r0, [r6, r2]
_080700F2:
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	str r0, [sp, #0x70]
	ldr r3, [sp, #0x7c]
	cmp r3, r8
	beq _08070106
	mov r4, r8
	cmp r4, #3
	bls _08070124
_08070106:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08070124
	bl sub_0800CD34
	cmp r0, #0
	bne _08070124
	ldr r5, [sp, #0x4c]
	ldr r0, [r5, #0x14]
	movs r6, #0xae
	lsls r6, r6, #1
	adds r0, r0, r6
	bl sub_0805865C
_08070124:
	ldr r1, _0807014C
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	ldr r0, [sp, #0x64]
	cmp r0, #7
	bhi _08070196
	lsls r0, r0, #2
	ldr r1, _08070150
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08070148: .4byte gUnk_0847AD0A
_0807014C: .4byte 0x000500A5
_08070150: .4byte _08070154
_08070154:
	.4byte _08070174
_08070158: .4byte _08070174
_0807015C: .4byte _08070174
_08070160: .4byte _0807017A
_08070164: .4byte _08070180
_08070168: .4byte _08070186
_0807016C: .4byte _0807018C
_08070170: .4byte _08070192
_08070174:
	movs r1, #0
	str r1, [sp, #0x64]
	b _08070196
_0807017A:
	movs r2, #1
	str r2, [sp, #0x64]
	b _08070196
_08070180:
	movs r3, #2
	str r3, [sp, #0x64]
	b _08070196
_08070186:
	movs r4, #3
	str r4, [sp, #0x64]
	b _08070196
_0807018C:
	movs r5, #4
	str r5, [sp, #0x64]
	b _08070196
_08070192:
	movs r6, #5
	str r6, [sp, #0x64]
_08070196:
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x68]
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	add r1, sp, #0x44
	strh r2, [r1, #0]
	movs r3, #0x46
	add r3, sp
	strh r2, [r3, #0]
	ldr r4, [sp, #0x60]
	cmp r4, #3
	bhi _0807020C
	bl sub_08002164
	adds r1, r0, #0
	movs r5, #0
	ldr r6, [sp, #0x64]
	lsls r3, r6, #0x13
	cmp r5, r1
	bhs _080701FE
	ldr r0, _08070204
	str r0, [sp, #0x5c]
	ldrh r0, [r0, #0]
	cmp r0, r4
	beq _080701FA
	movs r7, #0xa6
	lsls r7, r7, #1
	ldr r6, [sp, #0x5c]
_080701E0:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r1
	bhs _080701FE
	adds r0, r5, #0
	muls r0, r7, r0
	adds r0, r0, r6
	str r0, [sp, #0x5c]
	ldrh r0, [r0, #0]
	ldr r2, [sp, #0x60]
	cmp r0, r2
	bne _080701E0
_080701FA:
	cmp r5, r1
	blo _0807026C
_080701FE:
	ldr r4, _08070208
	str r4, [sp, #0x60]
	b _0807026C
_08070204: .4byte gUnk_03003CE0
_08070208: .4byte 0x0000FFFF
_0807020C:
	movs r5, #0
	ldr r3, _0807022C
	ldr r6, [r3, #0]
	str r6, [sp, #0x50]
	ldr r2, _08070230
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	adds r4, r3, #0
	ldr r1, [sp, #0x64]
	lsls r3, r1, #0x13
	cmp r0, #0
	beq _08070234
	ldrh r0, [r6, #2]
	b _0807025E
	.2byte 0x0000
_0807022C: .4byte gUnk_030056F4
_08070230: .4byte gUnk_030056FC
_08070234:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bhi _08070268
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r1, [r4, #0]
	adds r1, r1, r0
	str r1, [sp, #0x50]
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _08070234
	ldr r1, [sp, #0x50]
	ldrh r0, [r1, #2]
_0807025E:
	ldr r6, [sp, #0x60]
	cmp r0, r6
	bne _08070234
	cmp r5, #4
	bls _0807026C
_08070268:
	ldr r0, _08070308
	str r0, [sp, #0x60]
_0807026C:
	lsrs r3, r3, #0x10
	str r3, [sp, #0x64]
_08070270:
	mov r1, r8
	movs r2, #1
	ands r1, r2
	str r1, [sp, #0x8c]
	movs r4, #0xa6
	lsls r4, r4, #1
	mov r3, r8
	muls r3, r4, r3
	str r3, [sp, #0x90]
	ldr r5, _0807030C
	ldr r6, _08070310
	adds r0, r5, r6
	adds r0, r3, r0
	str r0, [sp, #0x94]
_0807028C:
	ldr r0, [sp, #0x7c]
	cmp r8, r0
	bne _080702CA
	bl sub_08058DB0
	cmp r0, #0
	beq _0807029E
	bl _080710A8
_0807029E:
	bl sub_0801DF8C
	cmp r0, #0
	beq _080702AA
	bl _080710A8
_080702AA:
	ldr r1, [sp, #0x54]
	ldrh r0, [r1, #0x20]
	cmp r0, #0xb
	bne _080702B6
	bl _080710A8
_080702B6:
	cmp r0, #0xc
	bne _080702BE
	bl _080710A8
_080702BE:
	bl sub_0800D11C
	cmp r0, #0
	beq _080702CA
	bl _080710A8
_080702CA:
	mov r2, r8
	cmp r2, #3
	bhi _08070340
	ldr r3, [sp, #0x54]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	mov sl, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	mov r9, r0
	ldr r5, [sp, #0x7c]
	cmp r8, r5
	bne _08070318
	ldr r0, _08070314
	ldr r0, [r0, #0]
	movs r6, #1
	ands r0, r6
	ldr r1, [sp, #0x8c]
	cmp r0, r1
	bne _0807039C
	movs r0, #0x20
	movs r1, #0x64
	bl sub_08073EE8
	b _08070390
_08070308: .4byte 0x0000FFFF
_0807030C: .4byte gUnk_03003E28
_08070310: .4byte 0xFFFFFEE8
_08070314: .4byte gUnk_03002344
_08070318:
	ldr r0, _08070338
	ldr r0, [r0, #0]
	movs r2, #1
	ands r0, r2
	ldr r3, [sp, #0x8c]
	cmp r0, r3
	bne _0807039C
	ldr r0, _0807033C
	ldr r4, [sp, #0x90]
	adds r0, r4, r0
	movs r1, #0x20
	movs r2, #0x64
	bl sub_0807414C
	b _08070390
	.2byte 0x0000
_08070338: .4byte gUnk_03002344
_0807033C: .4byte gUnk_03003CE0
_08070340:
	ldr r5, [sp, #0x58]
	ldr r5, [r5, #0x14]
	mov sl, r5
	ldr r6, [sp, #0x58]
	ldr r6, [r6, #0x18]
	mov r9, r6
	ldr r0, [sp, #0x60]
	cmp r0, #3
	bhi _08070378
	adds r1, r0, #0
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r1, #0
	muls r0, r2, r0
	ldr r3, _08070374
	adds r0, r0, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08070372
	b _08070520
_08070372:
	b _0807039C
_08070374: .4byte gUnk_03003E28
_08070378:
	ldr r4, [sp, #0x58]
	ldrh r0, [r4, #0]
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	str r1, [sp, #0]
	movs r1, #0xff
	mov r2, sl
	mov r3, r9
	bl sub_08074398
_08070390:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	cmp r0, #0xff
	beq _0807039C
	b _08070520
_0807039C:
	ldr r2, _0807050C
	ldr r5, [sp, #0x74]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #4
	add sl, r0
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #3
	ldr r3, _08070510
	adds r0, r0, r3
	add r9, r0
	adds r1, #8
	lsls r1, r1, #0x10
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
	ldr r0, _08070514
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08070496
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x10
	ldr r1, [sp, #0x64]
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	bne _08070496
	bl sub_0800CD8C
	cmp r0, #0
	bne _08070496
	bl sub_0800CCCC
	adds r6, r0, #0
	cmp r6, #0
	bne _08070496
	ldr r0, _08070518
	ldr r0, [r0, #0]
	ands r0, r4
	cmp r0, #0
	bne _08070420
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08070420:
	mov r4, sl
	asrs r5, r4, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r9
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r6, [sp, #4]
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0807051C
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
	cmp r0, #4
	bne _08070468
	bl sub_0800CDC0
	cmp r0, #0
	beq _08070468
	movs r4, #0
_08070468:
	ldr r0, _08070518
	ldr r0, [r0, #0]
	movs r2, #1
	ands r0, r2
	ldr r3, [sp, #0x8c]
	cmp r0, r3
	bne _08070496
	movs r5, #0
	ldrsh r0, [r7, r5]
	movs r2, #0
	ldrsh r1, [r6, r2]
	add r5, sp, #0x44
	ldrh r3, [r5, #0]
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x64]
	bl sub_08007870
_08070496:
	bl sub_080003F0
	bl sub_08056E90
	cmp r0, #0
	beq _080704A6
	bl _080710A8
_080704A6:
	mov r6, r8
	cmp r6, #3
	bhi _080704BC
	ldr r1, [sp, #0x94]
	ldr r0, [r1, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080704BC
	bl _080710A8
_080704BC:
	ldr r2, [sp, #0x54]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	bne _080704D4
	bl _080710A8
_080704D4:
	bl sub_08058DB0
	cmp r0, #0
	beq _080704E0
	bl _080710A8
_080704E0:
	ldr r4, [sp, #0x94]
	ldr r0, [r4, #0]
	movs r1, #0x90
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080704F2
	bl _080710A8
_080704F2:
	bl sub_0800CF10
	cmp r0, #0
	beq _080704FE
	bl _080710A8
_080704FE:
	bl sub_0800D11C
	cmp r0, #0
	beq _0807050A
	bl _080710A8
_0807050A:
	b _0807028C
_0807050C: .4byte gUnk_080B9704
_08070510: .4byte 0xFFFFF800
_08070514: .4byte gUnk_03005CF4
_08070518: .4byte gUnk_03002344
_0807051C: .4byte gUnk_03003170
_08070520:
	ldr r5, [sp, #0x60]
	cmp r5, #3
	bhi _08070540
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _08070538
	adds r1, r1, r0
	str r1, [sp, #0x5c]
	b _08070574
	.2byte 0x0000
_08070538: .4byte gUnk_03003CE0
_0807053C:
	str r1, [sp, #0x50]
	b _08070574
_08070540:
	movs r5, #0
	ldr r2, _08070778
	ldr r2, [r2, #0]
	movs r4, #1
	ldr r3, _0807077C
_0807054A:
	adds r0, r4, #0
	lsls r0, r5
	ands r0, r2
	cmp r0, #0
	beq _0807056A
	ldr r0, [r3, #0]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #3
	subs r1, r1, r5
	lsls r1, r1, #5
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	ldr r6, [sp, #0x60]
	cmp r0, r6
	beq _0807053C
_0807056A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _0807054A
_08070574:
	movs r0, #0
	str r0, [sp, #0x88]
	mov r1, sp
	adds r1, #0x48
	str r1, [sp, #0x98]
_0807057E:
	ldr r2, [sp, #0x7c]
	cmp r8, r2
	bne _080705BC
	bl sub_08058DB0
	cmp r0, #0
	beq _08070590
	bl _080710A8
_08070590:
	bl sub_0801DF8C
	cmp r0, #0
	beq _0807059C
	bl _080710A8
_0807059C:
	ldr r3, [sp, #0x54]
	ldrh r0, [r3, #0x20]
	cmp r0, #0xb
	bne _080705A8
	bl _080710A8
_080705A8:
	cmp r0, #0xc
	bne _080705B0
	bl _080710A8
_080705B0:
	bl sub_0800D11C
	cmp r0, #0
	beq _080705BC
	bl _080710A8
_080705BC:
	movs r7, #0
	ldr r4, [sp, #0x60]
	cmp r4, #0xff
	beq _080706B4
	cmp r4, #3
	bls _0807063C
	movs r5, #0
	ldr r2, _08070778
	ldr r2, [r2, #0]
	ldr r6, _0807077C
	mov ip, r6
	add r3, sp, #0x48
_080705D4:
	movs r0, #1
	lsls r0, r5
	ands r0, r2
	cmp r0, #0
	beq _08070632
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	mov r4, ip
	ldr r1, [r4, #0]
	adds r4, r1, r0
	movs r6, #0xee
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08070632
	ldr r0, [r4, #0x14]
	mov r1, sl
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r3, #0]
	mov r1, sp
	adds r1, #0x4a
	ldr r0, [r4, #0x18]
	mov r4, r9
	subs r0, r0, r4
	asrs r0, r0, #8
	strh r0, [r1, #0]
	movs r6, #0
	ldrsh r0, [r3, r6]
	adds r6, r1, #0
	cmp r0, #0
	bge _0807061E
	negs r0, r0
_0807061E:
	cmp r0, #7
	bgt _08070632
	movs r0, #0
	ldrsh r1, [r6, r0]
	cmp r1, #0
	bge _0807062C
	negs r1, r1
_0807062C:
	cmp r1, #7
	bgt _08070632
	movs r7, #1
_08070632:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _080705D4
_0807063C:
	ldr r1, [sp, #0x60]
	cmp r1, #0xff
	beq _080706B4
	cmp r7, #0
	beq _08070648
	b _080709AC
_08070648:
	cmp r1, #3
	bhi _080706B4
	ldr r0, [sp, #0x5c]
	adds r0, #0x68
	ldr r1, [sp, #0x54]
	adds r1, #0x68
	ldrb r2, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r2, r1
	beq _080706B4
	ldr r3, [sp, #0x5c]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r4, [r0, #0]
	ldrb r0, [r4, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	beq _080706B4
	cmp r2, #0
	beq _080706B4
	ldrh r0, [r4, #0]
	lsrs r0, r0, #4
	mov r5, sl
	asrs r1, r5, #8
	subs r0, r0, r1
	ldr r6, [sp, #0x98]
	strh r0, [r6, #0]
	mov r2, sp
	adds r2, #0x4a
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r3, r9
	asrs r1, r3, #8
	subs r0, r0, r1
	strh r0, [r2, #0]
	movs r4, #0
	ldrsh r0, [r6, r4]
	adds r6, r2, #0
	cmp r0, #0
	bge _080706A0
	negs r0, r0
_080706A0:
	cmp r0, #0xf
	bgt _080706B4
	movs r5, #0
	ldrsh r1, [r6, r5]
	cmp r1, #0
	bge _080706AE
	negs r1, r1
_080706AE:
	cmp r1, #0xf
	bgt _080706B4
	movs r7, #1
_080706B4:
	cmp r7, #0
	beq _080706BA
	b _080709AC
_080706BA:
	bl sub_08056E90
	cmp r0, #0
	beq _080706C6
	bl _080710A8
_080706C6:
	mov r6, r8
	cmp r6, #3
	bhi _080706EA
	ldr r1, _08070780
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080706EA
	bl _080710A8
_080706EA:
	movs r4, #0xa4
	lsls r4, r4, #1
	ldr r3, [sp, #0x54]
	adds r0, r3, r4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	bne _08070702
	bl _080710A8
_08070702:
	bl sub_08058DB0
	cmp r0, #0
	beq _0807070E
	bl _080710A8
_0807070E:
	ldr r1, _08070780
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x90
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0807072E
	bl _080710A8
_0807072E:
	bl sub_0800CF10
	cmp r0, #0
	beq _0807073A
	bl _080710A8
_0807073A:
	bl sub_0800D11C
	cmp r0, #0
	beq _08070746
	bl _080710A8
_08070746:
	ldr r6, [sp, #0x60]
	cmp r6, #3
	bhi _08070784
	ldr r1, [sp, #0x5c]
	adds r0, r1, r4
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r3, sl
	asrs r1, r3, #8
	subs r0, r0, r1
	ldr r4, [sp, #0x98]
	strh r0, [r4, #0]
	mov r3, sp
	adds r3, #0x4a
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r5, r9
	asrs r1, r5, #8
	subs r0, r0, r1
	strh r0, [r3, #0]
	add r7, sp, #0x48
	adds r6, r3, #0
	b _080707A4
_08070778: .4byte gUnk_030056FC
_0807077C: .4byte gUnk_030056F4
_08070780: .4byte gUnk_03003CE0
_08070784:
	ldr r6, [sp, #0x50]
	ldr r0, [r6, #0x14]
	mov r1, sl
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r2, [sp, #0x98]
	strh r0, [r2, #0]
	mov r1, sp
	adds r1, #0x4a
	ldr r0, [r6, #0x18]
	mov r3, r9
	subs r0, r0, r3
	asrs r0, r0, #8
	strh r0, [r1, #0]
	add r7, sp, #0x48
	adds r6, r1, #0
_080707A4:
	movs r4, #0
	ldrsh r0, [r7, r4]
	adds r5, r0, #0
	muls r5, r0, r5
	adds r0, r5, #0
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bhi _080707C8
	b _080709AC
_080707C8:
	movs r4, #0
	ldrsh r0, [r7, r4]
	movs r5, #0
	ldrsh r1, [r6, r5]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	adds r3, r2, #0
	ldr r1, [sp, #0x70]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r1, r3, r0
	cmp r1, #0x80
	ble _080707F8
	ldr r2, _080707F4
	adds r0, r2, #0
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _0807080A
	.2byte 0x0000
_080707F4: .4byte 0xFFFFFF00
_080707F8:
	movs r0, #0x80
	negs r0, r0
	cmp r1, r0
	bge _0807080A
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r2, r0, #0
	orrs r2, r3
_0807080A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r5, [sp, #0x70]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	str r0, [sp, #0x70]
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _08070834
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
_08070834:
	ldr r2, [sp, #0x70]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r0, r3
	ble _0807084C
	ldr r4, _080708A4
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
_0807084C:
	movs r0, #0xff
	ldr r5, [sp, #0x70]
	ands r5, r0
	str r5, [sp, #0x70]
	ldr r1, _080708A8
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	str r0, [sp, #0x78]
	mov r0, sl
	mov r1, r9
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08070880
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080708B0
_08070880:
	ldr r2, _080708AC
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	add sl, r0
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	add r9, r0
	b _080708BE
_080708A4: .4byte 0xFFFFFF00
_080708A8: .4byte gUnk_084790B4
_080708AC: .4byte gUnk_080B9704
_080708B0:
	ldr r0, [sp, #0x88]
	adds r5, r0, #0
	adds r5, #1
	str r5, [sp, #0x88]
	cmp r0, #0x78
	bls _080708BE
	b _08070D0A
_080708BE:
	mov r0, sl
	asrs r5, r0, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r9
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _0807099C
	ldr r2, [sp, #0x70]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	ldr r3, [sp, #0x64]
	adds r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r5, #1
	str r5, [sp, #0]
	add r0, sp, #0x10
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	ldr r0, _080709A0
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08070996
	bl sub_0800CC98
	cmp r0, #0
	bne _08070996
	bl sub_0800CD8C
	cmp r0, #0
	bne _08070996
	bl sub_0800CCCC
	cmp r0, #0
	bne _08070996
	ldr r0, _080709A4
	ldr r0, [r0, #0]
	ands r0, r5
	cmp r0, #0
	bne _0807094A
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0807094A:
	ldr r0, _080709A8
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0807095E
	bl sub_0800CDC0
	cmp r0, #0
	beq _0807095E
	movs r4, #0
_0807095E:
	ldr r0, _080709A4
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	mov r0, r8
	ands r0, r2
	cmp r1, r0
	bne _08070996
	movs r5, #0
	ldrsh r0, [r7, r5]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [sp, #0x64]
	ldr r5, [sp, #0x78]
	adds r2, r3, r5
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r6, sp, #0x44
	ldrh r3, [r6, #0]
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_08070996:
	bl sub_080003F0
	b _0807057E
_0807099C: .4byte gUnk_084790B4
_080709A0: .4byte gUnk_03005CF4
_080709A4: .4byte gUnk_03002344
_080709A8: .4byte gUnk_03003170
_080709AC:
	ldr r1, [sp, #0x78]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x46
	str r2, [sp, #0x80]
	cmp r0, #3
	bgt _080709BE
	movs r3, #0x3f
	str r3, [sp, #0x80]
_080709BE:
	mov r4, r8
	movs r5, #1
	ands r4, r5
	str r4, [sp, #0xa0]
	movs r6, #1
	mov r0, r8
	lsls r6, r0
	str r6, [sp, #0xa4]
	mov r1, sl
	asrs r1, r1, #8
	str r1, [sp, #0x9c]
_080709D4:
	movs r7, #0
	ldr r0, _08070C50
	ldr r2, [sp, #0x60]
	cmp r2, r0
	beq _08070A56
	cmp r2, #3
	bls _08070A56
	movs r5, #0
	ldr r2, _08070C54
	ldr r2, [r2, #0]
	ldr r3, _08070C58
	mov ip, r3
	add r3, sp, #0x48
_080709EE:
	movs r0, #1
	lsls r0, r5
	ands r0, r2
	cmp r0, #0
	beq _08070A4C
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	mov r4, ip
	ldr r1, [r4, #0]
	adds r4, r1, r0
	movs r6, #0xee
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08070A4C
	ldr r0, [r4, #0x14]
	mov r1, sl
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r3, #0]
	mov r1, sp
	adds r1, #0x4a
	ldr r0, [r4, #0x18]
	mov r4, r9
	subs r0, r0, r4
	asrs r0, r0, #8
	strh r0, [r1, #0]
	movs r6, #0
	ldrsh r0, [r3, r6]
	adds r6, r1, #0
	cmp r0, #0
	bge _08070A38
	negs r0, r0
_08070A38:
	cmp r0, #0x1f
	bgt _08070A4C
	movs r0, #0
	ldrsh r1, [r6, r0]
	cmp r1, #0
	bge _08070A46
	negs r1, r1
_08070A46:
	cmp r1, #0x1f
	bgt _08070A4C
	movs r7, #1
_08070A4C:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _080709EE
_08070A56:
	ldr r1, [sp, #0x60]
	cmp r1, #0xff
	beq _08070ACA
	cmp r7, #0
	bne _08070AD0
	cmp r1, #3
	bhi _08070ACA
	ldr r0, [sp, #0x5c]
	adds r0, #0x68
	ldr r1, [sp, #0x54]
	adds r1, #0x68
	ldrb r2, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r2, r1
	beq _08070ACA
	ldr r3, [sp, #0x5c]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	beq _08070ACA
	cmp r2, #0
	beq _08070ACA
	add r3, sp, #0x48
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldr r5, [sp, #0x9c]
	subs r0, r0, r5
	strh r0, [r3, #0]
	mov r2, sp
	adds r2, #0x4a
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r6, r9
	asrs r1, r6, #8
	subs r0, r0, r1
	strh r0, [r2, #0]
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r6, r2, #0
	cmp r0, #0
	bge _08070AB6
	negs r0, r0
_08070AB6:
	cmp r0, #0xf
	bgt _08070ACA
	movs r2, #0
	ldrsh r1, [r6, r2]
	cmp r1, #0
	bge _08070AC4
	negs r1, r1
_08070AC4:
	cmp r1, #0xf
	bgt _08070ACA
	movs r7, #1
_08070ACA:
	cmp r7, #0
	bne _08070AD0
	b _08070D0A
_08070AD0:
	ldr r3, [sp, #0x9c]
	lsls r0, r3, #0x10
	mov r5, r9
	asrs r4, r5, #8
	lsls r1, r4, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r6, #0
	str r6, [sp, #4]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_0800BC08
	ldr r0, [sp, #0x9c]
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x80]
	adds r4, r0, r1
	lsls r1, r4, #0x10
	str r6, [sp, #0]
	add r0, sp, #0x10
	lsrs r1, r1, #0x10
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08070C5C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
	cmp r0, #0
	bne _08070B98
	bl sub_0800CC98
	cmp r0, #0
	bne _08070B98
	bl sub_0800CD8C
	cmp r0, #0
	bne _08070B98
	bl sub_0800CCCC
	cmp r0, #0
	bne _08070B98
	ldr r0, _08070C60
	ldr r0, [r0, #0]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _08070B58
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08070B58:
	ldr r0, _08070C64
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _08070B66
	bl sub_0800CDC0
_08070B66:
	ldr r0, _08070C60
	ldr r0, [r0, #0]
	movs r3, #1
	ands r0, r3
	ldr r1, [sp, #0xa0]
	cmp r0, r1
	bne _08070B98
	movs r2, #0
	ldrsh r0, [r7, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	lsls r2, r4, #0x10
	lsrs r2, r2, #0x10
	add r4, sp, #0x44
	ldrh r3, [r4, #0]
	movs r6, #0
	str r6, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_08070B98:
	bl sub_080003F0
	bl sub_08056E90
	cmp r0, #0
	beq _08070BA6
	b _080710A8
_08070BA6:
	mov r0, r8
	cmp r0, #3
	bhi _08070BC8
	ldr r1, _08070C68
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08070BC8
	b _080710A8
_08070BC8:
	ldr r3, [sp, #0x54]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	bne _08070BDE
	b _080710A8
_08070BDE:
	bl sub_08058DB0
	cmp r0, #0
	beq _08070BE8
	b _080710A8
_08070BE8:
	ldr r1, _08070C68
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x90
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08070C06
	b _080710A8
_08070C06:
	bl sub_0800CF10
	cmp r0, #0
	beq _08070C10
	b _080710A8
_08070C10:
	bl sub_0800D11C
	adds r4, r0, #0
	cmp r4, #0
	beq _08070C1C
	b _080710A8
_08070C1C:
	cmp r5, #0
	beq _08070CC8
	ldr r0, [sp, #0x60]
	cmp r0, #3
	bhi _08070C70
	ldr r1, [sp, #0x7c]
	cmp r0, r1
	bne _08070CA8
	ldr r0, _08070C6C
	movs r2, #0xcd
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrh r4, [r0, #0]
	ldr r0, [sp, #0x4c]
	movs r1, #0
	bl sub_08068F9C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	ldr r2, [sp, #0x64]
	bl sub_08029A7C
	b _08070CA8
	.2byte 0x0000
_08070C50: .4byte 0x0000FFFF
_08070C54: .4byte gUnk_030056FC
_08070C58: .4byte gUnk_030056F4
_08070C5C: .4byte gUnk_03005CF4
_08070C60: .4byte gUnk_03002344
_08070C64: .4byte gUnk_03003170
_08070C68: .4byte gUnk_03003CE0
_08070C6C: .4byte gUnk_084EBF1C
_08070C70:
	ldr r3, [sp, #0x7c]
	cmp r8, r3
	bne _08070CA8
	ldr r0, [sp, #0x4c]
	movs r1, #0
	bl sub_08068F9C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r6, [sp, #0x50]
	ldrh r0, [r6, #0]
	ldr r1, _08070CBC
	movs r3, #0xcd
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrh r1, [r1, #0]
	str r4, [sp, #0]
	str r4, [sp, #4]
	ldr r3, [sp, #0x64]
	bl sub_08029B98
	adds r2, r6, #0
	adds r2, #0x5a
	ldrh r1, [r2, #0]
	ldr r0, [sp, #0xa4]
	orrs r0, r1
	strh r0, [r2, #0]
_08070CA8:
	mov r4, r8
	cmp r4, #3
	bhi _08070CC0
	ldr r1, [sp, #0x54]
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	b _08070CC8
	.2byte 0x0000
_08070CBC: .4byte gUnk_084EBF1C
_08070CC0:
	ldr r6, [sp, #0x58]
	ldr r0, [r6, #0x50]
	adds r0, #1
	str r0, [r6, #0x50]
_08070CC8:
	ldr r0, [sp, #0x60]
	cmp r0, #3
	bhi _08070CE0
	ldr r1, [sp, #0x5c]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	b _08070CE4
_08070CE0:
	ldr r3, [sp, #0x50]
	ldrh r0, [r3, #0xc]
_08070CE4:
	cmp r0, #0xb
	beq _08070D0A
	cmp r5, #0
	bne _08070CEE
	b _080709D4
_08070CEE:
	ldr r0, [sp, #0x68]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	movs r4, #0
	movs r5, #0x46
	add r5, sp
	strh r4, [r5, #0]
	add r6, sp, #0x44
	strh r4, [r6, #0]
	cmp r0, #0
	bne _08070D0A
	b _080710A8
_08070D0A:
	ldr r0, [sp, #0x68]
	cmp r0, #0
	bne _08070D12
	b _080710A8
_08070D12:
	ldr r1, [sp, #0x7c]
	cmp r1, r8
	beq _08070D1E
	mov r2, r8
	cmp r2, #3
	bls _08070D3C
_08070D1E:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08070D3C
	bl sub_0800CD34
	cmp r0, #0
	bne _08070D3C
	ldr r3, [sp, #0x4c]
	ldr r0, [r3, #0x14]
	movs r4, #0xae
	lsls r4, r4, #1
	adds r0, r0, r4
	bl sub_0805865C
_08070D3C:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r8
	muls r1, r0, r1
	ldr r0, _08070E8C
	adds r5, r1, r0
	str r5, [sp, #0xa8]
	ldr r6, _08070E90
	adds r0, r0, r6
	adds r1, r1, r0
	str r1, [sp, #0xac]
_08070D52:
	ldr r0, [sp, #0x7c]
	cmp r8, r0
	bne _08070D86
	bl sub_08058DB0
	cmp r0, #0
	beq _08070D62
	b _080710A8
_08070D62:
	bl sub_0801DF8C
	cmp r0, #0
	beq _08070D6C
	b _080710A8
_08070D6C:
	ldr r1, [sp, #0x54]
	ldrh r0, [r1, #0x20]
	cmp r0, #0xb
	bne _08070D76
	b _080710A8
_08070D76:
	cmp r0, #0xc
	bne _08070D7C
	b _080710A8
_08070D7C:
	bl sub_0800D11C
	cmp r0, #0
	beq _08070D86
	b _080710A8
_08070D86:
	ldr r0, _08070E94
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
	cmp r0, #0
	bne _08070E5C
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x78]
	adds r4, r2, r3
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	movs r5, #1
	str r5, [sp, #0]
	add r0, sp, #0x10
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	bl sub_0800CC98
	str r4, [sp, #0xb4]
	cmp r0, #0
	bne _08070E5C
	bl sub_0800CD8C
	cmp r0, #0
	bne _08070E5C
	bl sub_0800CCCC
	adds r3, r0, #0
	cmp r3, #0
	bne _08070E5C
	ldr r0, _08070E98
	ldr r0, [r0, #0]
	ands r0, r5
	cmp r0, #0
	bne _08070DE8
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	str r3, [sp, #0xb8]
	bl sub_08000AF0
	ldr r3, [sp, #0xb8]
_08070DE8:
	mov r4, sl
	asrs r5, r4, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r9
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08070E9C
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _08070E28
	bl sub_0800CDC0
	cmp r0, #0
	beq _08070E28
	movs r4, #0
_08070E28:
	ldr r0, _08070E98
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	mov r0, r8
	ands r0, r2
	cmp r1, r0
	bne _08070E5C
	movs r2, #0
	ldrsh r0, [r7, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldr r5, [sp, #0xb4]
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	add r5, sp, #0x44
	ldrh r3, [r5, #0]
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_08070E5C:
	mov r0, r8
	cmp r0, #3
	bhi _08070EBE
	ldr r1, [sp, #0x7c]
	cmp r8, r1
	bne _08070EA0
	ldr r2, [sp, #0x54]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r4, sl
	asrs r1, r4, #8
	subs r0, r0, r1
	strh r0, [r7, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r5, r9
	asrs r1, r5, #8
	subs r0, r0, r1
	b _08070ED2
_08070E8C: .4byte gUnk_03003E28
_08070E90: .4byte 0xFFFFFEE8
_08070E94: .4byte gUnk_03005CF4
_08070E98: .4byte gUnk_03002344
_08070E9C: .4byte gUnk_03003170
_08070EA0:
	ldr r0, [sp, #0xa8]
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r3, sl
	asrs r1, r3, #8
	subs r0, r0, r1
	strh r0, [r7, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r4, r9
	asrs r1, r4, #8
	subs r0, r0, r1
	b _08070ED2
_08070EBE:
	ldr r5, [sp, #0x50]
	ldr r0, [r5, #0x14]
	mov r1, sl
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r7, #0]
	ldr r0, [r5, #0x18]
	mov r2, r9
	subs r0, r0, r2
	asrs r0, r0, #8
_08070ED2:
	strh r0, [r6, #0]
	bl sub_080003F0
	movs r3, #0
	ldrsh r0, [r7, r3]
	adds r4, r0, #0
	muls r4, r0, r4
	adds r0, r4, #0
	movs r5, #0
	ldrsh r1, [r6, r5]
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bhi _08070EFC
	b _0807101C
_08070EFC:
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r4, #0
	ldrsh r1, [r6, r4]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	adds r3, r2, #0
	ldr r5, [sp, #0x70]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r1, r3, r0
	cmp r1, #0x80
	ble _08070F2C
	ldr r6, _08070F28
	adds r0, r6, #0
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08070F3E
	.2byte 0x0000
_08070F28: .4byte 0xFFFFFF00
_08070F2C:
	movs r0, #0x80
	negs r0, r0
	cmp r1, r0
	bge _08070F3E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	adds r2, r0, #0
	orrs r2, r3
_08070F3E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x70]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	str r3, [sp, #0x70]
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _08070F68
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
_08070F68:
	ldr r5, [sp, #0x70]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #1
	cmp r0, r6
	ble _08070F80
	ldr r1, _08071010
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
_08070F80:
	movs r0, #0xff
	ldr r2, [sp, #0x70]
	ands r2, r0
	str r2, [sp, #0x70]
	ldr r1, _08071014
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	str r0, [sp, #0x78]
	ldr r3, _08071018
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	add sl, r0
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r5, #0
	ldrsh r1, [r2, r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	add r9, r0
	bl sub_08056E90
	cmp r0, #0
	bne _080710A8
	mov r6, r8
	cmp r6, #3
	bhi _08070FD2
	ldr r1, [sp, #0xac]
	ldr r0, [r1, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080710A8
_08070FD2:
	ldr r2, [sp, #0x54]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	beq _080710A8
	bl sub_08058DB0
	cmp r0, #0
	bne _080710A8
	ldr r4, [sp, #0xac]
	ldr r0, [r4, #0]
	movs r1, #0x90
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080710A8
	bl sub_0800CF10
	cmp r0, #0
	bne _080710A8
	bl sub_0800D11C
	cmp r0, #0
	bne _080710A8
	b _08070D52
	.2byte 0x0000
_08071010: .4byte 0xFFFFFF00
_08071014: .4byte gUnk_084790B4
_08071018: .4byte gUnk_080B9704
_0807101C:
	mov r5, r8
	cmp r5, #3
	bhi _0807107C
	ldr r0, [sp, #0x7c]
	cmp r8, r0
	bne _08071046
	mov r2, sl
	asrs r1, r2, #8
	ldr r3, [sp, #0x54]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	subs r1, r1, r0
	strh r1, [r7, #0]
	mov r5, r9
	asrs r1, r5, #8
	ldrh r0, [r2, #2]
	b _0807106E
_08071046:
	mov r0, sl
	asrs r2, r0, #8
	ldr r1, _08071078
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r1, r1, r4
	adds r0, r0, r1
	ldr r3, [r0, #0]
	ldrh r0, [r3, #0]
	lsrs r0, r0, #4
	subs r2, r2, r0
	strh r2, [r7, #0]
	mov r5, r9
	asrs r1, r5, #8
	ldrh r0, [r3, #2]
_0807106E:
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	subs r1, r1, r0
	strh r1, [r6, #0]
	b _08071092
_08071078: .4byte gUnk_03003CE0
_0807107C:
	ldr r1, [sp, #0x50]
	ldr r0, [r1, #0x14]
	mov r2, sl
	subs r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r7, #0]
	ldr r0, [r1, #0x18]
	mov r3, r9
	subs r0, r3, r0
	asrs r0, r0, #8
	strh r0, [r6, #0]
_08071092:
	movs r4, #0
	ldrsh r0, [r7, r4]
	movs r5, #0
	ldrsh r1, [r6, r5]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [sp, #0x74]
	bl _08070270
_080710A8:
	ldr r0, _080710D4
	add r0, r8
	movs r1, #0
	strb r1, [r0, #0]
	ldr r2, _080710D8
	ldr r6, [sp, #0xb0]
	adds r2, r6, r2
	movs r1, #1
	ldr r0, [sp, #0x84]
	lsls r1, r0
_080710BC:
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_080710C2:
	add sp, #0xbc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080710D4: .4byte gUnk_03006430
_080710D8: .4byte gUnk_030063E0
	thumb_func_end sub_0806FF1C
