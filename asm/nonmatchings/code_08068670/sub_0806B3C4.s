	thumb_func_start sub_0806B3C4
sub_0806B3C4: @ 0x0806B3C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb8
	str r0, [sp, #0x70]
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x70]
	ldr r0, [r0, #0]
	mov r9, r0
	ldr r1, [sp, #0x70]
	ldr r1, [r1, #4]
	str r1, [sp, #0x94]
	ldr r2, [sp, #0x70]
	ldrh r2, [r2, #0x14]
	mov sl, r2
	cmp r0, #3
	bhi _0806B408
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r9
	muls r1, r0, r1
	ldr r0, _0806B404
	adds r1, r1, r0
	str r1, [sp, #0x74]
	b _0806B420
	.2byte 0x0000
_0806B404: .4byte gUnk_03003CE0
_0806B408:
	ldr r0, _0806B474
	mov r3, r9
	lsls r1, r3, #1
	add r1, r9
	lsls r1, r1, #3
	subs r1, r1, r3
	lsls r1, r1, #5
	ldr r4, _0806B478
	adds r1, r1, r4
	ldr r0, [r0, #0]
	adds r0, r0, r1
	mov r8, r0
_0806B420:
	ldr r0, [sp, #0x90]
	cmp r0, r9
	beq _0806B484
	mov r1, r9
	cmp r1, #3
	bls _0806B4B6
	ldr r3, _0806B47C
	mov r4, sl
	lsls r2, r4, #1
	ldr r0, [sp, #0x70]
	ldr r1, [r0, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r3, #6
	adds r2, r2, r3
	mov r3, r8
	adds r3, #0x5e
	ldrh r0, [r3, #0]
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806B4B6
	ldr r0, _0806B480
	mov r1, r9
	lsls r2, r1, #2
	adds r2, r2, r0
	movs r1, #1
	ldr r4, [sp, #0x94]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	movs r0, #0
	strh r0, [r3, #0]
	bl _0806BE0C
	.2byte 0x0000
_0806B474: .4byte gUnk_030056F4
_0806B478: .4byte 0xFFFFF480
_0806B47C: .4byte gUnk_084EBF1C
_0806B480: .4byte gUnk_030063E0
_0806B484:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806B540
	adds r4, r4, r0
	ldr r1, [sp, #0x70]
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
	bge _0806B4B6
	movs r0, #0
	strh r0, [r4, #0]
_0806B4B6:
	add r3, sp, #0x54
	movs r2, #0
	movs r0, #0
	strh r0, [r3, #0]
	add r1, sp, #0x60
	strh r0, [r1, #0]
	add r0, sp, #0x4c
	strb r2, [r0, #0]
	movs r7, #1
	mov r2, r9
	lsls r2, r2, #2
	str r2, [sp, #0xac]
	adds r6, r0, #0
_0806B4D0:
	lsls r1, r7, #1
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x54
	movs r3, #0
	strh r3, [r0, #0]
	add r1, sp
	adds r1, #0x60
	strh r3, [r1, #0]
	bl sub_080008C8
	adds r5, r6, r7
	subs r4, r7, #1
	adds r4, r6, r4
	movs r1, #0x14
	bl sub_080B95E4
	adds r0, #0xa
	ldrb r4, [r4, #0]
	adds r0, r0, r4
	strb r0, [r5, #0]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _0806B4D0
	mov r4, r9
	cmp r4, #3
	bhi _0806B548
	ldr r1, [sp, #0x74]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x78]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [sp, #0x7c]
	ldr r2, _0806B544
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	str r0, [sp, #0x88]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	b _0806B5D0
	.2byte 0x0000
_0806B540: .4byte gUnk_03003CE0
_0806B544: .4byte gUnk_0847AD0A
_0806B548:
	mov r3, r8
	ldr r3, [r3, #0x14]
	str r3, [sp, #0x78]
	mov r4, r8
	ldr r4, [r4, #0x18]
	str r4, [sp, #0x7c]
	ldr r1, _0806B5B4
	mov r2, r8
	movs r3, #8
	ldrsh r0, [r2, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	str r0, [sp, #0x88]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	mov r0, r8
	adds r0, #0x6a
	ldr r2, _0806B5B8
	add r2, r8
	ldrh r1, [r0, #0]
	adds r6, r0, #0
	ldrb r2, [r2, #0]
	cmp r1, r2
	bhs _0806B5D0
	ldr r0, _0806B5BC
	ldr r1, [sp, #0xac]
	adds r4, r1, r0
	movs r0, #1
	ldr r2, [sp, #0x94]
	lsls r0, r2
	mvns r5, r0
_0806B58E:
	bl sub_08056E90
	cmp r0, #0
	bne _0806B5AA
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806B5AA
	mov r3, r8
	ldrh r0, [r3, #0xc]
	cmp r0, #0xa
	beq _0806B5AA
	cmp r0, #0xb
	bne _0806B5C0
_0806B5AA:
	ldr r0, [r4, #0]
	ands r0, r5
	str r0, [r4, #0]
	bl _0806BE0C
_0806B5B4: .4byte gUnk_0847AD0A
_0806B5B8: .4byte 0x0000022B
_0806B5BC: .4byte gUnk_030063E0
_0806B5C0:
	bl sub_080003F0
	ldr r1, _0806B6FC
	add r1, r8
	ldrh r0, [r6, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _0806B58E
_0806B5D0:
	movs r4, #0
	mov r8, r4
	movs r0, #0
	str r0, [sp, #0x84]
	bl sub_0800CDF8
	cmp r0, #0
	beq _0806B5E2
	b _0806B7DC
_0806B5E2:
	ldr r1, [sp, #0x70]
	ldr r0, [r1, #8]
	cmp r0, #3
	bls _0806B5EC
	b _0806B708
_0806B5EC:
	bl sub_08002164
	adds r6, r0, #0
	movs r7, #0
	ldr r2, [sp, #0x84]
	cmp r2, r6
	blo _0806B5FC
	b _0806B7DC
_0806B5FC:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0806B700
	adds r4, r1, r0
	mov r3, r9
	cmp r3, #3
	bhi _0806B61E
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, [sp, #0x74]
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	beq _0806B6F0
_0806B61E:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0806B6F0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, [r0, #0]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xb
	beq _0806B6F0
	cmp r0, #0xa
	beq _0806B6F0
	cmp r0, #0xe
	beq _0806B6F0
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0806B6F0
	ldrh r1, [r2, #0]
	lsrs r1, r1, #4
	ldr r3, [sp, #0x78]
	asrs r0, r3, #8
	subs r1, r1, r0
	add r4, sp, #0x6c
	strh r1, [r4, #0]
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldr r2, [sp, #0x7c]
	asrs r0, r2, #8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x6e
	strh r1, [r5, #0]
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1b
	ldr r2, [sp, #0x8c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _0806B69C
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0806B69C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806B6A6
	negs r0, r0
_0806B6A6:
	cmp r0, #5
	bgt _0806B6F0
	movs r3, #0
	ldrsh r2, [r4, r3]
	cmp r2, #0
	bge _0806B6B4
	negs r2, r2
_0806B6B4:
	ldr r0, _0806B704
	mov r4, sl
	lsls r1, r4, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bge _0806B6F0
	movs r4, #0
	ldrsh r2, [r5, r4]
	cmp r2, #0
	bge _0806B6CE
	negs r2, r2
_0806B6CE:
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bge _0806B6F0
	add r1, sp, #0x44
	ldr r2, [sp, #0x84]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
	adds r1, r1, r2
	strb r7, [r1, #0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0806B6F0:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, r6
	blo _0806B5FC
	b _0806B7DC
_0806B6FC: .4byte 0x0000022B
_0806B700: .4byte gUnk_03003CE0
_0806B704: .4byte gUnk_084EC12C
_0806B708:
	movs r7, #0
_0806B70A:
	ldr r0, _0806B938
	movs r1, #1
	lsls r1, r7
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _0806B7D2
	ldr r1, _0806B93C
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #3
	subs r0, r0, r7
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r4, r1, r0
	ldrh r0, [r4, #0xc]
	cmp r0, #0xb
	beq _0806B7D2
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0806B7D2
	ldr r0, [r4, #0x14]
	ldr r2, [sp, #0x78]
	subs r0, r0, r2
	lsrs r0, r0, #8
	add r5, sp, #0x6c
	strh r0, [r5, #0]
	ldr r1, [r4, #0x18]
	ldr r3, [sp, #0x7c]
	subs r1, r1, r3
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x6e
	strh r1, [r4, #0]
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1b
	ldr r3, [sp, #0x8c]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _0806B77E
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0806B77E:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806B788
	negs r0, r0
_0806B788:
	cmp r0, #5
	bgt _0806B7D2
	movs r0, #0
	ldrsh r2, [r5, r0]
	cmp r2, #0
	bge _0806B796
	negs r2, r2
_0806B796:
	ldr r0, _0806B940
	mov r3, sl
	lsls r1, r3, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bge _0806B7D2
	movs r0, #0
	ldrsh r2, [r4, r0]
	cmp r2, #0
	bge _0806B7B0
	negs r2, r2
_0806B7B0:
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bge _0806B7D2
	add r1, sp, #0x44
	ldr r2, [sp, #0x84]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
	adds r1, r1, r2
	strb r7, [r1, #0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0806B7D2:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _0806B70A
_0806B7DC:
	ldr r1, _0806B944
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	mov r4, sl
	cmp r4, #6
	bls _0806B802
	movs r0, #6
	mov sl, r0
_0806B802:
	mov r1, r8
	cmp r1, #0
	beq _0806B80A
	b _0806B98E
_0806B80A:
	ldr r3, _0806B948
	ldr r2, [sp, #0x88]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r2, [sp, #0x78]
	adds r2, r2, r0
	str r2, [sp, #0x78]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r4, [sp, #0x7c]
	adds r4, r4, r0
	str r4, [sp, #0x7c]
	movs r0, #0
	str r0, [sp, #0x80]
	ldr r1, [sp, #0x90]
	cmp r1, r9
	beq _0806B84E
	mov r2, r9
	cmp r2, #3
	bls _0806B868
_0806B84E:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806B868
	bl sub_0800CD34
	cmp r0, #0
	bne _0806B868
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, sl
	bl sub_0805865C
_0806B868:
	ldr r3, [sp, #0x80]
	cmp r3, #0
	beq _0806B870
	b _0806B97C
_0806B870:
	ldr r4, [sp, #0x78]
	asrs r4, r4, #8
	str r4, [sp, #0x98]
	ldr r0, [sp, #0x7c]
	asrs r0, r0, #8
	str r0, [sp, #0xa0]
	mov r1, sp
	adds r1, #0x6c
	str r1, [sp, #0xa4]
	mov r7, sp
	adds r7, #0x6e
	lsls r2, r4, #0x10
	str r2, [sp, #0x9c]
	add r6, sp, #0x54
_0806B88C:
	ldr r3, [sp, #0xa0]
	lsls r1, r3, #0x10
	movs r0, #0x30
	str r0, [sp, #0]
	movs r4, #0
	str r4, [sp, #4]
	ldr r2, [sp, #0x9c]
	asrs r0, r2, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0xa4]
	adds r3, r7, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x98]
	ldr r1, [sp, #0xa0]
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	str r4, [sp, #0]
	add r0, sp, #0x10
	mov r1, sl
	adds r2, r6, #0
	add r3, sp, #0x60
	bl sub_08065370
	cmp r0, #0
	beq _0806B8D2
	ldr r0, [sp, #0x80]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
_0806B8D2:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806B972
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806B972
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806B972
	ldr r5, _0806B94C
	ldr r0, [r5, #0]
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _0806B900
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806B900:
	bl sub_0800CB9C
	cmp r0, #0
	beq _0806B950
	ldr r1, [r5, #0]
	ands r1, r4
	mov r0, r9
	ands r0, r4
	cmp r1, r0
	bne _0806B972
	ldr r3, [sp, #0xa4]
	movs r4, #0
	ldrsh r0, [r3, r4]
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldrh r3, [r6, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08007870
	b _0806B972
_0806B938: .4byte gUnk_030056FC
_0806B93C: .4byte gUnk_030056F4
_0806B940: .4byte gUnk_084EC12C
_0806B944: .4byte 0x00050074
_0806B948: .4byte gUnk_080B9704
_0806B94C: .4byte gUnk_03002344
_0806B950:
	ldr r1, [sp, #0xa4]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r7, r3]
	ldrh r3, [r6, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08007870
_0806B972:
	bl sub_080003F0
	ldr r0, [sp, #0x80]
	cmp r0, #0
	beq _0806B88C
_0806B97C:
	mov r1, sl
	str r1, [sp, #0]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	mov r2, r9
	movs r3, #3
	bl sub_08069A30
	b _0806BDDE
_0806B98E:
	movs r2, #0
	str r2, [sp, #0x80]
	b _0806BDAC
_0806B994:
	ldr r3, [sp, #0x70]
	ldr r0, [r3, #8]
	cmp r0, #3
	bls _0806B99E
	b _0806BB7C
_0806B99E:
	movs r7, #0
	ldr r4, [sp, #0x84]
	cmp r7, r4
	blo _0806B9A8
	b _0806BD7A
_0806B9A8:
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0xa8]
	mov r1, sp
	adds r1, #0x6c
	str r1, [sp, #0xb0]
	mov r2, sp
	adds r2, #0x6e
	str r2, [sp, #0xb4]
_0806B9BA:
	ldr r3, [sp, #0xa8]
	adds r0, r3, r7
	ldrb r1, [r0, #0]
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _0806BB30
	adds r4, r1, r0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x6c
	mov r3, sp
	adds r3, #0x6e
	bl sub_0800BC08
	ldr r2, [sp, #0x78]
	asrs r0, r2, #8
	ldr r3, [sp, #0x7c]
	asrs r1, r3, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r2, sp
	adds r2, r2, r7
	adds r2, #0x4c
	ldrb r0, [r2, #0]
	adds r1, r0, #0
	cmp r1, #0
	beq _0806BA12
	b _0806BB64
_0806BA12:
	lsls r0, r7, #1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0x54
	ldrh r1, [r1, #0]
	adds r6, r0, #0
	cmp r1, #1
	bne _0806BA54
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x60
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0806BA54
	ldr r0, [sp, #0x90]
	cmp r0, r9
	beq _0806BA3A
	mov r1, r9
	cmp r1, #3
	bls _0806BA54
_0806BA3A:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806BA54
	bl sub_0800CD34
	cmp r0, #0
	bne _0806BA54
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, sl
	bl sub_0805865C
_0806BA54:
	mov r2, sp
	adds r2, r2, r6
	adds r2, #0x54
	mov r3, sp
	adds r3, r3, r6
	adds r3, #0x60
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	mov r1, sl
	bl sub_08065370
	cmp r0, #0
	beq _0806BAD2
	ldr r0, [sp, #0x80]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	mov r1, sp
	adds r1, r1, r7
	adds r1, #0x4c
	movs r0, #0xf0
	strb r0, [r1, #0]
	ldr r2, [sp, #0xa8]
	adds r0, r2, r7
	ldr r3, [sp, #0x90]
	ldrb r0, [r0, #0]
	cmp r3, r0
	bne _0806BAB2
	ldrh r0, [r4, #0]
	ldr r1, [sp, #0x70]
	str r0, [r1, #8]
	ldr r0, [sp, #0x70]
	bl sub_080694AC
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806BAB2
	bl sub_0800CD34
	cmp r0, #0
	bne _0806BAB2
	movs r0, #0x1a
	bl sub_0805865C
_0806BAB2:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0xc
	mov r3, sl
	str r3, [sp, #0]
	mov r2, r9
	movs r3, #2
	bl sub_08069A30
_0806BAD2:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806BB6C
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806BB6C
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806BB6C
	ldr r5, _0806BB34
	ldr r0, [r5, #0]
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _0806BB00
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806BB00:
	bl sub_0800CB9C
	cmp r0, #0
	beq _0806BB38
	ldr r1, [r5, #0]
	ands r1, r4
	mov r0, r9
	ands r0, r4
	cmp r1, r0
	bne _0806BB6C
	ldr r4, [sp, #0xb0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #0xb4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sp
	adds r2, r2, r6
	adds r2, #0x54
	ldrh r3, [r2, #0]
	mov r4, r8
	str r4, [sp, #0]
	b _0806BB50
	.2byte 0x0000
_0806BB30: .4byte gUnk_03003CE0
_0806BB34: .4byte gUnk_03002344
_0806BB38:
	ldr r1, [sp, #0xb0]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xb4]
	movs r4, #0
	ldrsh r1, [r3, r4]
	mov r2, sp
	adds r2, r2, r6
	adds r2, #0x54
	ldrh r3, [r2, #0]
	mov r2, r8
	str r2, [sp, #0]
_0806BB50:
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08007870
	b _0806BB6C
_0806BB64:
	cmp r1, #0xf0
	beq _0806BB6C
	subs r0, #1
	strb r0, [r2, #0]
_0806BB6C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r3, [sp, #0x84]
	cmp r7, r3
	bhs _0806BB7A
	b _0806B9BA
_0806BB7A:
	b _0806BD7A
_0806BB7C:
	movs r7, #0
	ldr r4, [sp, #0x84]
	cmp r7, r4
	blo _0806BB86
	b _0806BD7A
_0806BB86:
	mov r0, sp
	adds r0, #0x6c
	str r0, [sp, #0xb0]
	mov r1, sp
	adds r1, #0x6e
	str r1, [sp, #0xb4]
_0806BB92:
	ldr r2, _0806BC88
	add r0, sp, #0x44
	adds r0, r0, r7
	ldrb r1, [r0, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	ldr r1, [r2, #0]
	adds r4, r1, r0
	ldr r0, [r4, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x6c
	mov r3, sp
	adds r3, #0x6e
	bl sub_0800BC08
	ldr r2, [sp, #0x78]
	asrs r0, r2, #8
	ldr r3, [sp, #0x7c]
	asrs r1, r3, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r2, sp
	adds r2, r2, r7
	adds r2, #0x4c
	ldrb r0, [r2, #0]
	adds r1, r0, #0
	cmp r1, #0
	beq _0806BBEA
	b _0806BD64
_0806BBEA:
	lsls r0, r7, #1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0x54
	ldrh r1, [r1, #0]
	adds r6, r0, #0
	cmp r1, #1
	bne _0806BC2C
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x60
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0806BC2C
	ldr r0, [sp, #0x90]
	cmp r0, r9
	beq _0806BC12
	mov r1, r9
	cmp r1, #3
	bls _0806BC2C
_0806BC12:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806BC2C
	bl sub_0800CD34
	cmp r0, #0
	bne _0806BC2C
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, sl
	bl sub_0805865C
_0806BC2C:
	mov r2, sp
	adds r2, r2, r6
	adds r2, #0x54
	mov r3, sp
	adds r3, r3, r6
	adds r3, #0x60
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	mov r1, sl
	bl sub_08065370
	cmp r0, #0
	beq _0806BCCE
	ldr r0, [sp, #0x80]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	mov r1, sp
	adds r1, r1, r7
	adds r1, #0x4c
	movs r0, #0xf0
	strb r0, [r1, #0]
	ldr r2, [sp, #0x90]
	cmp r2, r9
	bne _0806BC8C
	ldrh r0, [r4, #0]
	adds r0, #4
	ldr r3, [sp, #0x70]
	str r0, [r3, #8]
	ldr r0, [sp, #0x70]
	bl sub_080694AC
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806BCBE
	bl sub_0800CD34
	cmp r0, #0
	bne _0806BCBE
	movs r0, #0x1a
	bl sub_0805865C
	b _0806BCBE
_0806BC88: .4byte gUnk_030056F4
_0806BC8C:
	mov r0, r9
	cmp r0, #3
	bls _0806BCBE
	bl sub_08002204
	cmp r0, #0
	beq _0806BCBE
	ldrh r0, [r4, #0]
	adds r0, #4
	ldr r1, [sp, #0x70]
	str r0, [r1, #8]
	ldr r0, [sp, #0x70]
	bl sub_080694AC
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806BCBE
	bl sub_0800CD34
	cmp r0, #0
	bne _0806BCBE
	movs r0, #0x1a
	bl sub_0805865C
_0806BCBE:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	mov r2, sl
	str r2, [sp, #0]
	mov r2, r9
	movs r3, #2
	bl sub_08069A30
_0806BCCE:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806BD6C
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806BD6C
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806BD6C
	ldr r0, _0806BD30
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0806BCFC
	bl sub_0800CDC0
	cmp r0, #0
	beq _0806BCFC
	movs r3, #0
	mov r8, r3
_0806BCFC:
	bl sub_0800CB9C
	cmp r0, #0
	beq _0806BD38
	ldr r0, _0806BD34
	ldr r2, [r0, #0]
	movs r1, #1
	ands r2, r1
	mov r0, r9
	ands r0, r1
	cmp r2, r0
	bne _0806BD6C
	ldr r4, [sp, #0xb0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #0xb4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sp
	adds r2, r2, r6
	adds r2, #0x54
	ldrh r3, [r2, #0]
	mov r4, r8
	str r4, [sp, #0]
	b _0806BD50
	.2byte 0x0000
_0806BD30: .4byte gUnk_03003170
_0806BD34: .4byte gUnk_03002344
_0806BD38:
	ldr r1, [sp, #0xb0]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xb4]
	movs r4, #0
	ldrsh r1, [r3, r4]
	mov r2, sp
	adds r2, r2, r6
	adds r2, #0x54
	ldrh r3, [r2, #0]
	mov r2, r8
	str r2, [sp, #0]
_0806BD50:
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08007870
	b _0806BD6C
_0806BD64:
	cmp r1, #0xf0
	beq _0806BD6C
	subs r0, #1
	strb r0, [r2, #0]
_0806BD6C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r3, [sp, #0x84]
	cmp r7, r3
	bhs _0806BD7A
	b _0806BB92
_0806BD7A:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806BDA8
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806BDA8
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806BDA8
	ldr r0, _0806BE1C
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0806BDA8
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806BDA8:
	bl sub_080003F0
_0806BDAC:
	ldr r4, [sp, #0x80]
	ldr r0, [sp, #0x84]
	cmp r4, r0
	bhs _0806BDDE
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806BDDE
	bl sub_080020F4
	cmp r9, r0
	beq _0806BDC6
	b _0806B994
_0806BDC6:
	ldr r1, [sp, #0x74]
	ldrh r0, [r1, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0806BDDE
	bl sub_0800D11C
	cmp r0, #0
	bne _0806BDDE
	b _0806B994
_0806BDDE:
	mov r2, r9
	cmp r2, #3
	bhi _0806BDFA
	ldr r0, [sp, #0x74]
	adds r0, #0xb6
	ldrh r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0
	bne _0806BDFA
_0806BDF0:
	bl sub_080003F0
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _0806BDF0
_0806BDFA:
	ldr r2, _0806BE20
	ldr r3, [sp, #0xac]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x94]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_0806BE0C:
	add sp, #0xb8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806BE1C: .4byte gUnk_03002344
_0806BE20: .4byte gUnk_030063E0
	thumb_func_end sub_0806B3C4
