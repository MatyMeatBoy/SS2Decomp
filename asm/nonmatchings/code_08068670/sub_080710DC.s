	thumb_func_start sub_080710DC
sub_080710DC: @ 0x080710DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	str r0, [sp, #0x4c]
	ldr r0, [r0, #4]
	str r0, [sp, #0x80]
	ldr r0, _0807110C
	ldr r2, [sp, #0x4c]
	ldr r1, [r2, #0]
	adds r5, r1, r0
	ldrb r0, [r5, #0]
	cmp r0, #0
	beq _08071114
	ldr r0, _08071110
	lsls r2, r1, #2
	adds r2, r2, r0
	movs r1, #1
	ldr r3, [sp, #0x80]
	lsls r1, r3
	bl _08072370
_0807110C: .4byte gUnk_03006410
_08071110: .4byte gUnk_030063E0
_08071114:
	str r1, [sp, #0x7c]
	movs r7, #1
	strb r7, [r5, #0]
	ldr r4, [sp, #0x4c]
	ldrh r4, [r4, #8]
	str r4, [sp, #0x60]
	ldr r6, [sp, #0x4c]
	ldrh r6, [r6, #0x14]
	str r6, [sp, #0x68]
	str r6, [sp, #0x6c]
	str r6, [sp, #0x64]
	bl sub_080020F4
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x7c]
	cmp r0, #3
	bhi _08071150
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0x7c]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0807114C
	adds r1, r1, r0
	str r1, [sp, #0x58]
	lsls r3, r2, #2
	str r3, [sp, #0xac]
	b _080711DA
_0807114C: .4byte gUnk_03003CE0
_08071150:
	ldr r1, _080711B4
	ldr r4, [sp, #0x7c]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	subs r0, r0, r4
	lsls r0, r0, #5
	ldr r6, _080711B8
	adds r0, r0, r6
	ldr r1, [r1, #0]
	adds r1, r1, r0
	str r1, [sp, #0x54]
	adds r0, r1, #0
	adds r0, #0x6a
	ldr r2, _080711BC
	adds r1, r1, r2
	ldrh r0, [r0, #0]
	lsls r3, r4, #2
	str r3, [sp, #0xac]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bhs _080711DA
	ldr r0, _080711C0
	adds r4, r3, r0
	adds r6, r5, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x80]
	lsls r0, r1
	mvns r5, r0
_0807118A:
	bl sub_08056E90
	cmp r0, #0
	bne _080711A6
	bl sub_0800BA6C
	cmp r0, #0
	beq _080711A6
	ldr r2, [sp, #0x54]
	ldrh r0, [r2, #0xc]
	cmp r0, #0xa
	beq _080711A6
	cmp r0, #0xb
	bne _080711C4
_080711A6:
	ldr r0, [r4, #0]
	ands r0, r5
	str r0, [r4, #0]
	movs r0, #0
	strb r0, [r6, #0]
	bl _08072376
_080711B4: .4byte gUnk_030056F4
_080711B8: .4byte 0xFFFFF480
_080711BC: .4byte 0x0000022B
_080711C0: .4byte gUnk_030063E0
_080711C4:
	bl sub_080003F0
	ldr r0, [sp, #0x54]
	adds r0, #0x6a
	ldr r3, [sp, #0x54]
	ldr r2, _08071240
	adds r1, r3, r2
	ldrh r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _0807118A
_080711DA:
	add r5, sp, #0x44
	movs r6, #0
	strh r6, [r5, #0]
	mov r4, sp
	adds r4, #0x46
	strh r6, [r4, #0]
	bl sub_080020F4
	ldr r3, [sp, #0x7c]
	cmp r0, r3
	beq _08071250
	cmp r3, #3
	bls _08071280
	ldr r3, _08071244
	ldr r4, [sp, #0x64]
	lsls r2, r4, #1
	ldr r0, [sp, #0x4c]
	ldr r1, [r0, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r3, #6
	adds r2, r2, r3
	ldr r3, [sp, #0x54]
	adds r3, #0x5e
	ldrh r0, [r3, #0]
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08071280
	ldr r2, _08071248
	ldr r0, [sp, #0xac]
	adds r2, r0, r2
	movs r1, #1
	ldr r4, [sp, #0x80]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	strh r6, [r3, #0]
	ldr r0, _0807124C
	ldr r6, [sp, #0x7c]
	adds r0, r6, r0
	movs r1, #0
	strb r1, [r0, #0]
	bl _08072376
_08071240: .4byte 0x0000022B
_08071244: .4byte gUnk_084EBF1C
_08071248: .4byte gUnk_030063E0
_0807124C: .4byte gUnk_03006410
_08071250:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _08071294
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
	bge _08071280
	strh r6, [r4, #0]
_08071280:
	ldr r2, [sp, #0x60]
	cmp r2, #3
	bhi _080712D4
	bl sub_08002164
	adds r6, r0, #0
	movs r5, #0
	ldr r7, [sp, #0x68]
	adds r7, #4
	b _0807129E
_08071294: .4byte gUnk_03003CE0
_08071298:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0807129E:
	cmp r5, r6
	bhs _080712C8
	bl sub_080020F4
	cmp r0, r5
	beq _08071298
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080712C4
	adds r1, r1, r0
	str r1, [sp, #0x5c]
	ldrh r0, [r1, #0]
	ldr r3, [sp, #0x60]
	cmp r0, r3
	bne _08071298
	b _0807132E
	.2byte 0x0000
_080712C4: .4byte gUnk_03003CE0
_080712C8:
	ldr r4, _080712D0
	str r4, [sp, #0x60]
	b _0807132E
	.2byte 0x0000
_080712D0: .4byte 0x0000FFFF
_080712D4:
	movs r5, #0
	ldr r3, _08071354
	ldr r6, [r3, #0]
	str r6, [sp, #0x50]
	ldr r2, _08071358
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	adds r4, r2, #0
	ldr r7, [sp, #0x68]
	adds r7, #4
	cmp r0, #0
	beq _080712F6
	ldrh r0, [r6, #2]
	ldr r1, [sp, #0x60]
	cmp r0, r1
	beq _08071326
_080712F6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bhi _0807132A
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r1, [r3, #0]
	adds r1, r1, r0
	str r1, [sp, #0x50]
	movs r1, #1
	lsls r1, r5
	ldr r0, [r4, #0]
	ands r0, r1
	cmp r0, #0
	beq _080712F6
	ldr r2, [sp, #0x50]
	ldrh r0, [r2, #2]
	ldr r6, [sp, #0x60]
	cmp r0, r6
	bne _080712F6
_08071326:
	cmp r5, #4
	bls _0807132E
_0807132A:
	ldr r0, _0807135C
	str r0, [sp, #0x60]
_0807132E:
	ldr r1, [sp, #0x64]
	cmp r1, #6
	bhi _08071364
	ldr r1, _08071360
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	ldr r0, [sp, #0x64]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	b _0807137A
	.2byte 0x0000
_08071354: .4byte gUnk_030056F4
_08071358: .4byte gUnk_030056FC
_0807135C: .4byte 0x0000FFFF
_08071360: .4byte 0x0005008F
_08071364:
	ldr r1, _080713D0
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	movs r2, #0
	str r2, [sp, #0x64]
_0807137A:
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	ldr r3, [sp, #0x60]
	cmp r3, #3
	bhi _080713DC
	bl sub_08002164
	adds r6, r0, #0
	movs r5, #0
	ldr r4, [sp, #0x64]
	lsls r2, r4, #0x13
	cmp r5, r6
	bhs _080713CA
	ldr r0, _080713D4
	str r0, [sp, #0x5c]
	ldrh r0, [r0, #0]
	ldr r1, [sp, #0x60]
	cmp r0, r1
	beq _080713C6
	movs r3, #0xa6
	lsls r3, r3, #1
	ldr r1, [sp, #0x5c]
_080713AC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	bhs _080713CA
	adds r0, r5, #0
	muls r0, r3, r0
	adds r0, r0, r1
	str r0, [sp, #0x5c]
	ldrh r0, [r0, #0]
	ldr r4, [sp, #0x60]
	cmp r0, r4
	bne _080713AC
_080713C6:
	cmp r5, r6
	blo _08071434
_080713CA:
	ldr r6, _080713D8
	str r6, [sp, #0x60]
	b _08071434
_080713D0: .4byte 0x00050090
_080713D4: .4byte gUnk_03003CE0
_080713D8: .4byte 0x0000FFFF
_080713DC:
	movs r5, #0
	ldr r3, _080713F4
	ldr r0, [r3, #0]
	str r0, [sp, #0x50]
	ldr r2, _080713F8
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	adds r4, r2, #0
	ldr r1, [sp, #0x64]
	lsls r2, r1, #0x13
	b _0807141E
_080713F4: .4byte gUnk_030056F4
_080713F8: .4byte gUnk_030056FC
_080713FC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bhi _08071430
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r1, [r3, #0]
	adds r1, r1, r0
	str r1, [sp, #0x50]
	movs r1, #1
	lsls r1, r5
	ldr r0, [r4, #0]
	ands r0, r1
_0807141E:
	cmp r0, #0
	beq _080713FC
	ldr r6, [sp, #0x50]
	ldrh r0, [r6, #2]
	ldr r1, [sp, #0x60]
	cmp r0, r1
	bne _080713FC
	cmp r5, #4
	bls _08071434
_08071430:
	ldr r3, _0807146C
	str r3, [sp, #0x60]
_08071434:
	movs r0, #0
	add r4, sp, #0x44
	strh r0, [r4, #0]
	movs r6, #0x46
	add r6, sp
	strh r0, [r6, #0]
	lsrs r2, r2, #0x10
	str r2, [sp, #0x64]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x7c]
	cmp r0, #3
	bhi _08071470
	ldr r1, [sp, #0x58]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x8c]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [sp, #0x90]
	b _0807147A
_0807146C: .4byte 0x0000FFFF
_08071470:
	ldr r4, [sp, #0x54]
	ldr r3, [r4, #0x14]
	ldr r4, [r4, #0x18]
	str r3, [sp, #0x8c]
	str r4, [sp, #0x90]
_0807147A:
	ldr r6, [sp, #0x8c]
	str r6, [sp, #0x70]
	ldr r0, [sp, #0x90]
	mov sl, r0
	movs r1, #0x3c
	str r1, [sp, #0x84]
	bl sub_080020F4
	ldr r2, [sp, #0x7c]
	cmp r0, r2
	beq _08071494
	cmp r2, #3
	bls _080714AE
_08071494:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080714AE
	bl sub_0800CD34
	cmp r0, #0
	bne _080714AE
	ldr r3, [sp, #0x6c]
	ldr r4, _0807152C
	adds r0, r3, r4
	bl sub_0805865C
_080714AE:
	movs r6, #0x80
	mov r9, r6
	movs r0, #0
	str r0, [sp, #0x88]
	ldr r2, [sp, #0x7c]
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r1, r2, #0
	muls r1, r3, r1
	str r1, [sp, #0x94]
	ldr r0, _08071530
	adds r0, #0x30
	adds r0, r1, r0
	str r0, [sp, #0x98]
_080714CA:
	ldr r0, [sp, #0x84]
	adds r4, r0, #0
	adds r4, #1
	str r4, [sp, #0x84]
	cmp r0, #0x3c
	bls _080715C0
	ldr r6, [sp, #0x7c]
	cmp r6, #3
	bhi _0807154C
	ldr r1, [sp, #0x58]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x8c]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [sp, #0x90]
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x74]
	ldr r1, _08071534
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [sp, #0x88]
	adds r3, r0, #0
	adds r3, #1
	str r3, [sp, #0x88]
	cmp r0, #5
	bls _080715C0
	movs r4, #0
	str r4, [sp, #0x88]
	ldr r0, [sp, #0x78]
	cmp r6, r0
	bne _08071538
	movs r0, #0x20
	movs r1, #0x64
	bl sub_08073EE8
	b _080715B4
	.2byte 0x0000
_0807152C: .4byte 0x00000139
_08071530: .4byte gUnk_03003CE0
_08071534: .4byte gUnk_0849E730
_08071538:
	ldr r1, [sp, #0x94]
	ldr r2, _08071548
	adds r0, r1, r2
	movs r1, #0x20
	movs r2, #0x64
	bl sub_0807414C
	b _080715B4
_08071548: .4byte gUnk_03003CE0
_0807154C:
	ldr r4, [sp, #0x54]
	ldr r3, [r4, #0x14]
	ldr r4, [r4, #0x18]
	str r3, [sp, #0x8c]
	str r4, [sp, #0x90]
	ldr r0, _08071598
	ldr r6, [sp, #0x54]
	ldrh r6, [r6, #8]
	str r6, [sp, #0x74]
	ldr r2, [sp, #0x54]
	movs r3, #8
	ldrsh r1, [r2, r3]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r4, [sp, #0x60]
	cmp r4, #3
	bhi _080715A0
	movs r6, #0xa6
	lsls r6, r6, #1
	adds r0, r4, #0
	muls r0, r6, r0
	ldr r1, _0807159C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08071594
	b _0807191C
_08071594:
	b _080715C0
	.2byte 0x0000
_08071598: .4byte gUnk_0849E730
_0807159C: .4byte gUnk_03003E28
_080715A0:
	ldr r2, [sp, #0x54]
	ldrh r0, [r2, #0]
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ldr r2, [sp, #0x70]
	mov r3, sl
	bl sub_0807A040
_080715B4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	cmp r0, #0xff
	beq _080715C0
	b _0807191C
_080715C0:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r4, r9
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r8, r6
	asrs r0, r0, #0x10
	adds r7, r2, #0
	cmp r0, #0xff
	ble _080715E6
	ldr r1, _0807167C
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_080715E6:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080715FC
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_080715FC:
	mov r4, r8
	lsls r5, r4, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r6, _08071680
	adds r0, r0, r6
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _08071684
	ldr r3, [sp, #0x6c]
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r0, r2, #0
	muls r0, r1, r0
	ldr r6, [sp, #0x8c]
	adds r0, r6, r0
	str r0, [sp, #0x8c]
	lsls r0, r5, #1
	ldr r2, _08071680
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	ldr r4, [sp, #0x90]
	adds r0, r4, r0
	str r0, [sp, #0x90]
	ldr r6, [sp, #0x8c]
	ldr r1, [sp, #0x70]
	subs r0, r6, r1
	lsrs r0, r0, #8
	add r4, sp, #0x48
	strh r0, [r4, #0]
	ldr r2, [sp, #0x90]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	mov r6, sp
	adds r6, #0x4a
	strh r1, [r6, #0]
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	adds r1, r2, #0
	subs r3, r1, r5
	str r4, [sp, #0xa4]
	str r6, [sp, #0xa8]
	cmp r3, #0x80
	ble _08071688
	ldr r3, _0807167C
	adds r0, r3, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _0807169A
_0807167C: .4byte 0xFFFFFF00
_08071680: .4byte gUnk_080B9704
_08071684: .4byte gUnk_084EC1D0
_08071688:
	movs r0, #0x80
	negs r0, r0
	cmp r3, r0
	bge _0807169A
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r2, r0, #0
	orrs r2, r1
_0807169A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r6, r8
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	mov r8, r0
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080716C4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_080716C4:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r0, r3
	ble _080716DC
	ldr r4, _08071830
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_080716DC:
	movs r5, #0xff
	mov r6, r8
	ands r6, r5
	mov r8, r6
	ldr r1, _08071834
	lsls r0, r6, #0x10
	asrs r4, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	str r0, [sp, #0x74]
	ldr r1, [sp, #0xa4]
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r6, [sp, #0xa8]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08071746
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r6, _08071838
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #3
	movs r1, #0xa
	bl sub_080B9394
	ldr r2, [sp, #0x70]
	adds r2, r2, r0
	str r2, [sp, #0x70]
	lsls r0, r4, #1
	adds r0, r0, r6
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #3
	movs r1, #0xa
	bl sub_080B9394
	add sl, r0
_08071746:
	movs r4, #0x80
	lsls r4, r4, #0xb
	adds r0, r7, r4
	lsrs r0, r0, #0x10
	mov r9, r0
	mov r6, r9
	ands r6, r5
	mov r9, r6
	ldr r0, _0807183C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08071766
	b _0807186E
_08071766:
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x74]
	adds r4, r0, r1
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
	adds r7, r4, #0
	cmp r0, #0
	bne _0807186E
	bl sub_0800CD8C
	cmp r0, #0
	bne _0807186E
	bl sub_0800CCCC
	adds r6, r0, #0
	cmp r6, #0
	bne _0807186E
	ldr r0, _08071840
	ldr r0, [r0, #0]
	ands r0, r5
	cmp r0, #0
	bne _080717B0
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_080717B0:
	ldr r2, [sp, #0x70]
	asrs r5, r2, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r3, sl
	asrs r4, r3, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r6, [sp, #4]
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0xa8]
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _08071844
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _080717F0
	bl sub_0800CDC0
	cmp r0, #0
	beq _080717F0
	movs r5, #0
_080717F0:
	bl sub_0800CB9C
	cmp r0, #0
	beq _08071848
	ldr r0, _08071840
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	ldr r0, [sp, #0x7c]
	ands r0, r2
	cmp r1, r0
	bne _0807186E
	ldr r4, [sp, #0xa4]
	movs r6, #0
	ldrsh r0, [r4, r6]
	ldr r2, [sp, #0xa8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	add r4, sp, #0x44
	ldrh r3, [r4, #0]
	str r5, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _0807186E
_08071830: .4byte 0xFFFFFF00
_08071834: .4byte gUnk_084790B4
_08071838: .4byte gUnk_080B9704
_0807183C: .4byte gUnk_03005CF4
_08071840: .4byte gUnk_03002344
_08071844: .4byte gUnk_03003170
_08071848:
	ldr r6, [sp, #0xa4]
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, [sp, #0xa8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	add r4, sp, #0x44
	ldrh r3, [r4, #0]
	str r5, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_0807186E:
	bl sub_080003F0
	ldr r6, [sp, #0x7c]
	ldr r0, [sp, #0x78]
	cmp r6, r0
	bne _080718AA
	bl sub_08058DB0
	cmp r0, #0
	beq _08071886
	bl _0807235A
_08071886:
	bl sub_0801DF8C
	cmp r0, #0
	beq _08071892
	bl _0807235A
_08071892:
	ldr r1, [sp, #0x58]
	ldrh r0, [r1, #0x20]
	cmp r0, #0xb
	bne _0807189E
	bl _0807235A
_0807189E:
	bl sub_0800D11C
	cmp r0, #0
	beq _080718AA
	bl _0807235A
_080718AA:
	bl sub_08056E90
	cmp r0, #0
	beq _080718B6
	bl _0807235A
_080718B6:
	ldr r2, [sp, #0x7c]
	cmp r2, #3
	bhi _080718CC
	ldr r3, [sp, #0x98]
	ldr r0, [r3, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080718CC
	bl _0807235A
_080718CC:
	bl sub_0800D11C
	cmp r0, #0
	beq _080718D8
	bl _0807235A
_080718D8:
	ldr r4, [sp, #0x58]
	movs r6, #0xa4
	lsls r6, r6, #1
	adds r0, r4, r6
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	bne _080718F0
	bl _0807235A
_080718F0:
	bl sub_08058DB0
	cmp r0, #0
	beq _080718FC
	bl _0807235A
_080718FC:
	ldr r1, [sp, #0x98]
	ldr r0, [r1, #0]
	movs r1, #0x90
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0807190E
	bl _0807235A
_0807190E:
	bl sub_0800CF10
	cmp r0, #0
	beq _0807191A
	bl _0807235A
_0807191A:
	b _080714CA
_0807191C:
	ldr r2, [sp, #0x60]
	cmp r2, #3
	bhi _08071942
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08071934
	adds r1, r1, r0
	str r1, [sp, #0x5c]
	b _08071976
	.2byte 0x0000
_08071934: .4byte gUnk_03003CE0
_08071938:
	str r1, [sp, #0x50]
	b _08071976
_0807193C:
	movs r3, #0
	str r3, [sp, #0x84]
	b _08072090
_08071942:
	movs r5, #0
	ldr r4, _08071AF4
	ldr r2, [r4, #0]
	movs r4, #1
	ldr r3, _08071AF8
_0807194C:
	adds r0, r4, #0
	lsls r0, r5
	ands r0, r2
	cmp r0, #0
	beq _0807196C
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
	beq _08071938
_0807196C:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _0807194C
_08071976:
	movs r0, #0
	str r0, [sp, #0x84]
	ldr r2, [sp, #0x7c]
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r1, r2, #0
	muls r1, r3, r1
	ldr r0, _08071AFC
	adds r1, r1, r0
	str r1, [sp, #0x9c]
_0807198A:
	ldr r4, [sp, #0x7c]
	ldr r6, [sp, #0x78]
	cmp r4, r6
	bne _080719C2
	bl sub_08058DB0
	cmp r0, #0
	beq _0807199E
	bl _0807235A
_0807199E:
	bl sub_0801DF8C
	cmp r0, #0
	beq _080719AA
	bl _0807235A
_080719AA:
	ldr r1, [sp, #0x58]
	ldrh r0, [r1, #0x20]
	cmp r0, #0xb
	bne _080719B6
	bl _0807235A
_080719B6:
	bl sub_0800D11C
	cmp r0, #0
	beq _080719C2
	bl _0807235A
_080719C2:
	movs r2, #0
	mov r9, r2
	ldr r0, _08071B00
	ldr r3, [sp, #0x60]
	cmp r3, r0
	bne _080719D0
	b _08071B90
_080719D0:
	cmp r3, #3
	bls _08071A48
	movs r5, #0
	ldr r4, _08071AF4
	ldr r2, [r4, #0]
	ldr r6, _08071AF8
	add r4, sp, #0x48
_080719DE:
	movs r0, #1
	lsls r0, r5
	ands r0, r2
	cmp r0, #0
	beq _08071A3E
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r1, [r6, #0]
	adds r3, r1, r0
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08071A3E
	ldr r0, [r3, #0x14]
	ldr r1, [sp, #0x70]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0]
	mov r1, sp
	adds r1, #0x4a
	ldr r0, [r3, #0x18]
	mov r3, sl
	subs r0, r0, r3
	asrs r0, r0, #8
	strh r0, [r1, #0]
	movs r3, #0
	ldrsh r0, [r4, r3]
	str r1, [sp, #0xa8]
	cmp r0, #0
	bge _08071A26
	negs r0, r0
_08071A26:
	cmp r0, #7
	bgt _08071A3E
	ldr r0, [sp, #0xa8]
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	bge _08071A36
	negs r1, r1
_08071A36:
	cmp r1, #7
	bgt _08071A3E
	movs r0, #1
	mov r9, r0
_08071A3E:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _080719DE
_08071A48:
	ldr r0, _08071B00
	ldr r1, [sp, #0x60]
	cmp r1, r0
	bne _08071A52
	b _08071B90
_08071A52:
	mov r2, r9
	cmp r2, #0
	beq _08071A5A
	b _08071E94
_08071A5A:
	bl sub_08002164
	adds r6, r0, #0
	ldr r3, [sp, #0x4c]
	ldr r0, [r3, #0]
	cmp r0, #3
	bhi _08071B08
	movs r5, #0
	cmp r9, r6
	blo _08071A70
	b _08071B90
_08071A70:
	add r7, sp, #0x48
_08071A72:
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r1, r5, #0
	muls r1, r4, r1
	ldr r0, _08071B04
	adds r2, r1, r0
	adds r0, r2, #0
	adds r0, #0x68
	ldr r1, [sp, #0x58]
	adds r1, #0x68
	ldrb r4, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r4, r1
	beq _08071AE6
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r3, [r0, #0]
	ldrb r0, [r3, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	beq _08071AE6
	cmp r4, #0
	beq _08071AE6
	ldrh r0, [r3, #0]
	lsrs r0, r0, #4
	ldr r2, [sp, #0x70]
	asrs r1, r2, #8
	subs r0, r0, r1
	strh r0, [r7, #0]
	mov r2, sp
	adds r2, #0x4a
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r3, sl
	asrs r1, r3, #8
	subs r0, r0, r1
	strh r0, [r2, #0]
	movs r4, #0
	ldrsh r0, [r7, r4]
	str r2, [sp, #0xa8]
	cmp r0, #0
	bge _08071ACE
	negs r0, r0
_08071ACE:
	cmp r0, #0xb
	bgt _08071AE6
	ldr r0, [sp, #0xa8]
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bge _08071ADE
	negs r1, r1
_08071ADE:
	cmp r1, #0xb
	bgt _08071AE6
	movs r3, #1
	mov r9, r3
_08071AE6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blo _08071A72
	b _08071B90
	.2byte 0x0000
_08071AF4: .4byte gUnk_030056FC
_08071AF8: .4byte gUnk_030056F4
_08071AFC: .4byte gUnk_03003D10
_08071B00: .4byte 0x0000FFFF
_08071B04: .4byte gUnk_03003CE0
_08071B08:
	movs r5, #0
	cmp r9, r6
	bhs _08071B90
	add r4, sp, #0x48
	ldr r7, _08071C2C
_08071B12:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, #0
	muls r0, r1, r0
	adds r2, r0, r7
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08071B86
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r3, [r0, #0]
	ldrb r0, [r3, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	beq _08071B86
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08071B86
	ldrh r0, [r3, #0]
	lsrs r0, r0, #4
	ldr r2, [sp, #0x70]
	asrs r1, r2, #8
	subs r0, r0, r1
	strh r0, [r4, #0]
	mov r2, sp
	adds r2, #0x4a
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r3, sl
	asrs r1, r3, #8
	subs r0, r0, r1
	strh r0, [r2, #0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	str r2, [sp, #0xa8]
	cmp r0, #0
	bge _08071B6E
	negs r0, r0
_08071B6E:
	cmp r0, #0xb
	bgt _08071B86
	ldr r2, [sp, #0xa8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #0
	bge _08071B7E
	negs r1, r1
_08071B7E:
	cmp r1, #0xb
	bgt _08071B86
	movs r0, #1
	mov r9, r0
_08071B86:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blo _08071B12
_08071B90:
	mov r1, r9
	cmp r1, #0
	beq _08071B98
	b _08071E94
_08071B98:
	bl sub_08056E90
	cmp r0, #0
	beq _08071BB4
	ldr r2, [sp, #0x7c]
	cmp r2, #3
	bhi _08071BB4
	ldr r3, [sp, #0x9c]
	ldr r0, [r3, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08071BB4
	b _0807235A
_08071BB4:
	bl sub_0800D11C
	cmp r0, #0
	beq _08071BBE
	b _0807235A
_08071BBE:
	movs r5, #0xa4
	lsls r5, r5, #1
	ldr r4, [sp, #0x58]
	adds r0, r4, r5
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	bne _08071BD4
	b _0807235A
_08071BD4:
	bl sub_08058DB0
	cmp r0, #0
	beq _08071BDE
	b _0807235A
_08071BDE:
	ldr r6, [sp, #0x9c]
	ldr r0, [r6, #0]
	movs r1, #0x90
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08071BEE
	b _0807235A
_08071BEE:
	bl sub_0800CF10
	cmp r0, #0
	beq _08071BF8
	b _0807235A
_08071BF8:
	ldr r0, [sp, #0x60]
	cmp r0, #3
	bhi _08071C30
	add r4, sp, #0x48
	ldr r1, [sp, #0x5c]
	adds r0, r1, r5
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldr r3, [sp, #0x70]
	asrs r1, r3, #8
	subs r0, r0, r1
	strh r0, [r4, #0]
	mov r3, sp
	adds r3, #0x4a
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r6, sl
	asrs r1, r6, #8
	subs r0, r0, r1
	strh r0, [r3, #0]
	str r4, [sp, #0xa4]
	str r3, [sp, #0xa8]
	b _08071C52
	.2byte 0x0000
_08071C2C: .4byte gUnk_03003CE0
_08071C30:
	add r2, sp, #0x48
	ldr r1, [sp, #0x50]
	ldr r0, [r1, #0x14]
	ldr r3, [sp, #0x70]
	subs r0, r0, r3
	asrs r0, r0, #8
	strh r0, [r2, #0]
	mov r1, sp
	adds r1, #0x4a
	ldr r4, [sp, #0x50]
	ldr r0, [r4, #0x18]
	mov r6, sl
	subs r0, r0, r6
	asrs r0, r0, #8
	strh r0, [r1, #0]
	str r2, [sp, #0xa4]
	str r1, [sp, #0xa8]
_08071C52:
	ldr r1, [sp, #0xa4]
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r4, [sp, #0xa8]
	movs r6, #0
	ldrsh r1, [r4, r6]
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bhi _08071C7A
	b _08071E94
_08071C7A:
	ldr r3, [sp, #0xa4]
	movs r4, #0
	ldrsh r0, [r3, r4]
	ldr r6, [sp, #0xa8]
	movs r2, #0
	ldrsh r1, [r6, r2]
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	adds r3, r2, #0
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r3, r0
	cmp r1, #0x80
	ble _08071CAC
	ldr r6, _08071CA8
	adds r0, r6, #0
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08071CBE
_08071CA8: .4byte 0xFFFFFF00
_08071CAC:
	movs r0, #0x80
	negs r0, r0
	cmp r1, r0
	bge _08071CBE
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	adds r2, r0, #0
	orrs r2, r3
_08071CBE:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r8, r3
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _08071CE8
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08071CE8:
	mov r6, r8
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _08071D00
	ldr r2, _08071D68
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08071D00:
	mov r3, r8
	lsls r1, r3, #0x10
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, _08071D6C
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	str r0, [sp, #0x74]
	ldr r0, [sp, #0x70]
	mov r1, sl
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08071D3A
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08071D74
_08071D3A:
	ldr r2, _08071D70
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, [sp, #0x70]
	adds r1, r1, r0
	str r1, [sp, #0x70]
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	add sl, r0
	movs r3, #0
	str r3, [sp, #0x84]
	b _08071D82
	.2byte 0x0000
_08071D68: .4byte 0xFFFFFF00
_08071D6C: .4byte gUnk_084790B4
_08071D70: .4byte gUnk_080B9704
_08071D74:
	ldr r0, [sp, #0x84]
	adds r4, r0, #0
	adds r4, #1
	str r4, [sp, #0x84]
	cmp r0, #0x78
	bls _08071D82
	b _0807193C
_08071D82:
	ldr r6, [sp, #0x70]
	asrs r5, r6, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0xa8]
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x74]
	adds r4, r2, r3
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	movs r6, #1
	str r6, [sp, #0]
	add r0, sp, #0x10
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	ldr r0, _08071E5C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	adds r7, r4, #0
	cmp r0, #0
	bne _08071E8E
	bl sub_0800CC98
	cmp r0, #0
	bne _08071E8E
	bl sub_0800CD8C
	cmp r0, #0
	bne _08071E8E
	bl sub_0800CCCC
	cmp r0, #0
	bne _08071E8E
	ldr r0, _08071E60
	ldr r0, [r0, #0]
	ands r0, r6
	cmp r0, #0
	bne _08071E06
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08071E06:
	ldr r0, _08071E64
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _08071E1A
	bl sub_0800CDC0
	cmp r0, #0
	beq _08071E1A
	movs r5, #0
_08071E1A:
	bl sub_0800CB9C
	cmp r0, #0
	beq _08071E68
	ldr r0, _08071E60
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	ldr r0, [sp, #0x7c]
	ands r0, r2
	cmp r1, r0
	bne _08071E8E
	ldr r4, [sp, #0xa4]
	movs r6, #0
	ldrsh r0, [r4, r6]
	ldr r2, [sp, #0xa8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	add r4, sp, #0x44
	ldrh r3, [r4, #0]
	str r5, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _08071E8E
	.2byte 0x0000
_08071E5C: .4byte gUnk_03005CF4
_08071E60: .4byte gUnk_03002344
_08071E64: .4byte gUnk_03003170
_08071E68:
	ldr r6, [sp, #0xa4]
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, [sp, #0xa8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	add r4, sp, #0x44
	ldrh r3, [r4, #0]
	str r5, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_08071E8E:
	bl sub_080003F0
	b _0807198A
_08071E94:
	mov r6, sp
	adds r6, #0x48
	str r6, [sp, #0xa4]
	mov r0, sp
	adds r0, #0x4a
	str r0, [sp, #0xa8]
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x74]
	adds r7, r1, r2
	mov r3, sl
	asrs r3, r3, #8
	str r3, [sp, #0xa0]
	movs r4, #0
	mov r9, r4
	lsls r4, r7, #0x10
	ldr r6, [sp, #0x70]
	asrs r7, r6, #8
_08071EB6:
	lsls r0, r7, #0x10
	ldr r2, [sp, #0xa0]
	lsls r1, r2, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	mov r3, r9
	str r3, [sp, #4]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0xa8]
	bl sub_0800BC08
	adds r0, r7, #0
	ldr r1, [sp, #0xa0]
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov r6, r9
	str r6, [sp, #0]
	add r0, sp, #0x10
	lsrs r1, r4, #0x10
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	adds r6, r0, #0
	ldr r0, _08071F80
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08071FB0
	bl sub_0800CC98
	cmp r0, #0
	bne _08071FB0
	bl sub_0800CD8C
	cmp r0, #0
	bne _08071FB0
	bl sub_0800CCCC
	cmp r0, #0
	bne _08071FB0
	ldr r0, _08071F84
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08071F2E
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08071F2E:
	ldr r0, _08071F88
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _08071F42
	bl sub_0800CDC0
	cmp r0, #0
	beq _08071F42
	movs r5, #0
_08071F42:
	bl sub_0800CB9C
	cmp r0, #0
	beq _08071F8C
	ldr r0, _08071F84
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	ldr r0, [sp, #0x7c]
	ands r0, r2
	cmp r1, r0
	bne _08071FB0
	ldr r1, [sp, #0xa4]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xa8]
	movs r2, #0
	ldrsh r1, [r3, r2]
	add r2, sp, #0x44
	ldrh r3, [r2, #0]
	str r5, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	lsrs r2, r4, #0x10
	bl sub_08007870
	b _08071FB0
_08071F80: .4byte gUnk_03005CF4
_08071F84: .4byte gUnk_03002344
_08071F88: .4byte gUnk_03003170
_08071F8C:
	ldr r3, [sp, #0xa4]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #0xa8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r2, sp, #0x44
	ldrh r3, [r2, #0]
	str r5, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	lsrs r2, r4, #0x10
	bl sub_08007870
_08071FB0:
	bl sub_080003F0
	bl sub_08056E90
	cmp r0, #0
	beq _08071FBE
	b _0807235A
_08071FBE:
	ldr r3, [sp, #0x7c]
	cmp r3, #3
	bhi _08071FDA
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r3, r0
	ldr r1, _08072048
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08071FDA
	b _0807235A
_08071FDA:
	bl sub_0800D11C
	cmp r0, #0
	beq _08071FE4
	b _0807235A
_08071FE4:
	ldr r2, [sp, #0x58]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	bne _08071FFA
	b _0807235A
_08071FFA:
	bl sub_08058DB0
	cmp r0, #0
	beq _08072004
	b _0807235A
_08072004:
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r1, [sp, #0x7c]
	muls r0, r1, r0
	ldr r2, _08072048
	adds r0, r0, r2
	ldr r0, [r0, #0]
	movs r1, #0x90
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0807201E
	b _0807235A
_0807201E:
	bl sub_0800CF10
	cmp r0, #0
	beq _08072028
	b _0807235A
_08072028:
	cmp r6, #0
	beq _08072054
	ldr r0, [sp, #0x70]
	mov r1, sl
	ldr r2, [sp, #0x4c]
	bl sub_08068A00
	ldr r3, [sp, #0x7c]
	cmp r3, #3
	bhi _0807204C
	ldr r1, [sp, #0x58]
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	b _08072054
_08072048: .4byte gUnk_03003D10
_0807204C:
	ldr r1, [sp, #0x54]
	ldr r0, [r1, #0x50]
	adds r0, #1
	str r0, [r1, #0x50]
_08072054:
	ldr r2, [sp, #0x60]
	cmp r2, #3
	bhi _0807206C
	ldr r3, [sp, #0x5c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	b _08072070
_0807206C:
	ldr r2, [sp, #0x50]
	ldrh r0, [r2, #0xc]
_08072070:
	cmp r0, #0xb
	beq _08072090
	cmp r6, #0
	bne _0807207A
	b _08071EB6
_0807207A:
	ldr r0, [sp, #0x68]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	mov r3, r9
	movs r4, #0x46
	add r4, sp
	strh r3, [r4, #0]
	add r6, sp, #0x44
	strh r3, [r6, #0]
_08072090:
	ldr r0, [sp, #0x68]
	cmp r0, #0
	bne _08072098
	b _0807235A
_08072098:
	ldr r1, _080720C8
	mov r9, r1
_0807209C:
	ldr r2, [sp, #0x7c]
	cmp r2, #3
	bhi _080720CC
	ldr r3, [sp, #0x58]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldr r6, [sp, #0x70]
	asrs r1, r6, #8
	subs r0, r0, r1
	ldr r1, [sp, #0xa4]
	strh r0, [r1, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r2, sl
	asrs r1, r2, #8
	subs r0, r0, r1
	b _080720E2
_080720C8: .4byte gUnk_03003D10
_080720CC:
	ldr r4, [sp, #0x50]
	ldr r0, [r4, #0x14]
	ldr r6, [sp, #0x70]
	subs r0, r0, r6
	asrs r0, r0, #8
	ldr r1, [sp, #0xa4]
	strh r0, [r1, #0]
	ldr r0, [r4, #0x18]
	mov r2, sl
	subs r0, r0, r2
	asrs r0, r0, #8
_080720E2:
	ldr r3, [sp, #0xa8]
	strh r0, [r3, #0]
	ldr r4, [sp, #0xa4]
	movs r6, #0
	ldrsh r0, [r4, r6]
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, [sp, #0xa8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r4, r1, #0
	muls r4, r1, r4
	adds r1, r4, #0
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bhi _08072110
	bl _080714AE
_08072110:
	ldr r6, [sp, #0xa4]
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, [sp, #0xa8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	adds r3, r2, #0
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r3, r0
	cmp r1, #0x80
	ble _08072144
	ldr r6, _08072140
	adds r0, r6, #0
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08072156
	.2byte 0x0000
_08072140: .4byte 0xFFFFFF00
_08072144:
	movs r0, #0x80
	negs r0, r0
	cmp r1, r0
	bge _08072156
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	adds r2, r0, #0
	orrs r2, r3
_08072156:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r8, r3
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _08072180
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08072180:
	mov r6, r8
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _08072198
	ldr r2, _080722B4
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08072198:
	mov r3, r8
	lsls r1, r3, #0x10
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, _080722B8
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	str r0, [sp, #0x74]
	ldr r3, _080722BC
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r6, [sp, #0x70]
	adds r6, r6, r0
	str r6, [sp, #0x70]
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	add sl, r0
	ldr r0, _080722C0
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080721EA
	b _080722F2
_080721EA:
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x74]
	adds r4, r1, r2
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
	adds r7, r4, #0
	cmp r0, #0
	bne _080722F2
	bl sub_0800CD8C
	cmp r0, #0
	bne _080722F2
	bl sub_0800CCCC
	adds r6, r0, #0
	cmp r6, #0
	bne _080722F2
	ldr r0, _080722C4
	ldr r0, [r0, #0]
	ands r0, r5
	cmp r0, #0
	bne _08072234
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08072234:
	ldr r3, [sp, #0x70]
	asrs r5, r3, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r6, [sp, #4]
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0xa8]
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _080722C8
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _08072274
	bl sub_0800CDC0
	cmp r0, #0
	beq _08072274
	movs r5, #0
_08072274:
	bl sub_0800CB9C
	cmp r0, #0
	beq _080722CC
	ldr r0, _080722C4
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	ldr r0, [sp, #0x7c]
	ands r0, r2
	cmp r1, r0
	bne _080722F2
	ldr r2, [sp, #0xa4]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r4, [sp, #0xa8]
	movs r6, #0
	ldrsh r1, [r4, r6]
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	add r4, sp, #0x44
	ldrh r3, [r4, #0]
	str r5, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080722F2
_080722B4: .4byte 0xFFFFFF00
_080722B8: .4byte gUnk_084790B4
_080722BC: .4byte gUnk_080B9704
_080722C0: .4byte gUnk_03005CF4
_080722C4: .4byte gUnk_03002344
_080722C8: .4byte gUnk_03003170
_080722CC:
	ldr r6, [sp, #0xa4]
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, [sp, #0xa8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	add r4, sp, #0x44
	ldrh r3, [r4, #0]
	str r5, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080722F2:
	bl sub_080003F0
	bl sub_08056E90
	cmp r0, #0
	bne _0807235A
	ldr r6, [sp, #0x7c]
	cmp r6, #3
	bhi _08072316
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r6, r0
	add r0, r9
	ldr r0, [r0, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807235A
_08072316:
	bl sub_0800D11C
	cmp r0, #0
	bne _0807235A
	ldr r1, [sp, #0x58]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	beq _0807235A
	bl sub_08058DB0
	cmp r0, #0
	bne _0807235A
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r3, [sp, #0x7c]
	muls r0, r3, r0
	add r0, r9
	ldr r0, [r0, #0]
	movs r1, #0x90
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0807235A
	bl sub_0800CF10
	cmp r0, #0
	bne _0807235A
	b _0807209C
_0807235A:
	ldr r0, _08072388
	ldr r4, [sp, #0x7c]
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0, #0]
	ldr r2, _0807238C
	ldr r6, [sp, #0xac]
	adds r2, r6, r2
	movs r1, #1
	ldr r0, [sp, #0x80]
	lsls r1, r0
_08072370:
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_08072376:
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08072388: .4byte gUnk_03006410
_0807238C: .4byte gUnk_030063E0
	thumb_func_end sub_080710DC
