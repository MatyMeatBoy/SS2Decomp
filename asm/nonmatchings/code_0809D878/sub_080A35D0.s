	thumb_func_start sub_080A35D0
sub_080A35D0: @ 0x080A35D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r2, _080A36B4
	ldr r0, [r2, #0]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0]
	ldr r4, _080A36B8
	ldr r0, _080A36BC
	ldr r0, [r0, #0]
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0]
	bl sub_0801A0A4
	ldr r0, [r4, #0]
	ldr r1, _080A36C0
	movs r2, #1
	bl sub_0801623C
	ldr r0, [r4, #0]
	movs r2, #0x81
	lsls r2, r2, #2
	adds r2, r0, r2
	str r2, [sp, #0x14]
	adds r0, r2, #0
	bl sub_08019F60
	ldr r2, [r4, #0]
	ldr r3, [sp, #0x14]
	movs r5, #6
	ldrsh r0, [r3, r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	movs r6, #0xeb
	lsls r6, r6, #1
	adds r0, r2, r6
	movs r5, #0
	strh r1, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x5c
	strh r1, [r0, #0]
	movs r7, #4
	ldrsh r0, [r3, r7]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0xea
	lsls r3, r3, #1
	adds r1, r2, r3
	strh r0, [r1, #0]
	adds r1, r2, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	ldr r0, _080A36C4
	adds r0, #0x90
	ldrh r1, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x48
	strh r1, [r0, #0]
	ldr r0, _080A36C8
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x50]
	str r0, [r2, #0x50]
	strh r5, [r2, #0xc]
	movs r3, #1
	strh r3, [r2, #0]
	movs r0, #5
	strh r0, [r2, #2]
	adds r6, #0x26
	adds r2, r2, r6
	ldrb r1, [r2, #0]
	subs r0, #0x15
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
	ldr r0, [r4, #0]
	ldrh r2, [r0, #2]
	ldr r7, _080A36CC
	adds r1, r0, r7
	strh r2, [r1, #0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r2, _080A36D0
	adds r0, r0, r2
	movs r1, #3
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r0, r3
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	strh r5, [r0, #0xc]
	str r5, [sp, #0x1c]
	movs r6, #0
	str r6, [sp, #0x20]
	mov r9, r4
	movs r7, #0x12
	add r7, sp
	mov r8, r7
	ldr r0, _080A36D4
	str r0, [sp, #0x28]
	b _080A3A98
_080A36B4: .4byte gUnk_030056FC
_080A36B8: .4byte gUnk_03000368
_080A36BC: .4byte gUnk_030056F4
_080A36C0: .4byte gUnk_084A6DB8
_080A36C4: .4byte gUnk_03003170
_080A36C8: .4byte gUnk_03000364
_080A36CC: .4byte 0x00000202
_080A36D0: .4byte 0x000001FD
_080A36D4: .4byte gUnk_03000388
_080A36D8:
	ldr r0, [r5, #0]
	bl sub_0801A0B0
	ldr r0, [r5, #0]
	ldr r1, _080A36F4
	adds r0, r0, r1
	strb r4, [r0, #0]
	ldr r0, [r5, #0]
	ldr r2, _080A36F8
	adds r0, r0, r2
	strb r4, [r0, #0]
	bl sub_080003F0
	b _080A3A98
_080A36F4: .4byte 0x0000022E
_080A36F8: .4byte 0x0000022F
_080A36FC:
	ldr r3, _080A370C
	ldrb r0, [r3, #0]
	cmp r0, #1
	bne _080A3710
	lsls r0, r1, #1
	adds r0, #1
	b _080A3712
	.2byte 0x0000
_080A370C: .4byte gUnk_030003F0
_080A3710:
	adds r0, r1, #1
_080A3712:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r5, _080A3760
	ldr r4, [r5, #0]
	ldr r0, _080A3764
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x14]
	str r1, [r4, #0x14]
	ldr r3, [r0, #0x18]
	str r3, [r4, #0x18]
	ldr r2, _080A3768
	ldrb r0, [r7, #0]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldrb r0, [r7, #0]
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r3, r3, r0
	str r3, [r4, #0x18]
	ldrb r0, [r7, #0]
	cmp r0, #0
	bne _080A3774
	ldr r2, _080A376C
	adds r1, r4, r2
	movs r0, #0x20
	strb r0, [r1, #0]
	ldr r0, [r5, #0]
	ldr r3, _080A3770
	adds r0, r0, r3
	movs r1, #0x28
	b _080A3784
_080A3760: .4byte gUnk_03000368
_080A3764: .4byte gUnk_03000364
_080A3768: .4byte gUnk_08518754
_080A376C: .4byte 0x0000022E
_080A3770: .4byte 0x0000022F
_080A3774:
	ldr r6, _080A379C
	adds r1, r4, r6
	movs r0, #0x20
	strb r0, [r1, #0]
	ldr r0, [r5, #0]
	ldr r7, _080A37A0
	adds r0, r0, r7
	movs r1, #0x10
_080A3784:
	strb r1, [r0, #0]
	ldr r0, _080A37A4
	ldr r0, [r0, #0]
	movs r1, #0x1c
	ands r0, r1
	cmp r0, #0
	beq _080A37A8
	mov r1, r9
	ldr r0, [r1, #0]
	bl sub_0801A0B0
	b _080A37B0
_080A379C: .4byte 0x0000022E
_080A37A0: .4byte 0x0000022F
_080A37A4: .4byte gUnk_030056FC
_080A37A8:
	mov r2, r9
	ldr r0, [r2, #0]
	bl sub_0801A0A4
_080A37B0:
	ldr r7, _080A3824
	ldr r6, _080A3828
	ldrb r0, [r6, #0]
	movs r5, #0x34
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r7
	ldr r2, _080A382C
	ldrh r0, [r2, #0]
	strb r0, [r1, #0x1c]
	ldrh r0, [r2, #0]
	adds r0, #0x10
	ldrb r1, [r6, #0]
	adds r3, r1, #0
	muls r3, r5, r3
	adds r1, r7, #0
	adds r1, #0xc
	adds r3, r3, r1
	ldr r4, [sp, #0x14]
	adds r4, #0xd6
	ldrh r2, [r4, #0]
	lsls r2, r2, #5
	ldr r1, [r3, #0]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_0800CD8C
	adds r1, r0, #0
	str r4, [sp, #0x2c]
	cmp r1, #0
	bne _080A3810
	ldrb r0, [r6, #0]
	muls r0, r5, r0
	adds r0, r0, r7
	mov r4, r9
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r1, [sp, #0]
	mov r1, sl
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
_080A3810:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A3830
	bl sub_08097FF8
	b _080A3842
	.2byte 0x0000
_080A3824: .4byte gUnk_03000380
_080A3828: .4byte gUnk_030003F0
_080A382C: .4byte gUnk_030003E8
_080A3830:
	mov r5, r9
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080A3842:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, [sp, #0x1c]
	cmp r6, #0
	beq _080A3924
	adds r0, r6, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x1c]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080A3860
	b _080A39D4
_080A3860:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080A386A
	b _080A39D4
_080A386A:
	bl sub_0800CC98
	cmp r0, #0
	beq _080A3874
	b _080A39D4
_080A3874:
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	beq _080A3880
	b _080A39D4
_080A3880:
	ldr r0, _080A3918
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r5, [sp, #0]
	str r5, [sp, #4]
	add r2, sp, #0x10
	mov r3, r8
	bl sub_0800BC08
	add r0, sp, #0x10
	movs r7, #0
	ldrsh r0, [r0, r7]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	mov r6, r9
	ldr r2, [r6, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	ldr r7, _080A391C
	ldrb r2, [r7, #0]
	movs r4, #0x34
	muls r2, r4, r2
	ldr r6, _080A3920
	adds r2, r2, r6
	str r2, [sp, #4]
	adds r4, r6, #0
	subs r4, #0x1c
	ldrb r2, [r7, #0]
	movs r7, #0x34
	muls r2, r7, r2
	ldr r6, [sp, #0x28]
	adds r2, r6, r2
	ldr r2, [r2, #0]
	str r2, [sp, #8]
	ldr r7, _080A391C
	ldrb r2, [r7, #0]
	movs r6, #0x34
	muls r2, r6, r2
	adds r2, r2, r4
	ldr r2, [r2, #0]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08007870
	adds r4, r0, #0
	mov r7, r9
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r5, [sp, #0]
	str r5, [sp, #4]
	add r2, sp, #0x10
	mov r3, r8
	bl sub_0800BC08
	add r0, sp, #0x10
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [r4, #8]
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	b _080A39D2
	.2byte 0x0000
_080A3918: .4byte gUnk_03000364
_080A391C: .4byte gUnk_030003F0
_080A3920: .4byte gUnk_0300039C
_080A3924:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A39D4
	bl sub_0800CC98
	cmp r0, #0
	bne _080A39D4
	bl sub_0800CD34
	cmp r0, #0
	bne _080A39D4
	ldr r0, _080A3A44
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r5, [sp, #0x1c]
	str r5, [sp, #0]
	str r5, [sp, #4]
	add r2, sp, #0x10
	mov r3, r8
	bl sub_0800BC08
	add r0, sp, #0x10
	movs r6, #0
	ldrsh r0, [r0, r6]
	mov r7, r8
	movs r2, #0
	ldrsh r1, [r7, r2]
	adds r1, #1
	mov r3, r9
	ldr r2, [r3, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	ldr r4, _080A3A48
	ldrb r2, [r4, #0]
	movs r5, #0x34
	muls r2, r5, r2
	ldr r6, _080A3A4C
	adds r2, r2, r6
	str r2, [sp, #4]
	adds r4, r6, #0
	subs r4, #0x1c
	ldr r7, _080A3A48
	ldrb r2, [r7, #0]
	muls r2, r5, r2
	ldr r5, _080A3A50
	adds r2, r2, r5
	ldr r2, [r2, #0]
	str r2, [sp, #8]
	ldrb r2, [r7, #0]
	movs r6, #0x34
	muls r2, r6, r2
	adds r2, r2, r4
	ldr r2, [r2, #0]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08007870
	adds r4, r0, #0
	mov r7, r9
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x1c]
	str r2, [sp, #0]
	str r2, [sp, #4]
	add r2, sp, #0x10
	mov r3, r8
	bl sub_0800BC08
	add r0, sp, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	str r0, [r4, #8]
	mov r5, r8
	movs r6, #0
	ldrsh r0, [r5, r6]
_080A39D2:
	str r0, [r4, #0xc]
_080A39D4:
	mov r7, r9
	ldr r0, [r7, #0]
	ldr r0, [r0, #0x4c]
	ldr r2, _080A3A54
	cmp r0, #0
	beq _080A39F0
	ldr r1, [sp, #0x18]
	cmp r1, r0
	beq _080A39F0
	str r0, [sp, #0x18]
	movs r3, #0xa
	str r3, [sp, #0x20]
	movs r4, #0
	str r4, [sp, #0x24]
_080A39F0:
	ldr r5, [sp, #0x20]
	cmp r5, #0
	beq _080A3A5C
	bl sub_0800CC98
	cmp r0, #0
	bne _080A3A1E
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A3A1E
	bl sub_0800CD34
	cmp r0, #0
	bne _080A3A1E
	mov r6, r9
	ldr r0, [r6, #0]
	ldr r7, [sp, #0x24]
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	ldr r1, [sp, #0x18]
	bl sub_0801A120
_080A3A1E:
	movs r0, #2
	ldr r1, [sp, #0x20]
	ands r0, r1
	cmp r0, #0
	beq _080A3A34
	ldr r2, [sp, #0x24]
	lsls r0, r2, #0x10
	ldr r3, _080A3A58
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
_080A3A34:
	ldr r0, [sp, #0x20]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r2, _080A3A54
	b _080A3A64
	.2byte 0x0000
_080A3A44: .4byte gUnk_03000364
_080A3A48: .4byte gUnk_030003F0
_080A3A4C: .4byte gUnk_0300039C
_080A3A50: .4byte gUnk_03000388
_080A3A54: .4byte gUnk_03000368
_080A3A58: .4byte 0xFFFF0000
_080A3A5C:
	movs r4, #0
	str r4, [sp, #0x18]
	ldr r0, [r2, #0]
	str r4, [r0, #0x4c]
_080A3A64:
	ldr r1, _080A3A90
	ldrb r0, [r1, #0]
	cmp r0, #1
	bne _080A3A7A
	ldr r0, [r2, #0]
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080A3A7A
	movs r0, #0
	strb r0, [r1, #0]
_080A3A7A:
	mov r5, r9
	ldr r0, [r5, #0]
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080A3A94
	bl sub_080003F0
	b _080A3B5A
	.2byte 0x0000
_080A3A90: .4byte gUnk_030003EA
_080A3A94:
	bl sub_080003F0
_080A3A98:
	mov r6, r9
	ldr r0, [r6, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xa
	bne _080A3AAC
	ldr r7, [sp, #0x1c]
	cmp r7, #0
	bne _080A3AAC
	movs r0, #8
	str r0, [sp, #0x1c]
_080A3AAC:
	bl sub_08058DB0
	adds r4, r0, #0
	cmp r4, #0
	bne _080A3B2E
	ldr r5, _080A3AD4
	ldr r0, [r5, #0]
	bl sub_0801C8F0
	ldr r1, [r5, #0]
	ldr r6, _080A3AD8
	adds r0, r1, r6
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _080A3B06
	cmp r0, #3
	bgt _080A3ADC
	cmp r0, #1
	beq _080A3AE2
	b _080A3B2E
_080A3AD4: .4byte gUnk_03000368
_080A3AD8: .4byte 0x000001FD
_080A3ADC:
	cmp r0, #8
	beq _080A3B2C
	b _080A3B2E
_080A3AE2:
	strh r4, [r1, #0xc]
	ldrh r0, [r1, #0]
	bl sub_080682B8
	cmp r0, #0
	beq _080A3B2E
	ldr r1, [r5, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	adds r1, r1, r6
	strb r0, [r1, #0]
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0]
	bl sub_08065E38
	b _080A3B2E
_080A3B06:
	bl sub_08056F78
	cmp r0, #0
	beq _080A3B2E
	ldr r0, [r5, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #8
	strb r1, [r0, #0]
	ldr r0, [r5, #0]
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0, #0]
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0]
	bl sub_08068330
	b _080A3B2E
_080A3B2C:
	strh r4, [r1, #0xc]
_080A3B2E:
	ldr r6, _080A3C38
	ldrb r1, [r6, #0]
	adds r0, r1, #0
	adds r7, r6, #0
	cmp r0, #0xff
	beq _080A3B3C
	b _080A36FC
_080A3B3C:
	ldr r5, _080A3C3C
	ldr r0, [r5, #0]
	bl sub_08019CE8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080A3B4E
	b _080A36D8
_080A3B4E:
	ldr r0, _080A3C40
	ldrb r0, [r0, #0]
	strb r0, [r6, #0]
	ldr r4, [sp, #0x14]
	adds r4, #0xd6
	str r4, [sp, #0x2c]
_080A3B5A:
	ldr r5, _080A3C3C
	ldr r0, [r5, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	ldr r1, _080A3C44
	movs r0, #0
	strb r0, [r1, #0]
	ldr r4, _080A3C38
	ldrb r0, [r4, #0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r6, [r5, #0]
	mov ip, r6
	mov r1, ip
	adds r1, #0x6c
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #0]
	subs r1, #2
	strh r0, [r1, #0]
	ldr r6, _080A3C48
	strb r2, [r6, #0]
	ldr r0, _080A3C4C
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x14]
	mov r7, ip
	str r1, [r7, #0x14]
	ldr r3, [r0, #0x18]
	str r3, [r7, #0x18]
	ldr r2, _080A3C50
	ldrb r0, [r4, #0]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r1, r1, r0
	mov r0, ip
	str r1, [r0, #0x14]
	ldrb r0, [r4, #0]
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r3, r3, r0
	mov r2, ip
	str r3, [r2, #0x18]
	mov r8, r6
	movs r6, #0x34
	mov r9, r5
	mov r7, sp
	adds r7, #0x12
_080A3BC8:
	mov r3, r8
	ldrb r0, [r3, #0]
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r4, _080A3C54
	adds r1, r1, r4
	ldr r2, _080A3C58
	ldrh r0, [r2, #0]
	strb r0, [r1, #0x1c]
	ldrh r0, [r2, #0]
	adds r0, #0x10
	ldrb r1, [r3, #0]
	adds r3, r1, #0
	muls r3, r6, r3
	adds r1, r4, #0
	adds r1, #0xc
	adds r3, r3, r1
	ldr r5, [sp, #0x2c]
	ldrh r2, [r5, #0]
	lsls r2, r2, #5
	ldr r1, [r3, #0]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_0800CD8C
	adds r1, r0, #0
	cmp r1, #0
	bne _080A3C24
	mov r2, r8
	ldrb r0, [r2, #0]
	muls r0, r6, r0
	adds r0, r0, r4
	mov r4, r9
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r1, [sp, #0]
	mov r1, sl
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
_080A3C24:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A3C5C
	bl sub_08097FF8
	b _080A3C6E
	.2byte 0x0000
_080A3C38: .4byte gUnk_030003F1
_080A3C3C: .4byte gUnk_03000368
_080A3C40: .4byte gUnk_030003F2
_080A3C44: .4byte gUnk_030003EA
_080A3C48: .4byte gUnk_030003F0
_080A3C4C: .4byte gUnk_03000364
_080A3C50: .4byte gUnk_08518754
_080A3C54: .4byte gUnk_03000380
_080A3C58: .4byte gUnk_030003E8
_080A3C5C:
	mov r5, r9
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080A3C6E:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A3D1A
	bl sub_0800CC98
	cmp r0, #0
	bne _080A3D1A
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080A3D1A
	ldr r0, _080A3D20
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r5, [sp, #0]
	str r5, [sp, #4]
	add r2, sp, #0x10
	adds r3, r7, #0
	bl sub_0800BC08
	add r0, sp, #0x10
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r7, r2]
	adds r1, #1
	mov r3, r9
	ldr r2, [r3, #0]
	adds r2, #0x6a
	ldrh r2, [r2, #0]
	mov ip, r2
	str r4, [sp, #0]
	mov r4, r8
	ldrb r2, [r4, #0]
	muls r2, r6, r2
	ldr r4, _080A3D24
	adds r2, r2, r4
	str r2, [sp, #4]
	mov r3, r8
	ldrb r2, [r3, #0]
	muls r2, r6, r2
	subs r4, #0x14
	adds r2, r2, r4
	ldr r2, [r2, #0]
	str r2, [sp, #8]
	ldrb r2, [r3, #0]
	muls r2, r6, r2
	ldr r4, _080A3D28
	adds r2, r2, r4
	ldr r2, [r2, #0]
	str r2, [sp, #0xc]
	mov r2, sl
	mov r3, ip
	bl sub_08007870
	adds r4, r0, #0
	mov r0, r9
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r5, [sp, #0]
	str r5, [sp, #4]
	add r2, sp, #0x10
	adds r3, r7, #0
	bl sub_0800BC08
	add r0, sp, #0x10
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [r4, #8]
	movs r2, #0
	ldrsh r0, [r7, r2]
	str r0, [r4, #0xc]
_080A3D1A:
	bl sub_080003F0
	b _080A3BC8
_080A3D20: .4byte gUnk_03000364
_080A3D24: .4byte gUnk_0300039C
_080A3D28: .4byte gUnk_03000380
	thumb_func_end sub_080A35D0
