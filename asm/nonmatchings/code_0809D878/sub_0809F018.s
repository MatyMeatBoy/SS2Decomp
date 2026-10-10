	thumb_func_start sub_0809F018
sub_0809F018: @ 0x0809F018
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x54]
	ldr r1, _0809F0E0
	ldr r0, _0809F0E4
	ldrh r2, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	bl sub_08002164
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _0809F052
	ldr r1, [sp, #0x60]
	cmp r1, #1
	bne _0809F052
	b _0809F482
_0809F052:
	ldr r2, [sp, #0x54]
	cmp r2, #2
	bne _0809F060
	ldr r3, [sp, #0x60]
	cmp r3, #2
	bhi _0809F060
	b _0809F482
_0809F060:
	ldr r0, [sp, #0x54]
	cmp r0, #3
	bne _0809F06E
	ldr r1, [sp, #0x60]
	cmp r1, #4
	beq _0809F06E
	b _0809F482
_0809F06E:
	mov r4, sp
	adds r4, #0x46
	movs r0, #0
	strh r0, [r4, #0]
	add r5, sp, #0x44
	strh r0, [r5, #0]
	movs r2, #0
	str r2, [sp, #0x6c]
	movs r3, #0xd2
	lsls r3, r3, #1
	str r3, [sp, #0x64]
	movs r0, #0x87
	lsls r0, r0, #1
	str r0, [sp, #0x68]
	movs r0, #0xb5
	bl sub_0805865C
	mov r1, sp
	adds r1, #0x4c
	str r1, [sp, #0x70]
	ldr r2, _0809F0E8
	mov sl, r2
_0809F09A:
	ldr r3, [sp, #0x68]
	cmp r3, #0
	bne _0809F0A2
	b _0809F1DC
_0809F0A2:
	adds r0, r3, #0
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	ldr r0, _0809F0EC
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0x58]
	ldr r0, [r0, #0x18]
	str r0, [sp, #0x5c]
	ldr r2, [sp, #0x60]
	cmp r2, #1
	bne _0809F0F4
	ldr r3, [sp, #0x54]
	cmp r3, #0
	beq _0809F0C6
	b _0809F1C6
_0809F0C6:
	mov r0, sl
	adds r0, #0x8c
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	asrs r6, r0, #0x10
	ldr r1, _0809F0F0
	ldr r0, [r1, #0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	adds r7, r0, #0
	subs r7, #0xc
	b _0809F1C6
	.2byte 0x0000
_0809F0E0: .4byte 0x00050008
_0809F0E4: .4byte gUnk_03000314
_0809F0E8: .4byte gUnk_03003CE0
_0809F0EC: .4byte gUnk_03000310
_0809F0F0: .4byte gUnk_03003D70
_0809F0F4:
	ldr r2, [sp, #0x54]
	cmp r2, #1
	beq _0809F134
	cmp r2, #1
	bgt _0809F104
	cmp r2, #0
	beq _0809F110
	b _0809F1C6
_0809F104:
	ldr r3, [sp, #0x54]
	cmp r3, #2
	beq _0809F160
	cmp r3, #3
	beq _0809F190
	b _0809F1C6
_0809F110:
	bl sub_080020F4
	cmp r0, #0
	bne _0809F12C
	mov r0, sl
	adds r0, #0x8c
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	asrs r6, r0, #0x10
	ldr r1, _0809F128
	b _0809F1AC
	.2byte 0x0000
_0809F128: .4byte gUnk_03003D70
_0809F12C:
	ldr r2, _0809F130
	b _0809F1BA
_0809F130: .4byte gUnk_03003E28
_0809F134:
	bl sub_080020F4
	cmp r0, #1
	bne _0809F154
	movs r0, #0xec
	lsls r0, r0, #1
	add r0, sl
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	asrs r6, r0, #0x10
	ldr r3, _0809F150
	ldr r0, [r3, #0]
	b _0809F1AE
	.2byte 0x0000
_0809F150: .4byte gUnk_03003EBC
_0809F154:
	ldr r0, _0809F15C
	ldr r1, [r0, #0]
	b _0809F1BC
	.2byte 0x0000
_0809F15C: .4byte gUnk_03003F74
_0809F160:
	ldr r1, [sp, #0x60]
	cmp r1, #2
	bls _0809F1C6
	bl sub_080020F4
	cmp r0, #2
	bne _0809F184
	movs r0, #0xc9
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	asrs r6, r0, #0x10
	ldr r2, _0809F180
	ldr r0, [r2, #0]
	b _0809F1AE
_0809F180: .4byte gUnk_03004008
_0809F184:
	ldr r3, _0809F18C
	ldr r1, [r3, #0]
	b _0809F1BC
	.2byte 0x0000
_0809F18C: .4byte gUnk_030040C0
_0809F190:
	ldr r0, [sp, #0x60]
	cmp r0, #4
	bne _0809F1C6
	bl sub_080020F4
	cmp r0, #3
	bne _0809F1B8
	movs r0, #0x8e
	lsls r0, r0, #3
	add r0, sl
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	asrs r6, r0, #0x10
	ldr r1, _0809F1B4
_0809F1AC:
	ldr r0, [r1, #0]
_0809F1AE:
	lsls r0, r0, #8
	asrs r7, r0, #0x10
	b _0809F1C6
_0809F1B4: .4byte gUnk_03004154
_0809F1B8:
	ldr r2, _0809F1D8
_0809F1BA:
	ldr r1, [r2, #0]
_0809F1BC:
	ldrh r0, [r1, #0]
	lsrs r6, r0, #4
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r7, r0, #0x14
_0809F1C6:
	ldr r3, [sp, #0x70]
	str r3, [sp, #0]
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x5c]
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_08097978
	b _0809F1F6
_0809F1D8: .4byte gUnk_0300420C
_0809F1DC:
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, [sp, #0x58]
	adds r0, r1, r0
	str r0, [sp, #0x58]
	ldr r2, [sp, #0x70]
	ldr r1, [r2, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r3, [sp, #0x5c]
	adds r0, r3, r0
	str r0, [sp, #0x5c]
_0809F1F6:
	bl sub_0800CCCC
	cmp r0, #0
	beq _0809F200
	b _0809F30A
_0809F200:
	bl sub_0800CC98
	cmp r0, #0
	beq _0809F20A
	b _0809F30A
_0809F20A:
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809F30A
	bl sub_0800CD34
	mov r8, r0
	cmp r0, #0
	bne _0809F30A
	add r2, sp, #0x10
	ldr r1, _0809F2AC
	ldrh r0, [r1, #0]
	strb r0, [r2, #0x1c]
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r1, _0809F2B0
	ldr r1, [r1, #0]
	ldr r2, _0809F2B4
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	movs r3, #1
	mov r9, r3
	str r3, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0xa
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	ldr r1, [sp, #0x58]
	lsls r0, r1, #8
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x5c]
	lsls r1, r2, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x48
	mov r5, sp
	adds r5, #0x4a
	mov r3, r8
	str r3, [sp, #0]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	mov r8, r5
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq _0809F2E2
	ldr r1, [sp, #0x54]
	cmp r1, #0
	bne _0809F30A
	cmp r0, #0x5a
	bhi _0809F2B8
	mov r2, r9
	ands r0, r2
	cmp r0, #0
	beq _0809F2B8
	movs r3, #0
	ldrsh r0, [r4, r3]
	add r1, sp, #0x44
	ldrh r3, [r1, #0]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0]
	add r1, sp, #0x2c
	str r1, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0xa0
	movs r2, #8
	b _0809F2D4
	.2byte 0x0000
_0809F2AC: .4byte gUnk_03000314
_0809F2B0: .4byte gUnk_03000310
_0809F2B4: .4byte 0x000002DA
_0809F2B8:
	movs r3, #0
	ldrsh r0, [r4, r3]
	add r1, sp, #0x44
	ldrh r3, [r1, #0]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0]
	add r1, sp, #0x2c
	str r1, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0xa0
	movs r2, #0
_0809F2D4:
	bl sub_08007870
	adds r1, r0, #0
	mov r3, r8
	movs r2, #0
	ldrsh r0, [r3, r2]
	b _0809F308
_0809F2E2:
	movs r3, #0
	ldrsh r0, [r4, r3]
	add r1, sp, #0x44
	ldrh r3, [r1, #0]
	ldr r2, [sp, #0x68]
	str r2, [sp, #0]
	add r1, sp, #0x2c
	str r1, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0xa0
	movs r2, #8
	bl sub_08007870
	adds r1, r0, #0
	movs r3, #0
	ldrsh r0, [r5, r3]
_0809F308:
	str r0, [r1, #0xc]
_0809F30A:
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne _0809F316
	movs r0, #0xb6
	bl sub_0805865C
_0809F316:
	ldr r1, [sp, #0x68]
	cmp r1, #0
	beq _0809F31E
	b _0809F46A
_0809F31E:
	bl sub_080020F4
	ldr r2, [sp, #0x58]
	asrs r4, r2, #8
	ldr r3, _0809F420
	mov r8, r3
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	mov r1, r8
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	ldr r2, [sp, #0x5c]
	asrs r1, r2, #8
	adds r1, #0xc
	muls r0, r5, r0
	ldr r3, _0809F424
	adds r0, r0, r3
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, [sp, #0x6c]
	cmp r3, #0
	bne _0809F46A
	cmp r0, #0xb
	bhi _0809F46A
	bl sub_0800CDF8
	cmp r0, #0
	bne _0809F46A
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809F46A
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809F46A
	ldr r4, _0809F428
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _0809F46A
	bl sub_080020F4
	muls r0, r5, r0
	mov r1, r8
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0809F46A
	bl sub_080020F4
	muls r0, r5, r0
	add r0, r8
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0809F46A
	bl sub_080020F4
	muls r0, r5, r0
	add r0, r8
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _0809F46A
	bl sub_080020F4
	muls r0, r5, r0
	add r0, r8
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _0809F46A
	bl sub_080020F4
	muls r0, r5, r0
	add r0, r8
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _0809F46A
	bl sub_080020F4
	ldr r2, [r4, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	mov r0, r8
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _0809F46A
	bl sub_0800CE30
	cmp r0, #1
	bne _0809F42C
	movs r0, #2
	movs r1, #0x28
	movs r2, #1
	bl sub_08029CEC
	b _0809F436
_0809F420: .4byte gUnk_03003CE0
_0809F424: .4byte gUnk_03003D70
_0809F428: .4byte gUnk_03000310
_0809F42C:
	movs r0, #2
	movs r1, #0xc
	movs r2, #1
	bl sub_08029CEC
_0809F436:
	bl sub_080020F4
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	add r0, sl
	adds r0, #0xb0
	ldr r1, _0809F49C
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r1, _0809F4A0
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r4, r0
	adds r1, r1, r0
	mov r0, sl
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	movs r0, #1
	str r0, [sp, #0x6c]
_0809F46A:
	bl sub_080003F0
	ldr r0, [sp, #0x64]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	ldr r0, _0809F4A4
	ldr r1, [sp, #0x64]
	cmp r1, r0
	beq _0809F482
	b _0809F09A
_0809F482:
	bl sub_0800048C
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #8]
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809F49C: .4byte 0x0000FFFE
_0809F4A0: .4byte gUnk_03000310
_0809F4A4: .4byte 0x0000FFFF
	thumb_func_end sub_0809F018
