	thumb_func_start sub_0806DE94
sub_0806DE94: @ 0x0806DE94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb4
	str r0, [sp, #0x70]
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x70]
	ldr r0, [r0, #0]
	str r0, [sp, #0x94]
	ldr r1, [sp, #0x70]
	ldr r1, [r1, #4]
	str r1, [sp, #0x98]
	ldr r2, [sp, #0x70]
	ldrh r2, [r2, #0x14]
	mov sl, r2
	mov r3, sl
	str r3, [sp, #0x7c]
	cmp r0, #3
	bhi _0806DEE0
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r4, [sp, #0x94]
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0806DEDC
	adds r1, r1, r0
	str r1, [sp, #0x74]
	lsls r0, r4, #2
	str r0, [sp, #0xa4]
	b _0806DF64
_0806DEDC: .4byte gUnk_03003CE0
_0806DEE0:
	ldr r1, _0806DF40
	ldr r2, [sp, #0x94]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r3, _0806DF44
	adds r0, r0, r3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	mov r8, r1
	mov r0, r8
	adds r0, #0x6a
	ldr r1, _0806DF48
	add r1, r8
	ldrh r0, [r0, #0]
	lsls r4, r2, #2
	str r4, [sp, #0xa4]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bhs _0806DF64
	ldr r0, _0806DF4C
	adds r4, r4, r0
	movs r0, #1
	ldr r1, [sp, #0x98]
	lsls r0, r1
	mvns r5, r0
_0806DF18:
	bl sub_08056E90
	cmp r0, #0
	bne _0806DF34
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806DF34
	mov r2, r8
	ldrh r0, [r2, #0xc]
	cmp r0, #0xa
	beq _0806DF34
	cmp r0, #0xb
	bne _0806DF50
_0806DF34:
	ldr r0, [r4, #0]
	ands r0, r5
	str r0, [r4, #0]
	bl _0806E7BA
	.2byte 0x0000
_0806DF40: .4byte gUnk_030056F4
_0806DF44: .4byte 0xFFFFF480
_0806DF48: .4byte 0x0000022B
_0806DF4C: .4byte gUnk_030063E0
_0806DF50:
	bl sub_080003F0
	mov r0, r8
	adds r0, #0x6a
	ldr r1, _0806DFB4
	add r1, r8
	ldrh r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _0806DF18
_0806DF64:
	ldr r3, [sp, #0x90]
	ldr r4, [sp, #0x94]
	cmp r3, r4
	beq _0806DFC0
	cmp r4, #3
	bls _0806DFF2
	ldr r3, _0806DFB8
	mov r0, sl
	lsls r2, r0, #1
	ldr r4, [sp, #0x70]
	ldr r1, [r4, #0xc]
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
	bge _0806DFF2
	ldr r2, _0806DFBC
	ldr r0, [sp, #0xa4]
	adds r2, r0, r2
	movs r1, #1
	ldr r4, [sp, #0x98]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	movs r0, #0
	strh r0, [r3, #0]
	bl _0806E7BA
_0806DFB4: .4byte 0x0000022B
_0806DFB8: .4byte gUnk_084EBF1C
_0806DFBC: .4byte gUnk_030063E0
_0806DFC0:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806E084
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
	bge _0806DFF2
	movs r0, #0
	strh r0, [r4, #0]
_0806DFF2:
	add r2, sp, #0x54
	movs r3, #0
	movs r0, #0
	strh r0, [r2, #0]
	add r1, sp, #0x60
	strh r0, [r1, #0]
	add r0, sp, #0x4c
	strb r3, [r0, #0]
	movs r7, #1
	movs r2, #0
	mov r9, r2
	adds r6, r0, #0
_0806E00A:
	lsls r1, r7, #1
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x54
	mov r3, r9
	strh r3, [r0, #0]
	add r1, sp
	adds r1, #0x60
	strh r3, [r1, #0]
	bl sub_080008C8
	adds r5, r6, r7
	subs r4, r7, #1
	adds r4, r6, r4
	movs r1, #0xa
	bl sub_080B95E4
	adds r0, #0x14
	ldrb r4, [r4, #0]
	adds r0, r0, r4
	strb r0, [r5, #0]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _0806E00A
	ldr r4, [sp, #0x94]
	cmp r4, #3
	bhi _0806E0D8
	ldr r5, [sp, #0x74]
	adds r5, #0xb2
	ldr r0, [sp, #0x7c]
	cmp r0, #0
	beq _0806E052
	movs r0, #2
	strh r0, [r5, #0]
_0806E052:
	ldrh r0, [r5, #0]
	cmp r0, #1
	bhi _0806E09A
	ldr r0, _0806E088
	ldr r1, [sp, #0xa4]
	adds r4, r1, r0
	movs r0, #1
	ldr r2, [sp, #0x98]
	lsls r0, r2
	mvns r6, r0
_0806E066:
	ldr r3, [sp, #0x74]
	ldrh r0, [r3, #0x20]
	cmp r0, #0xa
	beq _0806E07C
	ldr r0, _0806E08C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806E090
_0806E07C:
	ldr r0, [r4, #0]
	ands r0, r6
	str r0, [r4, #0]
	b _0806E7BA
_0806E084: .4byte gUnk_03003CE0
_0806E088: .4byte gUnk_030063E0
_0806E08C: .4byte gUnk_03005CF4
_0806E090:
	bl sub_080003F0
	ldrh r0, [r5, #0]
	cmp r0, #1
	bls _0806E066
_0806E09A:
	ldr r4, [sp, #0x94]
	cmp r4, #3
	bhi _0806E0D8
	ldr r1, [sp, #0x74]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x80]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [sp, #0x84]
	ldr r1, _0806E0D4
	ldr r3, [sp, #0x74]
	movs r4, #0xa2
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	b _0806E0F2
	.2byte 0x0000
_0806E0D4: .4byte gUnk_0849E730
_0806E0D8:
	mov r0, r8
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x80]
	mov r1, r8
	ldr r1, [r1, #0x18]
	str r1, [sp, #0x84]
	ldr r0, _0806E124
	mov r2, r8
	movs r3, #8
	ldrsh r1, [r2, r3]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
_0806E0F2:
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r9, r0
	movs r4, #0
	mov r8, r4
	movs r0, #0
	str r0, [sp, #0x8c]
	bl sub_0800CDF8
	ldr r1, [sp, #0x74]
	adds r1, #0xb6
	str r1, [sp, #0xb0]
	cmp r0, #0
	beq _0806E110
	b _0806E31C
_0806E110:
	ldr r2, [sp, #0x70]
	ldr r0, [r2, #8]
	cmp r0, #3
	bls _0806E11A
	b _0806E23C
_0806E11A:
	bl sub_08002164
	str r0, [sp, #0x78]
	movs r7, #0
	b _0806E218
_0806E124: .4byte gUnk_0849E730
_0806E128:
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r6, r3
	ldr r3, [r0, #0]
	ldrb r0, [r3, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xb
	beq _0806E212
	cmp r0, #0xa
	beq _0806E212
	cmp r0, #0xe
	beq _0806E212
	adds r0, r6, #0
	adds r0, #0x68
	ldrb r2, [r0, #0]
	cmp r2, #0
	beq _0806E212
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0806E212
	ldr r4, [sp, #0x94]
	cmp r4, #3
	bhi _0806E16A
	ldr r0, [sp, #0x74]
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r2, r0
	beq _0806E212
_0806E16A:
	ldrh r0, [r6, #0x20]
	cmp r0, #0xb
	beq _0806E212
	ldrh r1, [r3, #0]
	lsrs r1, r1, #4
	ldr r2, [sp, #0x80]
	asrs r0, r2, #8
	subs r1, r1, r0
	add r4, sp, #0x6c
	strh r1, [r4, #0]
	ldrh r1, [r3, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldr r3, [sp, #0x84]
	asrs r0, r3, #8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x6e
	strh r1, [r5, #0]
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1b
	mov r3, r9
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	str r4, [sp, #0xa8]
	str r5, [sp, #0xac]
	cmp r0, #0x10
	ble _0806E1C0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0806E1C0:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806E1CA
	negs r0, r0
_0806E1CA:
	cmp r0, #3
	bgt _0806E212
	ldr r0, [sp, #0xa8]
	movs r1, #0
	ldrsh r4, [r0, r1]
	cmp r4, #0
	bge _0806E1DA
	negs r4, r4
_0806E1DA:
	mov r2, sl
	lsls r0, r2, #2
	add r0, sl
	lsls r0, r0, #1
	adds r0, #0x30
	cmp r4, r0
	bge _0806E212
	ldr r3, [sp, #0xac]
	movs r4, #0
	ldrsh r5, [r3, r4]
	cmp r5, #0
	bge _0806E1F4
	negs r5, r5
_0806E1F4:
	cmp r5, r0
	bge _0806E212
	add r1, sp, #0x44
	ldr r2, [sp, #0x8c]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	adds r1, r1, r2
	strb r7, [r1, #0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0806E212:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0806E218:
	ldr r0, [sp, #0x78]
	cmp r7, r0
	blo _0806E220
	b _0806E31C
_0806E220:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0806E238
	adds r6, r1, r0
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806E236
	b _0806E128
_0806E236:
	b _0806E31C
_0806E238: .4byte gUnk_03003CE0
_0806E23C:
	movs r7, #0
	b _0806E310
_0806E240:
	ldr r0, _0806E464
	movs r1, #1
	lsls r1, r7
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _0806E30A
	ldr r1, _0806E468
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #3
	subs r0, r0, r7
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r6, r1, r0
	ldrh r0, [r6, #0xc]
	cmp r0, #0xb
	beq _0806E30A
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0806E30A
	ldr r0, [r6, #0x14]
	ldr r2, [sp, #0x80]
	subs r0, r0, r2
	lsrs r0, r0, #8
	add r4, sp, #0x6c
	strh r0, [r4, #0]
	ldr r1, [r6, #0x18]
	ldr r3, [sp, #0x84]
	subs r1, r1, r3
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x6e
	strh r1, [r5, #0]
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1b
	mov r3, r9
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	str r4, [sp, #0xa8]
	str r5, [sp, #0xac]
	cmp r0, #0x10
	ble _0806E2B8
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0806E2B8:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806E2C2
	negs r0, r0
_0806E2C2:
	cmp r0, #3
	bgt _0806E30A
	ldr r0, [sp, #0xa8]
	movs r1, #0
	ldrsh r4, [r0, r1]
	cmp r4, #0
	bge _0806E2D2
	negs r4, r4
_0806E2D2:
	mov r2, sl
	lsls r0, r2, #2
	add r0, sl
	lsls r0, r0, #1
	adds r0, #0x30
	cmp r4, r0
	bge _0806E30A
	ldr r3, [sp, #0xac]
	movs r4, #0
	ldrsh r5, [r3, r4]
	cmp r5, #0
	bge _0806E2EC
	negs r5, r5
_0806E2EC:
	cmp r5, r0
	bge _0806E30A
	add r1, sp, #0x44
	ldr r2, [sp, #0x8c]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	adds r1, r1, r2
	strb r7, [r1, #0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0806E30A:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0806E310:
	cmp r7, #4
	bhi _0806E31C
	bl sub_0800CD8C
	cmp r0, #0
	beq _0806E240
_0806E31C:
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	cmp r0, r1
	beq _0806E328
	cmp r1, #3
	bls _0806E342
_0806E328:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806E342
	bl sub_0800CD34
	cmp r0, #0
	bne _0806E342
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, sl
	bl sub_0805865C
_0806E342:
	ldr r1, _0806E46C
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
	mov r2, sl
	cmp r2, #6
	bls _0806E368
	movs r3, #6
	mov sl, r3
_0806E368:
	mov r4, r8
	cmp r4, #0
	beq _0806E370
	b _0806E47C
_0806E370:
	ldr r1, _0806E470
	ldr r2, [sp, #0x74]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	ldr r3, _0806E474
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #1
	ldr r2, [sp, #0x80]
	adds r2, r2, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r4, [sp, #0x84]
	adds r4, r4, r0
	movs r0, #0
	str r0, [sp, #0x88]
	asrs r2, r2, #8
	mov r8, r2
	asrs r7, r4, #8
	add r6, sp, #0x6c
	mov r5, sp
	adds r5, #0x6e
	lsls r2, r2, #0x10
	str r2, [sp, #0x9c]
	add r4, sp, #0x54
_0806E3CA:
	lsls r1, r7, #0x10
	movs r0, #0x30
	str r0, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	ldr r3, [sp, #0x9c]
	asrs r0, r3, #0x10
	asrs r1, r1, #0x10
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0800BC08
	mov r0, r8
	adds r1, r7, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	mov r1, sl
	adds r2, r4, #0
	add r3, sp, #0x60
	bl sub_08065370
	cmp r0, #0
	beq _0806E410
	ldr r0, [sp, #0x88]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
_0806E410:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806E458
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806E458
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806E458
	ldr r0, _0806E478
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	ldr r0, [sp, #0x94]
	ands r0, r2
	cmp r1, r0
	bne _0806E458
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r4, #0]
	mov r2, r9
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08007870
_0806E458:
	bl sub_080003F0
	ldr r3, [sp, #0x88]
	cmp r3, #0
	beq _0806E3CA
	b _0806E77E
_0806E464: .4byte gUnk_030056FC
_0806E468: .4byte gUnk_030056F4
_0806E46C: .4byte 0x0005008B
_0806E470: .4byte gUnk_0849E730
_0806E474: .4byte gUnk_080B9704
_0806E478: .4byte gUnk_03002344
_0806E47C:
	movs r4, #0
	str r4, [sp, #0x88]
	ldr r0, [sp, #0x94]
	adds r1, r0, #0
	movs r2, #1
	ands r1, r2
	str r1, [sp, #0xa0]
	b _0806E752
_0806E48C:
	ldr r3, [sp, #0x70]
	ldr r0, [r3, #8]
	cmp r0, #3
	bls _0806E496
	b _0806E5D0
_0806E496:
	movs r7, #0
	ldr r4, [sp, #0x8c]
	cmp r7, r4
	blo _0806E4A0
	b _0806E71E
_0806E4A0:
	mov r0, sp
	adds r0, #0x6c
	str r0, [sp, #0xa8]
	mov r1, sp
	adds r1, #0x6e
	str r1, [sp, #0xac]
_0806E4AC:
	add r0, sp, #0x44
	adds r0, r0, r7
	mov r8, r0
	ldrb r1, [r0, #0]
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _0806E5B0
	adds r6, r1, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r6, r2
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
	ldr r3, [sp, #0x80]
	asrs r0, r3, #8
	ldr r4, [sp, #0x84]
	asrs r1, r4, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	mov r5, sp
	adds r5, r5, r7
	adds r5, #0x4c
	ldrb r0, [r5, #0]
	adds r1, r0, #0
	cmp r1, #0
	bne _0806E5B8
	lsls r4, r7, #1
	mov r2, sp
	adds r2, r2, r4
	adds r2, #0x54
	mov r3, sp
	adds r3, r3, r4
	adds r3, #0x60
	str r1, [sp, #0]
	add r0, sp, #0x10
	mov r1, sl
	bl sub_08065370
	cmp r0, #0
	beq _0806E55A
	ldr r0, [sp, #0x88]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	movs r0, #0xf0
	strb r0, [r5, #0]
	ldr r1, [sp, #0x90]
	mov r0, r8
	ldrb r0, [r0, #0]
	cmp r1, r0
	bne _0806E55A
	ldrh r0, [r6, #0]
	ldr r1, [sp, #0x70]
	str r0, [r1, #8]
	ldr r0, [sp, #0x70]
	bl sub_080694AC
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806E55A
	bl sub_0800CD34
	cmp r0, #0
	bne _0806E55A
	movs r0, #0x1a
	bl sub_0805865C
_0806E55A:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806E5C0
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806E5C0
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806E5C0
	ldr r0, _0806E5B4
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	adds r0, r7, #0
	ands r0, r2
	cmp r1, r0
	bne _0806E5C0
	ldr r3, [sp, #0xa8]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #0xac]
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sp
	adds r2, r2, r4
	adds r2, #0x54
	ldrh r3, [r2, #0]
	mov r4, r9
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08007870
	b _0806E5C0
	.2byte 0x0000
_0806E5B0: .4byte gUnk_03003CE0
_0806E5B4: .4byte gUnk_03002344
_0806E5B8:
	cmp r1, #0xf0
	beq _0806E5C0
	subs r0, #1
	strb r0, [r5, #0]
_0806E5C0:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [sp, #0x8c]
	cmp r7, r0
	bhs _0806E5CE
	b _0806E4AC
_0806E5CE:
	b _0806E71E
_0806E5D0:
	movs r7, #0
	ldr r1, [sp, #0x8c]
	cmp r7, r1
	blo _0806E5DA
	b _0806E71E
_0806E5DA:
	mov r2, sp
	adds r2, #0x6c
	str r2, [sp, #0xa8]
	mov r3, sp
	adds r3, #0x6e
	str r3, [sp, #0xac]
_0806E5E6:
	ldr r2, _0806E6FC
	add r0, sp, #0x44
	adds r0, r0, r7
	ldrb r1, [r0, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	ldr r1, [r2, #0]
	adds r6, r1, r0
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x18]
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
	ldr r4, [sp, #0x80]
	asrs r0, r4, #8
	ldr r2, [sp, #0x84]
	asrs r1, r2, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	mov r5, sp
	adds r5, r5, r7
	adds r5, #0x4c
	ldrb r0, [r5, #0]
	adds r1, r0, #0
	cmp r1, #0
	bne _0806E708
	lsls r4, r7, #1
	mov r2, sp
	adds r2, r2, r4
	adds r2, #0x54
	mov r3, sp
	adds r3, r3, r4
	adds r3, #0x60
	str r1, [sp, #0]
	add r0, sp, #0x10
	mov r1, sl
	bl sub_08065370
	cmp r0, #0
	beq _0806E692
	ldr r0, [sp, #0x88]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	movs r0, #0xf0
	strb r0, [r5, #0]
	ldr r3, [sp, #0x90]
	ldr r0, [sp, #0x94]
	cmp r3, r0
	bne _0806E692
	ldrh r0, [r6, #0]
	adds r0, #4
	ldr r1, [sp, #0x70]
	str r0, [r1, #8]
	ldr r0, [sp, #0x70]
	bl sub_080694AC
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806E692
	bl sub_0800CD34
	cmp r0, #0
	bne _0806E692
	movs r0, #0x1a
	bl sub_0805865C
_0806E692:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806E710
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806E710
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806E710
	ldr r0, _0806E700
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0806E6C0
	bl sub_0800CDC0
	cmp r0, #0
	beq _0806E6C0
	movs r2, #0
	mov r9, r2
_0806E6C0:
	ldr r0, _0806E704
	ldr r1, [r0, #0]
	movs r3, #1
	ands r1, r3
	adds r0, r7, #0
	ands r0, r3
	cmp r1, r0
	bne _0806E710
	ldr r1, [sp, #0xa8]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xac]
	movs r2, #0
	ldrsh r1, [r3, r2]
	mov r2, sp
	adds r2, r2, r4
	adds r2, #0x54
	ldrh r3, [r2, #0]
	mov r4, r9
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08007870
	b _0806E710
_0806E6FC: .4byte gUnk_030056F4
_0806E700: .4byte gUnk_03003170
_0806E704: .4byte gUnk_03002344
_0806E708:
	cmp r1, #0xf0
	beq _0806E710
	subs r0, #1
	strb r0, [r5, #0]
_0806E710:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [sp, #0x8c]
	cmp r7, r0
	bhs _0806E71E
	b _0806E5E6
_0806E71E:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806E74E
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806E74E
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806E74E
	ldr r0, _0806E7CC
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	ldr r2, [sp, #0xa0]
	cmp r0, r2
	bne _0806E74E
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806E74E:
	bl sub_080003F0
_0806E752:
	ldr r3, [sp, #0x88]
	ldr r4, [sp, #0x8c]
	cmp r3, r4
	bhs _0806E77E
	bl sub_080020F4
	ldr r1, [sp, #0x94]
	cmp r1, r0
	beq _0806E766
	b _0806E48C
_0806E766:
	ldr r2, [sp, #0x74]
	ldrh r0, [r2, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0806E77E
	bl sub_0800D11C
	cmp r0, #0
	bne _0806E77E
	b _0806E48C
_0806E77E:
	ldr r3, [sp, #0xb0]
	ldrh r0, [r3, #0]
	cmp r0, #0
	bne _0806E792
_0806E786:
	bl sub_080003F0
	ldr r4, [sp, #0xb0]
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _0806E786
_0806E792:
	ldr r0, [sp, #0x94]
	cmp r0, #3
	bhi _0806E7A8
	ldr r1, [sp, #0x90]
	cmp r0, r1
	beq _0806E7A8
	ldr r1, [sp, #0x74]
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
_0806E7A8:
	ldr r2, _0806E7D0
	ldr r3, [sp, #0xa4]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x98]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_0806E7BA:
	add sp, #0xb4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0806E7CC: .4byte gUnk_03002344
_0806E7D0: .4byte gUnk_030063E0
	thumb_func_end sub_0806DE94
