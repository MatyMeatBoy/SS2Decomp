	thumb_func_start sub_08079948
sub_08079948: @ 0x08079948
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	adds r4, r0, #0
	bl sub_080020F4
	str r0, [sp, #0x68]
	ldr r0, [r4, #8]
	str r0, [sp, #0x4c]
	ldr r0, [r4, #0x14]
	add r6, sp, #0x4c
	str r0, [r6, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #0x5c]
	ldr r4, [r4, #4]
	str r4, [sp, #0x60]
	mov r5, sp
	adds r5, #0x4a
	movs r2, #0
	strh r2, [r5, #0]
	add r4, sp, #0x48
	strh r2, [r4, #0]
	ldr r0, _08079B90
	str r0, [sp, #0x54]
	ldr r1, _08079B94
	str r1, [sp, #0x64]
	ldr r1, _08079B98
	movs r3, #0x80
	lsls r3, r3, #0x18
	str r2, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	bl sub_0800CCCC
	cmp r0, #0
	bne _080799A6
	bl sub_0800CD34
	cmp r0, #0
	bne _080799A6
	movs r0, #0x35
	bl sub_0805865C
_080799A6:
	movs r2, #4
	mov sl, r2
	ldr r4, [sp, #0x5c]
	lsls r4, r4, #2
	str r4, [sp, #0x70]
	mov r1, r8
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
_080799B6:
	bl sub_0800CC98
	cmp r0, #0
	bne _080799F4
	bl sub_0800CD8C
	cmp r0, #0
	bne _080799F4
	bl sub_0800CCCC
	cmp r0, #0
	bne _080799F4
	add r0, sp, #0x44
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sp
	adds r1, #0x46
	movs r4, #0
	ldrsh r1, [r1, r4]
	str r6, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #8
	add r4, sp, #0x48
	ldrh r3, [r4, #0]
	bl sub_08007870
_080799F4:
	bl sub_080003F0
	mov r0, sl
	movs r1, #1
	negs r1, r1
	add sl, r1
	cmp r0, #0
	bne _080799B6
	ldr r1, _08079B9C
	movs r3, #0x80
	lsls r3, r3, #0x18
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	movs r2, #0xb4
	mov sl, r2
	bl sub_0800CCCC
	cmp r0, #0
	bne _08079A44
	bl sub_0800CD34
	cmp r0, #0
	bne _08079A44
	movs r0, #0xbd
	lsls r0, r0, #1
	bl sub_0805865C
_08079A44:
	mov r0, sl
	movs r4, #1
	negs r4, r4
	add sl, r4
	cmp r0, #0
	bne _08079A52
	b _08079C94
_08079A52:
	add r0, sp, #0x58
	mov r9, r0
_08079A56:
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x5c]
	cmp r1, r2
	beq _08079A78
	bl sub_08002204
	add r7, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	mov r4, sl
	subs r4, #1
	str r4, [sp, #0x6c]
	cmp r0, #0
	beq _08079B10
	ldr r0, [sp, #0x5c]
	cmp r0, #3
	bls _08079B10
_08079A78:
	add r0, sp, #0x4c
	add r1, sp, #0x54
	movs r2, #0xa
	bl sub_0801FB14
	movs r5, #0
	add r7, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	mov r1, sl
	subs r1, #1
	str r1, [sp, #0x6c]
	add r2, sp, #0x54
	mov r8, r2
_08079A94:
	ldr r0, _08079BA0
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _08079B06
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r4, _08079BA4
	ldr r1, [r4, #0]
	adds r4, r1, r0
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08079B06
	ldr r0, [r4, #0x54]
	ldr r2, [sp, #0x64]
	cmp r0, r2
	beq _08079B06
	adds r1, #0x52
	adds r0, r4, r1
	ldrb r2, [r0, #0]
	ldr r1, _08079BA8
	ldr r0, [sp, #0x58]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x58]
	ldr r2, _08079BAC
	adds r1, r4, r2
	ldrb r2, [r1, #0]
	lsls r2, r2, #0x10
	ldr r1, _08079BB0
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x58]
	adds r1, r4, #0
	adds r1, #0x14
	add r0, sp, #0x4c
	mov r2, r8
	add r3, sp, #0x58
	bl sub_08021FE0
	cmp r0, #0
	beq _08079B06
	add r0, sp, #0x4c
	adds r1, r4, #0
	movs r2, #0xa
	bl sub_0801F1C4
	ldr r0, [sp, #0x64]
	str r0, [r4, #0x54]
_08079B06:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08079A94
_08079B10:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08079BB4
	adds r4, r1, r0
	ldrh r1, [r4, #0x20]
	cmp r1, #0xe
	beq _08079BF6
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08079BF6
	movs r2, #0x84
	lsls r2, r2, #1
	adds r5, r4, r2
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x64]
	cmp r0, r2
	beq _08079BF6
	cmp r1, #0xb
	beq _08079BF6
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08079BF6
	bl sub_0800CCCC
	cmp r0, #0
	bne _08079BB8
	bl sub_0800CDF8
	cmp r0, #0
	bne _08079BB8
	bl sub_0800D1B0
	cmp r0, #0
	bne _08079BB8
	movs r0, #0x10
	mov r1, r9
	strh r0, [r1, #2]
	strh r0, [r1, #0]
	adds r1, r4, #0
	adds r1, #0x8c
	add r0, sp, #0x4c
	add r2, sp, #0x54
	mov r3, r9
	bl sub_08021FE0
	cmp r0, #0
	beq _08079BF6
	movs r0, #1
	movs r1, #0xa
	movs r2, #1
	bl sub_08029CEC
	ldr r2, [sp, #0x64]
	str r2, [r5, #0]
	b _08079BF6
	.2byte 0x0000
_08079B90: .4byte 0x00180020
_08079B94: .4byte 0x88800000
_08079B98: .4byte 0x000500AF
_08079B9C: .4byte 0x0005008C
_08079BA0: .4byte gUnk_030056FC
_08079BA4: .4byte gUnk_030056F4
_08079BA8: .4byte 0xFFFF0000
_08079BAC: .4byte 0x0000022F
_08079BB0: .4byte 0x0000FFFF
_08079BB4: .4byte gUnk_03003CE0
_08079BB8:
	bl sub_0800CDC0
	cmp r0, #0
	beq _08079BF6
	ldr r0, _08079CB8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08079BF6
	movs r0, #0x10
	mov r1, r9
	strh r0, [r1, #2]
	strh r0, [r1, #0]
	adds r1, r4, #0
	adds r1, #0x8c
	add r0, sp, #0x4c
	add r2, sp, #0x54
	mov r3, r9
	bl sub_08021FE0
	cmp r0, #0
	beq _08079BF6
	movs r0, #1
	movs r1, #0xa
	movs r2, #1
	bl sub_08029CEC
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r4, [sp, #0x64]
	str r4, [r0, #0]
_08079BF6:
	ldr r0, _08079CBC
	ldr r0, [r0, #0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08079C08
	ldr r0, [sp, #0x64]
	adds r0, #1
	str r0, [sp, #0x64]
_08079C08:
	ldr r0, [sp, #0x4c]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x50]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x4c]
	asrs r0, r0, #8
	ldr r1, [sp, #0x50]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #8
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	bne _08079C84
	bl sub_0800CD8C
	cmp r0, #0
	bne _08079C84
	bl sub_0800CCCC
	cmp r0, #0
	bne _08079C84
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	add r4, sp, #0x48
	ldrh r3, [r4, #0]
	mov r2, r8
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #8
	bl sub_08007870
_08079C84:
	bl sub_080003F0
	mov r0, sl
	ldr r4, [sp, #0x6c]
	mov sl, r4
	cmp r0, #0
	beq _08079C94
	b _08079A56
_08079C94:
	ldr r2, _08079CC0
	ldr r0, [sp, #0x70]
	adds r2, r0, r2
	movs r1, #1
	ldr r4, [sp, #0x60]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08079CB8: .4byte gUnk_030056FC
_08079CBC: .4byte gUnk_03002344
_08079CC0: .4byte gUnk_030063E0
	thumb_func_end sub_08079948
