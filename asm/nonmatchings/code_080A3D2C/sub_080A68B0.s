	thumb_func_start sub_080A68B0
sub_080A68B0: @ 0x080A68B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	ldr r0, _080A694C
	ldr r0, [r0, #0]
	movs r1, #0x81
	lsls r1, r1, #2
	adds r1, r0, r1
	str r1, [sp, #0x50]
	ldr r1, _080A6950
	ldr r4, _080A6954
	ldrh r2, [r4, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r4, #0]
	strb r0, [r1, #0x1c]
	movs r2, #0x80
	str r2, [sp, #0x54]
	movs r3, #0xf0
	str r3, [sp, #0x58]
	movs r0, #0
	str r0, [sp, #0x5c]
	mov r5, sp
	adds r5, #0x4a
	strh r0, [r5, #0]
	add r4, sp, #0x48
	add r2, sp, #0x5c
	ldrh r2, [r2, #0]
	strh r2, [r4, #0]
	movs r0, #0xd2
	lsls r0, r0, #1
	bl sub_0805865C
	ldr r3, [sp, #0x4c]
	lsls r0, r3, #4
	adds r0, r0, r3
	str r0, [sp, #0x60]
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0x64]
	mov r1, sp
	adds r1, #0x46
	str r1, [sp, #0x68]
_080A691E:
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x5c]
	cmp r2, r3
	ble _080A6958
	adds r0, r3, #0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x5c]
	ldr r0, _080A694C
	ldr r0, [r0, #0]
	ldr r6, [r0, #0x14]
	ldr r7, [r0, #0x18]
	ldr r0, [sp, #0x5c]
	cmp r2, r0
	ble _080A6940
	b _080A6B64
_080A6940:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl sub_0805865C
	b _080A6B64
	.2byte 0x0000
_080A694C: .4byte gUnk_03000400
_080A6950: .4byte 0x0005000F
_080A6954: .4byte gUnk_03000404
_080A6958:
	movs r0, #1
	ldr r1, [sp, #0x4c]
	ands r0, r1
	cmp r0, #0
	beq _080A6964
	adds r6, #0xc0
_080A6964:
	ldr r2, [sp, #0x54]
	adds r7, r7, r2
	adds r2, #0x12
	str r2, [sp, #0x54]
	bl sub_080020F4
	asrs r4, r6, #8
	ldr r3, _080A6B90
	mov r9, r3
	movs r1, #0xa6
	lsls r1, r1, #1
	mov r8, r1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	mov r1, r9
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	asrs r2, r7, #8
	adds r2, #0xc
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	mov r1, r9
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
	cmp r0, #0xf
	bls _080A69CC
	b _080A6AE0
_080A69CC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080A69D6
	b _080A6AE0
_080A69D6:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080A69E0
	b _080A6AE0
_080A69E0:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A6AE0
	ldr r0, _080A6B94
	mov sl, r0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _080A6AE0
	bl sub_080020F4
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, r9
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080A6AE0
	bl sub_080020F4
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, r9
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A6AE0
	bl sub_080020F4
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, r9
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080A6AE0
	bl sub_080020F4
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r9
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080A6AE0
	bl sub_080020F4
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, r9
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080A6AE0
	bl sub_080020F4
	mov r3, sl
	ldr r2, [r3, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	ldr r0, _080A6B98
	adds r1, r1, r0
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _080A6AE0
	bl sub_080020F4
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r9
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, r9
	adds r0, #0xb0
	ldr r1, _080A6B9C
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r5, r0, #0
	mov r3, sl
	ldr r4, [r3, #0]
	bl sub_080020F4
	mov r1, r8
	muls r1, r0, r1
	add r1, r9
	adds r0, r4, #0
	bl sub_0801ED8C
	mov r1, r8
	muls r1, r5, r1
	add r1, r9
	adds r1, #0x88
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	bl sub_080020F4
	mov r3, sl
	ldr r2, [r3, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	ldr r0, _080A6B98
	adds r1, r1, r0
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
_080A6AE0:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A6B64
	bl sub_0800CC98
	cmp r0, #0
	bne _080A6B64
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A6B64
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _080A6B64
	lsls r0, r6, #8
	asrs r0, r0, #0x10
	lsls r1, r7, #8
	asrs r1, r1, #0x10
	str r4, [sp, #0]
	str r4, [sp, #4]
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x68]
	bl sub_0800BC08
	ldr r0, _080A6BA0
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x50]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #2
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	ldr r1, [sp, #0x64]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x68]
	movs r2, #0
	ldrsh r1, [r3, r2]
	add r2, sp, #0x48
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #2
	bl sub_08007870
_080A6B64:
	bl sub_080003F0
	bl sub_0800CED8
	cmp r0, #0
	bne _080A6B82
	bl sub_0800CB78
	cmp r0, #0
	bne _080A6B82
	bl sub_0800CD00
	adds r4, r0, #0
	cmp r4, #0
	beq _080A6BA4
_080A6B82:
	bl sub_0800048C
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #8]
	b _080A6BCE
	.2byte 0x0000
_080A6B90: .4byte gUnk_03003CE0
_080A6B94: .4byte gUnk_03000400
_080A6B98: .4byte gUnk_03003DC4
_080A6B9C: .4byte 0x0000FFFE
_080A6BA0: .4byte gUnk_03000404
_080A6BA4:
	ldr r0, [sp, #0x58]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
	ldr r0, _080A6BE0
	ldr r3, [sp, #0x58]
	cmp r3, r0
	beq _080A6BB8
	b _080A691E
_080A6BB8:
	bl sub_080003F0
	ldr r0, _080A6BE4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x50]
	adds r0, #1
	str r0, [r1, #0x50]
	bl sub_0800048C
	adds r1, r0, #0
	str r4, [r1, #8]
_080A6BCE:
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A6BE0: .4byte 0x0000FFFF
_080A6BE4: .4byte gUnk_03000400
	thumb_func_end sub_080A68B0
