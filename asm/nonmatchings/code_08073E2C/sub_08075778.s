	thumb_func_start sub_08075778
sub_08075778: @ 0x08075778
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x170
	str r0, [sp, #0x120]
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14c]
	ldr r0, [sp, #0x120]
	ldrh r0, [r0, #8]
	str r0, [sp, #0x128]
	ldr r1, [sp, #0x120]
	ldr r1, [r1, #0]
	mov sl, r1
	ldr r2, [sp, #0x120]
	ldr r2, [r2, #4]
	str r2, [sp, #0x150]
	ldr r3, [sp, #0x120]
	ldr r1, [r3, #0x14]
	ldrb r4, [r3, #0x14]
	str r4, [sp, #0x134]
	ldr r6, [r3, #0x10]
	str r6, [sp, #0x140]
	movs r2, #0
	movs r5, #0x83
	lsls r5, r5, #1
	add r5, sp
	strh r2, [r5, #0]
	add r4, sp, #0x104
	strh r2, [r4, #0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	negs r1, r1
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x158]
	ldr r1, _08075860
	movs r3, #1
	negs r3, r3
	str r2, [sp, #0]
	add r0, sp, #8
	bl sub_08065158
	ldr r0, [sp, #0x120]
	ldr r1, [r0, #0]
	add r0, sp, #0x28
	strb r1, [r0, #0]
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	ldr r0, _08075864
	adds r1, r1, r0
	mov r8, r1
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x138]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [sp, #0x13c]
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x148]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x12c]
	ldr r1, [sp, #0x14c]
	cmp sl, r1
	bne _08075874
	mov r0, r8
	adds r0, #0xdc
	ldrh r0, [r0, #0]
	str r0, [sp, #0x130]
	bl sub_0805AD18
	adds r1, r0, #0
	add r0, sp, #0x3c
	movs r2, #0xc4
	bl memcpy
	add r2, sp, #0xf8
	ldrh r0, [r2, #0]
	cmp r0, #0
	bne _0807584A
	ldr r0, _08075868
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #0x77
	ldrb r0, [r1, #0]
	strh r0, [r2, #0]
_0807584A:
	ldr r2, [sp, #0x134]
	cmp r2, #0
	beq _0807586C
	mov r3, r8
	movs r4, #0x3a
	ldrsh r1, [r3, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0x154]
	b _08075874
	.2byte 0x0000
_08075860: .4byte 0x0005001E
_08075864: .4byte gUnk_03003CE0
_08075868: .4byte gUnk_030034E0
_0807586C:
	mov r6, r8
	movs r0, #0x3a
	ldrsh r6, [r6, r0]
	str r6, [sp, #0x154]
_08075874:
	ldr r1, [sp, #0x128]
	cmp r1, #3
	bls _080758E0
	movs r2, #0
	mov r9, r2
	mov r3, r8
	adds r3, #0xb2
	str r3, [sp, #0x16c]
	mov r4, sl
	lsls r4, r4, #2
	str r4, [sp, #0x168]
	ldr r0, _080758D4
	ldr r2, [r0, #0]
	ldr r3, _080758D8
_08075890:
	movs r0, #1
	mov r6, r9
	lsls r0, r6
	ands r0, r2
	cmp r0, #0
	beq _080758BA
	lsls r0, r6, #1
	add r0, r9
	lsls r0, r0, #3
	subs r0, r0, r6
	lsls r0, r0, #5
	ldr r1, [r3, #0]
	adds r1, r1, r0
	str r1, [sp, #0x124]
	ldrh r0, [r1, #0xc]
	cmp r0, #0xb
	beq _080758BA
	ldrh r0, [r1, #2]
	ldr r1, [sp, #0x128]
	cmp r0, r1
	beq _080758C8
_080758BA:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r0, #4
	bls _08075890
_080758C8:
	mov r2, r9
	cmp r2, #4
	bls _08075934
	ldr r3, _080758DC
	str r3, [sp, #0x128]
	b _08075934
_080758D4: .4byte gUnk_030056FC
_080758D8: .4byte gUnk_030056F4
_080758DC: .4byte 0x0000FFFF
_080758E0:
	bl sub_08002164
	adds r7, r0, #0
	movs r4, #0
	mov r9, r4
	mov r6, r8
	adds r6, #0xb2
	str r6, [sp, #0x16c]
	mov r0, sl
	lsls r0, r0, #2
	str r0, [sp, #0x168]
	cmp r9, r7
	bhs _08075930
	ldr r6, _08075994
	ldrh r0, [r6, #0]
	ldr r1, [sp, #0x128]
	cmp r0, r1
	beq _08075926
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r6, #0
_0807590A:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r9, r7
	bhs _08075930
	mov r0, r9
	muls r0, r2, r0
	adds r6, r0, r1
	ldrh r0, [r6, #0]
	ldr r3, [sp, #0x128]
	cmp r0, r3
	bne _0807590A
_08075926:
	cmp r9, r7
	bhs _08075930
	ldr r4, [sp, #0x128]
	cmp r4, sl
	bne _08075934
_08075930:
	ldr r6, _08075998
	str r6, [sp, #0x128]
_08075934:
	ldr r0, _08075998
	ldr r1, [sp, #0x128]
	cmp r1, r0
	beq _08075A2C
	cmp r1, #3
	bls _080759A0
	ldr r2, [sp, #0x124]
	ldr r0, [r2, #0x14]
	ldr r3, [sp, #0x138]
	subs r0, r0, r3
	lsrs r0, r0, #8
	add r2, sp, #0x100
	strh r0, [r2, #0]
	ldr r4, [sp, #0x124]
	ldr r1, [r4, #0x18]
	ldr r6, [sp, #0x13c]
	subs r1, r1, r6
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	movs r0, #0x81
	lsls r0, r0, #1
	add r0, sp
	strh r1, [r0, #0]
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x18
	adds r1, r6, #0
	cmp r1, #0x80
	ble _08075982
	ldr r4, _0807599C
	adds r0, r4, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08075982:
	adds r3, r6, #0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08075A0E
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	b _08075A0A
_08075994: .4byte gUnk_03003CE0
_08075998: .4byte 0x0000FFFF
_0807599C: .4byte 0xFFFFFF00
_080759A0:
	ldr r1, _08075A24
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r3, [sp, #0x128]
	muls r0, r3, r0
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r1, r1, r4
	adds r0, r0, r1
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldr r6, [sp, #0x138]
	asrs r1, r6, #8
	subs r0, r0, r1
	add r3, sp, #0x100
	strh r0, [r3, #0]
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldr r2, [sp, #0x13c]
	asrs r0, r2, #8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x81
	lsls r0, r0, #1
	add r0, sp
	strh r1, [r0, #0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x18
	adds r1, r6, #0
	cmp r1, #0x80
	ble _080759FA
	ldr r6, _08075A28
	adds r0, r6, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080759FA:
	adds r3, r6, #0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08075A0E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
_08075A0A:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08075A0E:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _08075A40
	ldr r2, _08075A28
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08075A40
_08075A24: .4byte gUnk_03003CE0
_08075A28: .4byte 0xFFFFFF00
_08075A2C:
	ldr r1, _08075B04
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0, #0]
_08075A40:
	ldr r0, _08075B08
	ldr r6, [sp, #0x128]
	cmp r6, r0
	bne _08075A4E
	ldr r0, [sp, #0x120]
	ldrh r0, [r0, #8]
	str r0, [sp, #0x128]
_08075A4E:
	ldr r5, _08075B0C
	lsls r6, r3, #0x10
	asrs r4, r6, #0x10
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	movs r2, #0x2d
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	ldr r3, [sp, #0x138]
	adds r3, r3, r0
	str r3, [sp, #0x138]
	lsls r4, r4, #1
	adds r4, r4, r5
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #1
	movs r2, #0x2d
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	ldr r3, [sp, #0x13c]
	adds r3, r3, r0
	str r3, [sp, #0x13c]
	ldr r4, [sp, #0x16c]
	ldrh r0, [r4, #0]
	str r6, [sp, #0x164]
	cmp r0, #1
	bhs _08075AAC
_08075A96:
	mov r6, r8
	ldrh r0, [r6, #0x20]
	cmp r0, #0xa
	bne _08075AA0
	b _080760B8
_08075AA0:
	bl sub_080003F0
	ldr r1, [sp, #0x16c]
	ldrh r0, [r1, #0]
	cmp r0, #1
	blo _08075A96
_08075AAC:
	mov r2, r8
	ldrh r0, [r2, #0x20]
	cmp r0, #0xd
	beq _08075ACA
	bl sub_0800CCCC
	cmp r0, #0
	bne _08075ACA
	bl sub_0800CD34
	cmp r0, #0
	bne _08075ACA
	movs r0, #0x17
	bl sub_0805865C
_08075ACA:
	ldr r3, [sp, #0x14c]
	cmp sl, r3
	bne _08075AE2
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	ldr r1, _08075B10
	adds r0, r0, r1
	bl sub_0801FD64
_08075AE2:
	ldr r6, [sp, #0x140]
	lsls r0, r6, #4
	adds r0, r0, r6
	movs r1, #0xa
	bl __divsi3
	adds r0, #9
	str r0, [sp, #0x144]
	movs r0, #0x8c
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x15c]
	movs r1, #0x8e
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x160]
	b _0807608E
_08075B04: .4byte gUnk_0847AD0A
_08075B08: .4byte 0x0000FFFF
_08075B0C: .4byte gUnk_080B9704
_08075B10: .4byte gUnk_03003CE0
_08075B14:
	movs r5, #0
	add r1, sp, #0x108
	ldr r2, [sp, #0x138]
	str r2, [r1, #0]
	ldr r3, [sp, #0x13c]
	str r3, [r1, #4]
	ldr r3, _08075B54
	ldr r2, _08075B58
	ldr r0, _08075B5C
	ldr r4, [sp, #0x15c]
	str r0, [r4, #0]
	ldr r6, [sp, #0x128]
	cmp r6, #3
	bls _08075B32
	b _08075D26
_08075B32:
	ldr r1, [sp, #0x160]
	ldr r0, [r1, #0]
	ands r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	ldr r2, [sp, #0x160]
	str r0, [r2, #0]
	bl sub_08002164
	adds r7, r0, #0
	mov r9, r5
	b _08075D10
	.2byte 0x0000
_08075B54: .4byte 0xFFFF0000
_08075B58: .4byte 0x0000FFFF
_08075B5C: .4byte 0x00080008
_08075B60:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r9
	muls r1, r0, r1
	ldr r0, _08075C74
	adds r6, r1, r0
	adds r0, r6, #0
	adds r0, #0x68
	mov r1, r8
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bne _08075B7E
	b _08075D06
_08075B7E:
	cmp r0, #0
	bne _08075B84
	b _08075D06
_08075B84:
	bl sub_0800CD8C
	cmp r0, #0
	beq _08075B8E
	b _08075EF8
_08075B8E:
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r2, r6, r3
	ldr r1, [r2, #0]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _08075BA2
	b _08075D06
_08075BA2:
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	add r1, sp, #0x110
	str r0, [r1, #0]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [r1, #4]
	add r0, sp, #0x108
	add r2, sp, #0x118
	add r3, sp, #0x11c
	bl sub_08021FE0
	cmp r0, #0
	bne _08075BC6
	b _08075D06
_08075BC6:
	ldrh r0, [r6, #0x20]
	movs r2, #0
	cmp r0, #0xb
	beq _08075BEC
	adds r0, r6, #0
	adds r0, #0xf8
	ldr r4, [sp, #0x168]
	adds r0, r0, r4
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x130]
	cmp r0, r1
	beq _08075BEC
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08075BEC
	movs r2, #1
_08075BEC:
	cmp r2, #0
	bne _08075BF2
	b _08075D06
_08075BF2:
	movs r2, #0x3a
	ldrsh r1, [r6, r2]
	ldr r0, [sp, #0x154]
	bl sub_080223A4
	cmp r0, #0
	beq _08075C7C
	ldr r3, [sp, #0x158]
	cmp r3, #0
	beq _08075C22
	mov r1, sp
	adds r1, #0xe5
	ldrb r0, [r1, #0]
	adds r0, #0x18
	strb r0, [r1, #0]
	ldrh r0, [r6, #0]
	bl sub_08022100
	mov r4, r8
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0x30]
_08075C22:
	ldr r0, [sp, #0x14c]
	cmp sl, r0
	bne _08075C60
	mov r1, r8
	ldrh r5, [r1, #0x20]
	add r2, sp, #0x12c
	ldrh r2, [r2, #0]
	strh r2, [r1, #0x20]
	ldrh r4, [r1, #0x26]
	add r3, sp, #0x134
	ldrh r3, [r3, #0]
	strh r3, [r1, #0x26]
	mov r0, r8
	adds r1, r6, #0
	add r2, sp, #0x3c
	movs r3, #0
	bl sub_0801F79C
	mov r0, r8
	strh r5, [r0, #0x20]
	strh r4, [r0, #0x26]
	ldrh r1, [r0, #0]
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r1, [sp, #0x130]
	str r1, [r0, #0]
	movs r0, #0x1a
	bl sub_0805865C
_08075C60:
	ldr r2, [sp, #0x158]
	cmp r2, #0
	beq _08075D04
	mov r3, r8
	ldr r0, [r3, #0x30]
	ldr r1, _08075C78
	ands r0, r1
	str r0, [r3, #0x30]
	b _08075D04
	.2byte 0x0000
_08075C74: .4byte gUnk_03003CE0
_08075C78: .4byte 0xFFDFFFFF
_08075C7C:
	bl sub_0800086C
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08075CC6
	ldr r4, [sp, #0x14c]
	cmp sl, r4
	bne _08075D04
	mov r0, r8
	ldrh r5, [r0, #0x20]
	add r1, sp, #0x12c
	ldrh r1, [r1, #0]
	strh r1, [r0, #0x20]
	ldrh r4, [r0, #0x26]
	add r2, sp, #0x134
	ldrh r2, [r2, #0]
	strh r2, [r0, #0x26]
	adds r1, r6, #0
	add r2, sp, #0x3c
	movs r3, #1
	bl sub_0801F79C
	movs r0, #0x1a
	bl sub_0805865C
	mov r3, r8
	strh r5, [r3, #0x20]
	strh r4, [r3, #0x26]
	ldrh r1, [r3, #0]
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r4, [sp, #0x130]
	str r4, [r0, #0]
	b _08075D04
_08075CC6:
	bl sub_080020F4
	cmp sl, r0
	bne _08075D04
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	adds r1, r6, #0
	adds r1, #0x90
	ldr r1, [r1, #0]
	bl sub_080223F4
	mov r0, r8
	ldrh r1, [r0, #0]
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r1, [sp, #0x130]
	str r1, [r0, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _08075D04
	bl sub_0800CD34
	cmp r0, #0
	bne _08075D04
	movs r0, #0x55
	bl sub_0805865C
_08075D04:
	movs r5, #1
_08075D06:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
_08075D10:
	cmp r9, r7
	blo _08075D16
	b _08075EF8
_08075D16:
	cmp sl, r9
	beq _08075D06
	bl sub_0800CDF8
	cmp r0, #0
	bne _08075D24
	b _08075B60
_08075D24:
	b _08075EF8
_08075D26:
	movs r2, #0
	mov r9, r2
	add r4, sp, #0x11c
	b _08075EC4
_08075D2E:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08075D38
	b _08075EF8
_08075D38:
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r6, r3
	mov r1, r8
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bne _08075D4C
	b _08075EBA
_08075D4C:
	cmp r0, #0
	bne _08075D52
	b _08075EBA
_08075D52:
	ldr r1, _08075E24
	adds r0, r6, r1
	ldrb r0, [r0, #0]
	strh r0, [r4, #0]
	ldr r2, _08075E28
	adds r0, r6, r2
	ldrb r0, [r0, #0]
	strh r0, [r4, #2]
	adds r1, r6, #0
	adds r1, #0x14
	add r0, sp, #0x108
	add r2, sp, #0x118
	adds r3, r4, #0
	bl sub_08021FE0
	cmp r0, #0
	bne _08075D76
	b _08075EBA
_08075D76:
	ldrh r0, [r6, #0xc]
	movs r2, #0
	cmp r0, #0xb
	beq _08075D8A
	ldr r1, [r6, #0x54]
	ldr r3, [sp, #0x130]
	eors r1, r3
	negs r0, r1
	orrs r0, r1
	lsrs r2, r0, #0x1f
_08075D8A:
	cmp r2, #0
	bne _08075D90
	b _08075EBA
_08075D90:
	ldr r4, _08075E2C
	adds r0, r6, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [sp, #0x154]
	bl sub_080223A4
	cmp r0, #0
	beq _08075E34
	ldr r3, [sp, #0x158]
	cmp r3, #0
	beq _08075DC6
	mov r1, sp
	adds r1, #0xe5
	ldrb r0, [r1, #0]
	adds r0, #0x18
	strb r0, [r1, #0]
	ldrh r0, [r6, #0]
	adds r0, #4
	bl sub_08022100
	mov r4, r8
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0x30]
_08075DC6:
	bl sub_080020F4
	cmp sl, r0
	bne _08075E0E
	mov r0, r8
	ldrh r5, [r0, #0x20]
	add r1, sp, #0x12c
	ldrh r1, [r1, #0]
	strh r1, [r0, #0x20]
	ldrh r4, [r0, #0x26]
	add r2, sp, #0x134
	ldrh r2, [r2, #0]
	strh r2, [r0, #0x26]
	adds r1, r6, #0
	add r2, sp, #0x3c
	movs r3, #0
	bl sub_0801F374
	movs r0, #0x1a
	bl sub_0805865C
	mov r3, r8
	strh r5, [r3, #0x20]
	strh r4, [r3, #0x26]
	adds r0, r6, #0
	adds r0, #0x58
	add r4, sp, #0x14c
	ldrh r4, [r4, #0]
	strh r4, [r0, #0]
	adds r1, r6, #0
	adds r1, #0x5a
	ldr r6, [sp, #0x14c]
	lsls r7, r6
	ldrh r0, [r1, #0]
	orrs r7, r0
	strh r7, [r1, #0]
_08075E0E:
	ldr r0, [sp, #0x158]
	cmp r0, #0
	beq _08075EB6
	mov r1, r8
	ldr r0, [r1, #0x30]
	ldr r1, _08075E30
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x30]
	b _08075EB6
	.2byte 0x0000
_08075E24: .4byte 0x0000022E
_08075E28: .4byte 0x0000022F
_08075E2C: .4byte 0x00000206
_08075E30: .4byte 0xFFDFFFFF
_08075E34:
	bl sub_0800086C
	adds r1, r7, #0
	ands r1, r0
	cmp r1, #0
	bne _08075E8C
	bl sub_080020F4
	cmp sl, r0
	bne _08075EB6
	mov r3, r8
	ldrh r5, [r3, #0x20]
	add r4, sp, #0x12c
	ldrh r4, [r4, #0]
	strh r4, [r3, #0x20]
	ldrh r4, [r3, #0x26]
	add r0, sp, #0x134
	ldrh r0, [r0, #0]
	strh r0, [r3, #0x26]
	mov r0, r8
	adds r1, r6, #0
	add r2, sp, #0x3c
	movs r3, #1
	bl sub_0801F374
	movs r0, #0x1a
	bl sub_0805865C
	mov r1, r8
	strh r5, [r1, #0x20]
	strh r4, [r1, #0x26]
	adds r0, r6, #0
	adds r0, #0x58
	add r2, sp, #0x14c
	ldrh r2, [r2, #0]
	strh r2, [r0, #0]
	adds r1, r6, #0
	adds r1, #0x5a
	ldr r3, [sp, #0x14c]
	lsls r7, r3
	ldrh r0, [r1, #0]
	orrs r7, r0
	strh r7, [r1, #0]
	b _08075EB6
_08075E8C:
	bl sub_080020F4
	cmp sl, r0
	bne _08075EB6
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	bl sub_080223F4
	ldr r4, [sp, #0x130]
	str r4, [r6, #0x54]
	bl sub_0800CCCC
	cmp r0, #0
	bne _08075EB6
	bl sub_0800CD34
	cmp r0, #0
	bne _08075EB6
	movs r0, #0x55
	bl sub_0805865C
_08075EB6:
	movs r5, #1
	b _08075EF8
_08075EBA:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
_08075EC4:
	mov r6, r9
	cmp r6, #4
	bhi _08075EF8
	cmp r5, #0
	bne _08075EF8
	ldr r0, _0807603C
	movs r7, #1
	adds r1, r7, #0
	lsls r1, r6
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _08075EBA
	ldr r1, _08076040
	lsls r0, r6, #1
	add r0, r9
	lsls r0, r0, #3
	subs r0, r0, r6
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r6, r1, r0
	bl sub_0800CD8C
	cmp r0, #0
	bne _08075EF8
	b _08075D2E
_08075EF8:
	ldr r0, [sp, #0x14c]
	cmp sl, r0
	bne _08075F0C
	add r0, sp, #0x108
	add r1, sp, #0x118
	bl sub_0801F99C
	cmp r0, #0
	beq _08075F0C
	movs r5, #1
_08075F0C:
	cmp r5, #0
	beq _08075F12
	b _080760B8
_08075F12:
	ldr r0, [sp, #0x138]
	ldr r1, [sp, #0x13c]
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08075F32
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08075F32
	b _080760B8
_08075F32:
	ldr r5, _08076044
	ldr r1, [sp, #0x164]
	asrs r4, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #0x2d
	muls r0, r3, r0
	movs r1, #0xa
	bl __divsi3
	ldr r6, [sp, #0x138]
	adds r6, r6, r0
	str r6, [sp, #0x138]
	lsls r4, r4, #1
	adds r4, r4, r5
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0x2d
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	ldr r3, [sp, #0x13c]
	adds r3, r3, r0
	str r3, [sp, #0x13c]
	bl sub_0800CC98
	cmp r0, #0
	beq _08075F76
	b _0807608A
_08075F76:
	bl sub_0800CD8C
	cmp r0, #0
	beq _08075F80
	b _0807608A
_08075F80:
	bl sub_0800CCCC
	adds r3, r0, #0
	cmp r3, #0
	beq _08075F8C
	b _0807608A
_08075F8C:
	asrs r5, r6, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r6, [sp, #0x13c]
	asrs r4, r6, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	add r2, sp, #0x100
	movs r3, #0x81
	lsls r3, r3, #1
	add r3, sp
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r6, [sp, #0x148]
	movs r1, #0x40
	orrs r1, r6
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #8
	add r2, sp, #0x104
	movs r3, #0x83
	lsls r3, r3, #1
	add r3, sp
	bl sub_08065370
	ldr r0, _08076048
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	add r4, sp, #0x100
	movs r7, #0x81
	lsls r7, r7, #1
	add r7, sp
	cmp r0, #4
	bne _08075FEE
	bl sub_0800CDC0
	cmp r0, #0
	beq _08075FEE
	movs r5, #0
_08075FEE:
	bl sub_0800CB9C
	cmp r0, #0
	beq _08076058
	ldr r0, _0807604C
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	mov r0, sl
	ands r0, r2
	cmp r1, r0
	bne _0807608A
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r3, r6, #0x10
	asrs r3, r3, #0x10
	lsls r4, r3, #2
	ldr r2, _08076050
	adds r0, r4, r2
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r1, r1, r0
	movs r0, #0
	ldrsh r2, [r7, r0]
	ldr r6, _08076054
	adds r4, r4, r6
	movs r6, #0
	ldrsh r0, [r4, r6]
	adds r2, r2, r0
	adds r3, #0x40
	add r4, sp, #0x104
	ldrh r0, [r4, #0]
	str r0, [sp, #0]
	str r5, [sp, #4]
	add r0, sp, #8
	bl sub_080659BC
	b _0807608A
	.2byte 0x0000
_0807603C: .4byte gUnk_030056FC
_08076040: .4byte gUnk_030056F4
_08076044: .4byte gUnk_080B9704
_08076048: .4byte gUnk_03003170
_0807604C: .4byte gUnk_03002344
_08076050: .4byte gUnk_084EBEBC
_08076054: .4byte gUnk_084EBEBE
_08076058:
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r3, r6, #0x10
	asrs r3, r3, #0x10
	lsls r4, r3, #2
	ldr r2, _080760DC
	adds r0, r4, r2
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r1, r1, r0
	movs r0, #0
	ldrsh r2, [r7, r0]
	ldr r6, _080760E0
	adds r4, r4, r6
	movs r6, #0
	ldrsh r0, [r4, r6]
	adds r2, r2, r0
	adds r3, #0x40
	add r4, sp, #0x104
	ldrh r0, [r4, #0]
	str r0, [sp, #0]
	str r5, [sp, #4]
	add r0, sp, #8
	bl sub_080659BC
_0807608A:
	bl sub_080003F0
_0807608E:
	ldr r0, [sp, #0x144]
	adds r6, r0, #0
	subs r6, #1
	str r6, [sp, #0x144]
	cmp r0, #0
	beq _080760B8
	bl sub_08056E90
	cmp r0, #0
	bne _080760B8
	mov r1, r8
	ldrh r0, [r1, #0x20]
	cmp r0, #0xb
	beq _080760B8
	cmp r0, #0xc
	beq _080760B8
	bl sub_0800D11C
	cmp r0, #0
	bne _080760B8
	b _08075B14
_080760B8:
	ldr r2, _080760E4
	ldr r3, [sp, #0x168]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x150]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x170
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080760DC: .4byte gUnk_084EBEBC
_080760E0: .4byte gUnk_084EBEBE
_080760E4: .4byte gUnk_030063E0
	thumb_func_end sub_08075778
