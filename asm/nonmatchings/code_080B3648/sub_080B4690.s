	thumb_func_start sub_080B4690
sub_080B4690: @ 0x080B4690
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x54]
	movs r4, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sp
	adds r1, #0x46
	str r1, [sp, #0x70]
	add r2, sp, #0x44
	mov r8, r2
	mov r3, sp
	adds r3, #0x4c
	str r3, [sp, #0x74]
	cmp r4, r0
	bge _080B46D2
	adds r5, r0, #0
_080B46C4:
	bl sub_080003F0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blt _080B46C4
_080B46D2:
	ldr r1, _080B471C
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #6
	bl sub_08065158
	ldr r1, [sp, #0x1c]
	adds r1, #0x20
	movs r0, #0x16
	movs r2, #1
	bl sub_08000AF0
	add r1, sp, #0x10
	movs r0, #6
	strb r0, [r1, #0x1d]
	ldr r0, [sp, #0x70]
	strh r4, [r0, #0]
	mov r1, r8
	strh r4, [r1, #0]
	mov sl, r4
	cmp r7, #0
	bne _080B4748
	ldr r0, _080B4720
	ldr r0, [r0, #0]
	movs r2, #8
	ldrsh r0, [r0, r2]
	cmp r0, #7
	bhi _080B4792
	lsls r0, r0, #2
	ldr r1, _080B4724
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080B471C: .4byte 0x00050130
_080B4720: .4byte gUnk_030007B8
_080B4724: .4byte _080B4728
_080B4728:
	.4byte _080B4784
_080B472C: .4byte _080B4784
_080B4730: .4byte _080B4784
_080B4734: .4byte _080B4788
_080B4738: .4byte _080B4788
_080B473C: .4byte _080B478C
_080B4740: .4byte _080B4790
_080B4744: .4byte _080B4790
_080B4748:
	ldr r0, _080B475C
	ldrb r0, [r0, #0]
	cmp r0, #7
	bhi _080B4792
	lsls r0, r0, #2
	ldr r1, _080B4760
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080B475C: .4byte gUnk_030007CA
_080B4760: .4byte _080B4764
_080B4764:
	.4byte _080B4784
_080B4768: .4byte _080B4784
_080B476C: .4byte _080B4784
_080B4770: .4byte _080B4788
_080B4774: .4byte _080B4788
_080B4778: .4byte _080B478C
_080B477C: .4byte _080B4790
_080B4780: .4byte _080B4790
_080B4784:
	movs r6, #0
	b _080B4792
_080B4788:
	movs r6, #1
	b _080B4792
_080B478C:
	movs r6, #2
	b _080B4792
_080B4790:
	movs r6, #3
_080B4792:
	cmp r6, #1
	beq _080B47BC
	cmp r6, #1
	bgt _080B47A0
	cmp r6, #0
	beq _080B47AA
	b _080B47FA
_080B47A0:
	cmp r6, #2
	beq _080B47D4
	cmp r6, #3
	beq _080B47E8
	b _080B47FA
_080B47AA:
	ldr r0, _080B47B4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	ldr r3, _080B47B8
	b _080B47F2
_080B47B4: .4byte gUnk_030007B8
_080B47B8: .4byte 0xFFFFD000
_080B47BC:
	ldr r0, _080B47CC
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	ldr r4, _080B47D0
	adds r4, r0, r4
	str r4, [sp, #0x58]
	b _080B47F6
	.2byte 0x0000
_080B47CC: .4byte gUnk_030007B8
_080B47D0: .4byte 0xFFFFD000
_080B47D4:
	ldr r0, _080B47E4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r2, r0, r2
	str r2, [sp, #0x58]
	b _080B47F6
_080B47E4: .4byte gUnk_030007B8
_080B47E8:
	ldr r0, _080B4908
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	movs r3, #0xc0
	lsls r3, r3, #6
_080B47F2:
	adds r3, r0, r3
	str r3, [sp, #0x58]
_080B47F6:
	ldr r1, [r1, #0x18]
	str r1, [sp, #0x5c]
_080B47FA:
	ldr r0, _080B490C
	ldr r4, [sp, #0x5c]
	adds r0, r4, r0
	str r0, [sp, #0x5c]
	movs r0, #0xa6
	bl sub_0805865C
	movs r0, #0
	bl sub_08096594
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _080B4910
	adds r4, r4, r0
	movs r0, #0
	bl sub_08097A38
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r4, r4, r1
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #0x60]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	subs r0, #0xc
	str r0, [sp, #0x64]
	ldr r2, [sp, #0x74]
	str r2, [sp, #0]
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl sub_08097978
	movs r3, #0xf0
	str r3, [sp, #0x68]
	ldr r4, [sp, #0x54]
	lsls r4, r4, #2
	str r4, [sp, #0x6c]
	mov r9, r8
_080B4854:
	ldr r0, [sp, #0x4c]
	asrs r1, r0, #1
	adds r0, r0, r1
	ldr r1, [sp, #0x58]
	adds r0, r1, r0
	str r0, [sp, #0x58]
	ldr r2, [sp, #0x74]
	ldr r0, [r2, #4]
	asrs r1, r0, #1
	adds r0, r0, r1
	ldr r3, [sp, #0x5c]
	adds r0, r3, r0
	str r0, [sp, #0x5c]
	bl sub_0800CC98
	cmp r0, #0
	bne _080B48F6
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B48F6
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B48F6
	bl sub_0800CD34
	adds r7, r0, #0
	cmp r7, #0
	bne _080B48F6
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0xa
	mov r2, r9
	ldr r3, [sp, #0x70]
	bl sub_08065370
	ldr r4, [sp, #0x58]
	asrs r5, r4, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x5c]
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x48
	movs r2, #0x4a
	add r2, sp
	mov r8, r2
	str r7, [sp, #0]
	str r7, [sp, #4]
	adds r2, r6, #0
	mov r3, r8
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0
	ldrsh r2, [r6, r3]
	mov r4, r8
	movs r3, #0
	ldrsh r1, [r4, r3]
	mov r4, r9
	ldrh r3, [r4, #0]
	str r0, [sp, #0]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #0xa
	bl sub_08007870
_080B48F6:
	mov r0, sl
	cmp r0, #0
	beq _080B4914
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	b _080B4A2E
	.2byte 0x0000
_080B4908: .4byte gUnk_030007B8
_080B490C: .4byte 0xFFFFE700
_080B4910: .4byte gUnk_03003CE0
_080B4914:
	bl sub_080020F4
	ldr r1, [sp, #0x58]
	asrs r4, r1, #8
	ldr r6, _080B4A68
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	ldr r3, [sp, #0x5c]
	asrs r2, r3, #8
	adds r2, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r2, r2, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x17
	bgt _080B4A2E
	bl sub_0800CDF8
	cmp r0, #0
	bne _080B4A2E
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B4A2E
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B4A2E
	ldr r7, _080B4A6C
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _080B4A2E
	bl sub_080020F4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080B4A2E
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080B4A2E
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080B4A2E
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080B4A2E
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080B4A2E
	bl sub_080020F4
	ldr r2, [r7, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r4, r6, #0
	adds r4, #0xe4
	adds r1, r1, r4
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _080B4A2E
	movs r0, #1
	movs r1, #0x1e
	movs r2, #4
	bl sub_08029CEC
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xb0
	ldr r1, _080B4A70
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r2, [r7, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r4
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	movs r4, #0x10
	mov sl, r4
_080B4A2E:
	bl sub_080003F0
	ldr r0, [sp, #0x68]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	ldr r0, _080B4A74
	ldr r1, [sp, #0x68]
	cmp r1, r0
	beq _080B4A46
	b _080B4854
_080B4A46:
	ldr r0, _080B4A78
	ldr r1, [r0, #0]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x54]
	adds r0, r2, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B4A68: .4byte gUnk_03003CE0
_080B4A6C: .4byte gUnk_030007B8
_080B4A70: .4byte 0x0000FFFE
_080B4A74: .4byte 0x0000FFFF
_080B4A78: .4byte gUnk_030007D0
	thumb_func_end sub_080B4690
