	thumb_func_start sub_080A3D2C
sub_080A3D2C: @ 0x080A3D2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r2, _080A3E50
	mov r5, sl
	adds r5, #2
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
	ldr r0, _080A3E54
	mov r8, r0
	mov r1, sl
	lsls r1, r1, #2
	mov r9, r1
	mov r4, r9
	add r4, r8
	ldr r0, _080A3E58
	mov r2, sl
	lsls r1, r2, #1
	add r1, sl
	lsls r1, r1, #3
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r3, #0xb8
	lsls r3, r3, #3
	adds r1, r1, r3
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [r4, #0]
	bl sub_0801A0A4
	ldr r0, [r4, #0]
	ldr r1, _080A3E5C
	adds r2, r5, #0
	bl sub_0801623C
	ldr r0, [r4, #0]
	movs r6, #0x81
	lsls r6, r6, #2
	adds r6, r0, r6
	str r6, [sp, #0x14]
	adds r0, r6, #0
	bl sub_08019F60
	ldr r2, [r4, #0]
	movs r0, #6
	ldrsh r1, [r6, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r3, #0xeb
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r6, #0
	strh r0, [r1, #0]
	adds r2, #0x5c
	strh r0, [r2, #0]
	ldr r2, [r4, #0]
	ldr r1, [sp, #0x14]
	movs r3, #4
	ldrsh r0, [r1, r3]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0xea
	lsls r3, r3, #1
	adds r1, r2, r3
	strh r0, [r1, #0]
	adds r2, #0x5e
	strh r0, [r2, #0]
	ldr r1, [r4, #0]
	ldr r0, _080A3E60
	adds r0, #0x90
	ldrh r0, [r0, #0]
	adds r1, #0x48
	strh r0, [r1, #0]
	ldr r0, [r4, #0]
	strh r6, [r0, #0xc]
	ldr r1, [r4, #0]
	ldr r0, _080A3E64
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x50]
	str r0, [r1, #0x50]
	strh r5, [r1, #0]
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0]
	adds r0, #4
	strh r0, [r1, #2]
	ldr r2, [r4, #0]
	ldrb r0, [r2, #0]
	movs r5, #0xfe
	lsls r5, r5, #1
	adds r2, r2, r5
	movs r1, #0xf
	ands r1, r0
	ldrb r3, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r0, [r4, #0]
	ldrh r1, [r0, #2]
	ldr r2, _080A3E68
	adds r0, r0, r2
	strh r1, [r0, #0]
	ldr r0, [r4, #0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	movs r1, #0xff
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	adds r5, #1
	adds r0, r0, r5
	movs r1, #3
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	subs r2, #4
	adds r0, r0, r2
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	strh r6, [r0, #0xc]
	movs r3, #0
	str r3, [sp, #0x1c]
	movs r5, #0
	str r5, [sp, #0x20]
	mov r6, r9
	str r6, [sp, #0x34]
	adds r7, r4, #0
	ldr r0, _080A3E6C
	mov r9, r0
	movs r1, #0x12
	add r1, sp
	mov r8, r1
	ldr r2, _080A3E70
	str r2, [sp, #0x2c]
	b _080A4220
_080A3E50: .4byte gUnk_030056FC
_080A3E54: .4byte gUnk_03000370
_080A3E58: .4byte gUnk_030056F4
_080A3E5C: .4byte gUnk_084A6DB8
_080A3E60: .4byte gUnk_03003170
_080A3E64: .4byte gUnk_03000364
_080A3E68: .4byte 0x00000202
_080A3E6C: .4byte gUnk_030003F0
_080A3E70: .4byte gUnk_03000388
_080A3E74:
	ldr r0, _080A3E98
	add r0, sl
	strb r4, [r0, #0]
	ldr r0, [r5, #0]
	bl sub_0801A0B0
	ldr r0, [r5, #0]
	ldr r3, _080A3E9C
	adds r0, r0, r3
	strb r4, [r0, #0]
	ldr r0, [r5, #0]
	ldr r5, _080A3EA0
	adds r0, r0, r5
	strb r4, [r0, #0]
	bl sub_080003F0
	b _080A4220
	.2byte 0x0000
_080A3E98: .4byte gUnk_030003EC
_080A3E9C: .4byte 0x0000022E
_080A3EA0: .4byte 0x0000022F
_080A3EA4:
	ldr r1, [r7, #0]
	adds r0, r1, #0
	adds r0, #0x5c
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	beq _080A3EB8
	adds r0, r1, #0
	bl sub_0801A0A4
_080A3EB8:
	mov r1, r9
	ldrb r0, [r1, #0]
	cmp r0, #1
	bne _080A3ECC
	ldrb r0, [r4, #0]
	adds r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	b _080A3ED0
_080A3ECC:
	ldrb r4, [r4, #0]
	str r4, [sp, #0x28]
_080A3ED0:
	ldr r2, [sp, #0x34]
	ldr r3, _080A3F24
	adds r6, r2, r3
	ldr r5, [r6, #0]
	ldr r0, _080A3F28
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x14]
	str r1, [r5, #0x14]
	ldr r0, [r0, #0x18]
	mov ip, r0
	str r0, [r5, #0x18]
	ldr r2, _080A3F2C
	ldr r3, _080A3F30
	add r3, sl
	ldrb r0, [r3, #0]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	ldrb r0, [r3, #0]
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r2, ip
	adds r4, r2, r0
	str r4, [r5, #0x18]
	ldrb r0, [r3, #0]
	cmp r0, #0
	bne _080A3F3C
	ldr r3, _080A3F34
	adds r1, r5, r3
	movs r0, #0x20
	strb r0, [r1, #0]
	ldr r0, [r6, #0]
	ldr r4, _080A3F38
	adds r0, r0, r4
	movs r1, #0x28
	b _080A3F4C
_080A3F24: .4byte gUnk_03000370
_080A3F28: .4byte gUnk_03000364
_080A3F2C: .4byte gUnk_08518754
_080A3F30: .4byte gUnk_030003F4
_080A3F34: .4byte 0x0000022E
_080A3F38: .4byte 0x0000022F
_080A3F3C:
	ldr r0, _080A3FC4
	adds r1, r5, r0
	movs r0, #0x20
	strb r0, [r1, #0]
	ldr r0, [r6, #0]
	ldr r1, _080A3FC8
	adds r0, r0, r1
	movs r1, #0x10
_080A3F4C:
	strb r1, [r0, #0]
	ldr r6, _080A3FCC
	mov r2, r9
	ldrb r0, [r2, #0]
	movs r5, #0x34
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	ldr r2, _080A3FD0
	ldrh r0, [r2, #0]
	strb r0, [r1, #0x1c]
	ldrh r0, [r2, #0]
	adds r0, #0x10
	mov r3, r9
	ldrb r1, [r3, #0]
	adds r3, r1, #0
	muls r3, r5, r3
	adds r1, r6, #0
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
	str r4, [sp, #0x30]
	cmp r1, #0
	bne _080A3FB0
	ldr r4, _080A3FD4
	ldrb r0, [r4, #0]
	muls r0, r5, r0
	adds r0, r0, r6
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r1, [sp, #0]
	ldr r1, [sp, #0x28]
	bl sub_08065370
	ldr r1, [r7, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
_080A3FB0:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A3FD8
	bl sub_08097FF8
	b _080A3FE8
	.2byte 0x0000
_080A3FC4: .4byte 0x0000022E
_080A3FC8: .4byte 0x0000022F
_080A3FCC: .4byte gUnk_03000380
_080A3FD0: .4byte gUnk_030003E8
_080A3FD4: .4byte gUnk_030003F0
_080A3FD8:
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080A3FE8:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r5, [sp, #0x1c]
	cmp r5, #0
	beq _080A40AC
	adds r0, r5, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x1c]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080A4006
	b _080A415C
_080A4006:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080A4010
	b _080A415C
_080A4010:
	bl sub_0800CC98
	cmp r0, #0
	beq _080A401A
	b _080A415C
_080A401A:
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	beq _080A4026
	b _080A415C
_080A4026:
	ldr r0, _080A40A4
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
	movs r6, #0
	ldrsh r0, [r0, r6]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	ldr r2, [r7, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	mov r4, r9
	ldrb r2, [r4, #0]
	movs r6, #0x34
	muls r2, r6, r2
	ldr r4, _080A40A8
	adds r2, r2, r4
	str r2, [sp, #4]
	subs r4, #0x1c
	mov r6, r9
	ldrb r2, [r6, #0]
	movs r6, #0x34
	muls r2, r6, r2
	ldr r6, [sp, #0x2c]
	adds r2, r6, r2
	ldr r2, [r2, #0]
	str r2, [sp, #8]
	mov r6, r9
	ldrb r2, [r6, #0]
	movs r6, #0x34
	muls r2, r6, r2
	adds r2, r2, r4
	ldr r2, [r2, #0]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x28]
	bl sub_08007870
	adds r4, r0, #0
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r5, [sp, #0]
	str r5, [sp, #4]
	b _080A4144
	.2byte 0x0000
_080A40A4: .4byte gUnk_03000364
_080A40A8: .4byte gUnk_0300039C
_080A40AC:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A415C
	bl sub_0800CC98
	cmp r0, #0
	bne _080A415C
	bl sub_0800CD34
	cmp r0, #0
	bne _080A415C
	ldr r0, _080A41C8
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
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	ldr r2, [r7, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	mov r4, r9
	ldrb r2, [r4, #0]
	movs r5, #0x34
	muls r2, r5, r2
	ldr r6, _080A41CC
	adds r2, r2, r6
	str r2, [sp, #4]
	adds r4, r6, #0
	subs r4, #0x1c
	mov r5, r9
	ldrb r2, [r5, #0]
	movs r6, #0x34
	muls r2, r6, r2
	ldr r5, _080A41D0
	adds r2, r2, r5
	ldr r2, [r2, #0]
	str r2, [sp, #8]
	mov r6, r9
	ldrb r2, [r6, #0]
	movs r5, #0x34
	muls r2, r5, r2
	adds r2, r2, r4
	ldr r2, [r2, #0]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x28]
	bl sub_08007870
	adds r4, r0, #0
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r6, [sp, #0x1c]
	str r6, [sp, #0]
	str r6, [sp, #4]
_080A4144:
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
	str r0, [r4, #0xc]
_080A415C:
	ldr r0, [r7, #0]
	ldr r0, [r0, #0x4c]
	ldr r2, _080A41D4
	cmp r0, #0
	beq _080A4176
	ldr r4, [sp, #0x18]
	cmp r4, r0
	beq _080A4176
	str r0, [sp, #0x18]
	movs r5, #0xa
	str r5, [sp, #0x20]
	movs r6, #0
	str r6, [sp, #0x24]
_080A4176:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _080A41DC
	bl sub_0800CC98
	cmp r0, #0
	bne _080A41A2
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A41A2
	bl sub_0800CD34
	cmp r0, #0
	bne _080A41A2
	ldr r0, [r7, #0]
	ldr r1, [sp, #0x24]
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	ldr r1, [sp, #0x18]
	bl sub_0801A120
_080A41A2:
	movs r0, #2
	ldr r2, [sp, #0x20]
	ands r0, r2
	cmp r0, #0
	beq _080A41B8
	ldr r3, [sp, #0x24]
	lsls r0, r3, #0x10
	ldr r4, _080A41D8
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
_080A41B8:
	ldr r0, [sp, #0x20]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r2, _080A41D4
	b _080A41E8
	.2byte 0x0000
_080A41C8: .4byte gUnk_03000364
_080A41CC: .4byte gUnk_0300039C
_080A41D0: .4byte gUnk_03000388
_080A41D4: .4byte gUnk_03000370
_080A41D8: .4byte 0xFFFF0000
_080A41DC:
	movs r5, #0
	str r5, [sp, #0x18]
	ldr r6, [sp, #0x34]
	adds r0, r6, r2
	ldr r0, [r0, #0]
	str r5, [r0, #0x4c]
_080A41E8:
	ldr r0, _080A4218
	mov r3, sl
	adds r1, r3, r0
	ldrb r0, [r1, #0]
	cmp r0, #1
	bne _080A4206
	ldr r4, [sp, #0x34]
	adds r0, r4, r2
	ldr r0, [r0, #0]
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080A4206
	movs r0, #0
	strb r0, [r1, #0]
_080A4206:
	ldr r0, [r7, #0]
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080A421C
	bl sub_080003F0
	b _080A42EE
_080A4218: .4byte gUnk_030003EC
_080A421C:
	bl sub_080003F0
_080A4220:
	mov r5, sl
	lsls r0, r5, #2
	ldr r6, _080A4268
	adds r0, r0, r6
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xa
	bne _080A423A
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _080A423A
	movs r1, #8
	str r1, [sp, #0x1c]
_080A423A:
	bl sub_08058DB0
	adds r5, r0, #0
	cmp r5, #0
	bne _080A42C4
	ldr r2, [sp, #0x34]
	ldr r3, _080A4268
	adds r4, r2, r3
	ldr r0, [r4, #0]
	bl sub_0801C8F0
	ldr r1, [r4, #0]
	ldr r6, _080A426C
	adds r0, r1, r6
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _080A429C
	cmp r0, #3
	bgt _080A4270
	cmp r0, #1
	beq _080A4276
	b _080A42C4
	.2byte 0x0000
_080A4268: .4byte gUnk_03000370
_080A426C: .4byte 0x000001FD
_080A4270:
	cmp r0, #8
	beq _080A42C2
	b _080A42C4
_080A4276:
	strh r5, [r1, #0xc]
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0]
	bl sub_080682B8
	cmp r0, #0
	beq _080A42C4
	ldr r1, [r4, #0]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r0, r1, r5
	ldrb r0, [r0, #0]
	adds r1, r1, r6
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0]
	bl sub_08065E38
	b _080A42C4
_080A429C:
	bl sub_08056F78
	cmp r0, #0
	beq _080A42C4
	ldr r0, [r4, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #8
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0]
	bl sub_08068330
	b _080A42C4
_080A42C2:
	strh r5, [r1, #0xc]
_080A42C4:
	ldr r0, _080A438C
	mov r2, sl
	adds r4, r2, r0
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq _080A42D2
	b _080A3EA4
_080A42D2:
	ldr r3, [sp, #0x34]
	ldr r4, _080A4390
	adds r5, r3, r4
	ldr r0, [r5, #0]
	bl sub_08019CE8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r6, [sp, #0x14]
	adds r6, #0xd6
	str r6, [sp, #0x30]
	cmp r4, #0
	bne _080A42EE
	b _080A3E74
_080A42EE:
	ldr r4, _080A4390
	ldr r0, [sp, #0x34]
	adds r4, r0, r4
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	ldr r0, _080A4394
	add r0, sl
	movs r1, #0
	strb r1, [r0, #0]
	movs r1, #0x14
	str r1, [sp, #0x1c]
	ldr r2, _080A4398
	mov sl, r2
	ldr r3, _080A439C
	mov r9, r3
	movs r5, #0x34
	mov r8, r5
	adds r6, r4, #0
	mov r7, sp
	adds r7, #0x12
_080A431A:
	mov r1, r9
	ldrb r0, [r1, #0]
	mov r1, r8
	muls r1, r0, r1
	add r1, sl
	ldr r2, _080A43A0
	ldrh r0, [r2, #0]
	strb r0, [r1, #0x1c]
	ldrh r0, [r2, #0]
	adds r0, #0x10
	mov r2, r9
	ldrb r1, [r2, #0]
	mov r3, r8
	muls r3, r1, r3
	mov r1, sl
	adds r1, #0xc
	adds r3, r3, r1
	ldr r4, [sp, #0x30]
	ldrh r2, [r4, #0]
	lsls r2, r2, #5
	ldr r1, [r3, #0]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_0800CD8C
	adds r1, r0, #0
	cmp r1, #0
	bne _080A4378
	mov r5, r9
	ldrb r0, [r5, #0]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, sl
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r1, [sp, #0]
	ldr r1, [sp, #0x28]
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
_080A4378:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A43A4
	bl sub_08097FF8
	b _080A43B4
	.2byte 0x0000
_080A438C: .4byte gUnk_030003F8
_080A4390: .4byte gUnk_03000370
_080A4394: .4byte gUnk_030003EC
_080A4398: .4byte gUnk_03000380
_080A439C: .4byte gUnk_030003F0
_080A43A0: .4byte gUnk_030003E8
_080A43A4:
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080A43B4:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #1
	ldr r3, [sp, #0x1c]
	ands r0, r3
	cmp r0, #0
	beq _080A4470
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A4470
	bl sub_0800CC98
	cmp r0, #0
	bne _080A4470
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080A4470
	ldr r0, _080A4504
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
	ldr r2, [r6, #0]
	adds r2, #0x6a
	ldrh r2, [r2, #0]
	mov ip, r2
	str r4, [sp, #0]
	mov r3, r9
	ldrb r2, [r3, #0]
	mov r4, r8
	muls r4, r2, r4
	adds r2, r4, #0
	ldr r4, _080A4508
	adds r2, r2, r4
	str r2, [sp, #4]
	ldrb r2, [r3, #0]
	mov r3, r8
	muls r3, r2, r3
	adds r2, r3, #0
	subs r4, #0x14
	adds r2, r2, r4
	ldr r2, [r2, #0]
	str r2, [sp, #8]
	mov r4, r9
	ldrb r2, [r4, #0]
	mov r3, r8
	muls r3, r2, r3
	adds r2, r3, #0
	add r2, sl
	ldr r2, [r2, #0]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x28]
	mov r3, ip
	bl sub_08007870
	adds r4, r0, #0
	ldr r1, [r6, #0]
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
	movs r5, #0
	ldrsh r0, [r0, r5]
	str r0, [r4, #8]
	movs r1, #0
	ldrsh r0, [r7, r1]
	str r0, [r4, #0xc]
_080A4470:
	bl sub_080003F0
	ldr r0, [sp, #0x1c]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, _080A450C
	ldr r2, [sp, #0x1c]
	cmp r2, r0
	beq _080A4488
	b _080A431A
_080A4488:
	bl sub_080020F4
	ldr r1, _080A4510
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080A44F4
	ldr r0, _080A4514
	ldr r3, [sp, #0x34]
	adds r4, r3, r0
	ldr r0, [r4, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080A44F4
	ldr r0, _080A4518
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x14]
	bl sub_0801E46C
	adds r5, r0, #0
	movs r6, #0x1d
	str r6, [sp, #0x24]
	subs r6, #0x1e
_080A44C6:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r5, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r1, [sp, #0x24]
	lsls r0, r1, #0x10
	ldr r2, _080A451C
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x24]
	asrs r0, r0, #0x10
	cmp r0, r6
	bne _080A44C6
	ldr r0, _080A4518
	ldr r0, [r0, #0]
	adds r1, r5, #0
	bl sub_0801E4CC
_080A44F4:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A4504: .4byte gUnk_03000364
_080A4508: .4byte gUnk_0300039C
_080A450C: .4byte 0x0000FFFF
_080A4510: .4byte gUnk_03003CE0
_080A4514: .4byte gUnk_03000370
_080A4518: .4byte gUnk_030034E0
_080A451C: .4byte 0xFFFF0000
	thumb_func_end sub_080A3D2C
