	thumb_func_start sub_080A705C
sub_080A705C: @ 0x080A705C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080A7194
	add sp, r4
	ldr r5, _080A7198
	ldr r0, [r5, #0]
	movs r1, #0x81
	lsls r1, r1, #2
	adds r1, r0, r1
	str r1, [sp, #0x210]
	ldr r1, _080A719C
	ldr r4, _080A71A0
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
	movs r2, #0
	mov r9, r2
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0x220]
	movs r1, #0xcc
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x218]
	mov r2, sp
	adds r2, #0x48
	str r2, [sp, #0x224]
	adds r0, #8
	str r0, [sp, #0x228]
	movs r6, #0
	movs r7, #1
	movs r1, #0xca
	lsls r1, r1, #1
	add r1, sp
	mov ip, r1
	ldr r5, [r5, #0]
	movs r2, #0xfa
	lsls r2, r2, #1
	add r2, sp
	mov sl, r2
	movs r0, #0x80
	lsls r0, r0, #2
	add r0, sp
	mov r8, r0
_080A70CA:
	mov r2, r9
	lsls r1, r2, #2
	add r1, r9
	lsls r1, r1, #2
	mov r4, sp
	adds r4, r4, r1
	adds r4, #0x44
	strb r7, [r4, #0x10]
	lsls r3, r2, #3
	mov r0, ip
	adds r2, r0, r3
	ldr r0, [r5, #0x14]
	str r0, [r4, #0]
	str r0, [r2, #0]
	ldr r2, [sp, #0x218]
	adds r3, r2, r3
	ldr r0, [sp, #0x224]
	adds r2, r0, r1
	ldr r0, [r5, #0x18]
	str r0, [r2, #0]
	str r0, [r3, #0]
	ldr r2, [sp, #0x228]
	adds r0, r2, r1
	adds r1, #0x1e
	str r1, [r0, #0]
	strb r7, [r4, #0x11]
	mov r0, sl
	add r0, r9
	strb r6, [r0, #0]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0xc]
	mov r1, r8
	add r1, r9
	movs r0, #0x18
	strb r0, [r1, #0]
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	cmp r0, #0xb
	bls _080A70CA
	movs r0, #0xd1
	lsls r0, r0, #1
	bl sub_0805865C
	ldr r1, _080A71A4
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, [sp, #0x220]
	str r0, [sp, #0x214]
_080A7130:
	movs r1, #0
	mov r9, r1
_080A7134:
	mov r2, r9
	lsls r1, r2, #2
	adds r0, r1, r2
	lsls r6, r0, #2
	ldr r0, [sp, #0x228]
	adds r4, r0, r6
	ldr r0, [r4, #0]
	str r1, [sp, #0x21c]
	cmp r0, #0
	beq _080A71AC
	subs r0, #1
	str r0, [r4, #0]
	movs r0, #0
	bl sub_08096594
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080A71A8
	adds r1, r1, r0
	add r2, sp, #0x134
	mov r0, r9
	lsls r3, r0, #3
	adds r2, r2, r3
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [r2, #0]
	add r2, sp, #0x138
	adds r2, r2, r3
	ldr r0, [r1, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [r2, #0]
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _080A718A
	b _080A73C6
_080A718A:
	movs r0, #0xd1
	lsls r0, r0, #1
	bl sub_0805865C
	b _080A73C6
_080A7194: .4byte 0xFFFFFDD4
_080A7198: .4byte gUnk_03000400
_080A719C: .4byte 0x0005000F
_080A71A0: .4byte gUnk_03000404
_080A71A4: .4byte gUnk_03000414
_080A71A8: .4byte gUnk_03003CE0
_080A71AC:
	add r0, sp, #0x1f4
	mov r1, r9
	adds r3, r0, r1
	ldrb r0, [r3, #0]
	cmp r0, #0
	beq _080A71BA
	b _080A73C6
_080A71BA:
	add r0, sp, #0x200
	adds r2, r0, r1
	ldrb r0, [r2, #0]
	adds r1, r0, #0
	cmp r1, #0
	beq _080A720C
	subs r0, #1
	strb r0, [r2, #0]
	ldr r2, [sp, #0x214]
	adds r5, r2, r6
	add r0, sp, #0x134
	mov r1, r9
	lsls r4, r1, #3
	adds r0, r0, r4
	add r1, sp, #0x194
	adds r1, r1, r4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	movs r1, #0x18
	bl sub_080B9394
	ldr r1, [r5, #0]
	adds r1, r1, r0
	str r1, [r5, #0]
	ldr r2, [sp, #0x224]
	adds r5, r2, r6
	add r0, sp, #0x138
	adds r0, r0, r4
	ldr r1, [sp, #0x218]
	adds r4, r1, r4
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	subs r0, r0, r1
	movs r1, #0x18
	bl sub_080B9394
	ldr r1, [r5, #0]
	adds r1, r1, r0
	str r1, [r5, #0]
	b _080A73C6
_080A720C:
	movs r0, #1
	strb r0, [r3, #0]
	ldr r2, [sp, #0x214]
	adds r4, r2, r6
	strb r1, [r4, #0x11]
	bl sub_080020F4
	ldr r4, [r4, #0]
	asrs r4, r4, #8
	ldr r1, _080A747C
	mov r8, r1
	movs r7, #0xa6
	lsls r7, r7, #1
	muls r0, r7, r0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	ldr r2, [sp, #0x224]
	adds r1, r2, r6
	ldr r1, [r1, #0]
	asrs r1, r1, #8
	adds r1, #8
	muls r0, r7, r0
	mov r2, r8
	adds r2, #0x90
	adds r0, r0, r2
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
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb
	bls _080A7274
	b _080A73C6
_080A7274:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080A727E
	b _080A73C6
_080A727E:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080A7288
	b _080A73C6
_080A7288:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080A7292
	b _080A73C6
_080A7292:
	ldr r0, _080A7480
	mov sl, r0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	bne _080A72A0
	b _080A73C6
_080A72A0:
	bl sub_080020F4
	muls r0, r7, r0
	mov r1, r8
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080A72BA
	b _080A73C6
_080A72BA:
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r8
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A73C6
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r8
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080A73C6
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r8
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080A73C6
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r8
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080A73C6
	bl sub_080020F4
	mov r1, sl
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	mov r6, r8
	adds r6, #0xe4
	adds r1, r1, r6
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _080A73C6
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, r8
	movs r0, #0xa
	strh r0, [r1, #0x20]
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r8
	adds r0, #0xb0
	ldr r1, _080A7484
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r5, r0, #0
	mov r2, sl
	ldr r4, [r2, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, r8
	adds r0, r4, #0
	bl sub_0801ED8C
	adds r1, r5, #0
	muls r1, r7, r1
	add r1, r8
	adds r1, #0x88
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	bl sub_080020F4
	mov r1, sl
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	adds r1, r1, r6
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r8
	adds r0, #0xc4
	movs r2, #0
	ldrsh r4, [r0, r2]
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r8
	adds r0, #0x88
	ldrh r0, [r0, #0]
	cmp r4, r0
	ble _080A73AC
	bl sub_08015C14
	ldr r0, _080A7488
	movs r1, #0
	strb r1, [r0, #0]
	bl sub_0800CE68
	cmp r0, #0
	bne _080A73A8
	bl sub_0800CC98
	cmp r0, #0
	beq _080A73AC
_080A73A8:
	bl sub_0800D038
_080A73AC:
	ldr r4, _080A748C
	bl sub_080020F4
	ldr r2, _080A747C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r2, #0x90
	adds r0, r0, r2
	ldr r0, [r0, #0]
	ldr r2, _080A7490
	adds r0, r0, r2
	str r0, [r4, #0]
_080A73C6:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A7462
	bl sub_0800CC98
	cmp r0, #0
	bne _080A7462
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A7462
	bl sub_0800CD34
	adds r7, r0, #0
	cmp r7, #0
	bne _080A7462
	ldr r0, _080A7494
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x210]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [sp, #0x21c]
	add r1, r9
	lsls r1, r1, #2
	ldr r0, [sp, #0x220]
	adds r6, r0, r1
	ldr r0, [r6, #0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x224]
	adds r1, r2, r1
	ldr r1, [r1, #0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x20c
	ldr r5, _080A7498
	add r5, sp
	str r7, [sp, #0]
	str r7, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldrb r1, [r6, #0x10]
	adds r1, #5
	adds r2, r6, #0
	adds r2, #0xc
	adds r3, r6, #0
	adds r3, #0xe
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrb r2, [r6, #0x10]
	adds r2, #5
	ldrh r3, [r6, #0xc]
	str r7, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A7462:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	cmp r0, #0xb
	bhi _080A7472
	b _080A7134
_080A7472:
	movs r4, #0
	mov r9, r4
	ldr r1, [sp, #0x220]
	ldrb r0, [r1, #0x11]
	b _080A74B6
_080A747C: .4byte gUnk_03003CE0
_080A7480: .4byte gUnk_03000400
_080A7484: .4byte 0x0000FFFE
_080A7488: .4byte gUnk_03000407
_080A748C: .4byte gUnk_03000414
_080A7490: .4byte 0xFFFFF800
_080A7494: .4byte gUnk_03000404
_080A7498: .4byte 0x0000020E
_080A749C:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	cmp r0, #0xb
	bhi _080A74BC
	lsls r0, r0, #2
	add r0, r9
	lsls r0, r0, #2
	ldr r2, [sp, #0x220]
	adds r0, r2, r0
	ldrb r0, [r0, #0x11]
_080A74B6:
	cmp r0, #0
	beq _080A749C
	movs r4, #1
_080A74BC:
	bl sub_080003F0
	cmp r4, #0
	beq _080A74C6
	b _080A7130
_080A74C6:
	movs r0, #0
	bl sub_08097A38
	bl sub_0800048C
	str r4, [r0, #8]
	movs r3, #0x8b
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080A705C
