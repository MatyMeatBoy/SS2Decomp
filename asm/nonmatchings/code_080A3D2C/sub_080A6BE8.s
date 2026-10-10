	thumb_func_start sub_080A6BE8
sub_080A6BE8: @ 0x080A6BE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x98]
	ldr r5, _080A6C70
	ldr r0, [r5, #0]
	movs r1, #0x81
	lsls r1, r1, #2
	adds r1, r0, r1
	str r1, [sp, #0x9c]
	ldr r1, _080A6C74
	ldr r4, _080A6C78
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
	bl sub_0800CE30
	movs r7, #0x10
	cmp r0, #1
	bne _080A6C2C
	movs r7, #8
_080A6C2C:
	movs r2, #0
	mov r8, r2
	mov r3, sp
	adds r3, #0x44
	str r3, [sp, #0xb0]
	mov r0, sp
	adds r0, #0x4c
	str r0, [sp, #0xa8]
	mov r1, sp
	adds r1, #0x48
	str r1, [sp, #0xa4]
	adds r6, r3, #0
	movs r4, #0
_080A6C46:
	ldr r2, [sp, #0x98]
	cmp r2, #0
	beq _080A6C7C
	mov r3, r8
	lsls r1, r3, #2
	add r1, r8
	lsls r1, r1, #2
	adds r1, r6, r1
	mov r0, r8
	adds r0, #4
	strb r0, [r1, #0x10]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x14]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1, #0]
	movs r0, #3
	subs r0, r0, r3
	muls r0, r7, r0
	b _080A6C9A
_080A6C70: .4byte gUnk_03000400
_080A6C74: .4byte 0x0005000F
_080A6C78: .4byte gUnk_03000404
_080A6C7C:
	mov r3, r8
	lsls r1, r3, #2
	add r1, r8
	lsls r1, r1, #2
	adds r1, r6, r1
	mov r0, r8
	adds r0, #1
	strb r0, [r1, #0x10]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x14]
	ldr r2, _080A6D04
	adds r0, r0, r2
	str r0, [r1, #0]
	mov r0, r8
	muls r0, r7, r0
_080A6C9A:
	strb r0, [r1, #0x13]
	mov r3, r8
	lsls r1, r3, #2
	add r1, r8
	lsls r1, r1, #2
	adds r3, r6, r1
	strb r4, [r3, #0x11]
	ldr r0, [sp, #0xa8]
	adds r2, r0, r1
	movs r0, #0x80
	str r0, [r2, #0]
	ldr r2, [sp, #0xa4]
	adds r1, r2, r1
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x18]
	str r0, [r1, #0]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0xc]
	strb r4, [r3, #0x12]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _080A6C46
	movs r1, #0xf0
_080A6CD0:
	movs r3, #0
	mov r8, r3
	subs r1, #1
	str r1, [sp, #0xac]
_080A6CD8:
	mov r5, r8
	lsls r1, r5, #2
	adds r0, r1, r5
	lsls r0, r0, #2
	ldr r3, [sp, #0xb0]
	adds r2, r3, r0
	ldrb r0, [r2, #0x13]
	adds r3, r0, #0
	mov r9, r1
	cmp r3, #0
	beq _080A6D08
	subs r0, #1
	strb r0, [r2, #0x13]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A6CFA
	b _080A6E00
_080A6CFA:
	movs r0, #0xd1
	lsls r0, r0, #1
	bl sub_0805865C
	b _080A6E00
_080A6D04: .4byte 0xFFFFF800
_080A6D08:
	ldrb r0, [r2, #0x11]
	adds r1, r0, #1
	strb r1, [r2, #0x11]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _080A6D42
	strb r3, [r2, #0x11]
	ldr r5, [sp, #0x98]
	cmp r5, #0
	beq _080A6D30
	adds r1, r2, #0
	ldrb r0, [r2, #0x10]
	cmp r0, #7
	beq _080A6D2C
	adds r0, #1
	strb r0, [r2, #0x10]
	b _080A6D40
_080A6D2C:
	movs r0, #0
	b _080A6D40
_080A6D30:
	adds r1, r2, #0
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	beq _080A6D3E
	subs r0, #1
	strb r0, [r1, #0x10]
	b _080A6D40
_080A6D3E:
	movs r0, #7
_080A6D40:
	strb r0, [r1, #0x10]
_080A6D42:
	mov r0, r9
	add r0, r8
	lsls r7, r0, #2
	ldr r0, [sp, #0xb0]
	adds r1, r0, r7
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	beq _080A6D56
	cmp r0, #4
	bne _080A6D94
_080A6D56:
	ldr r2, [sp, #0xa4]
	adds r4, r2, r7
	ldr r5, _080A6D8C
	ldr r6, _080A6D90
	ldrb r0, [r1, #0x10]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r2, [sp, #0xa8]
	adds r0, r2, r7
	ldr r0, [r0, #0]
	muls r0, r1, r0
	movs r1, #0x98
	lsls r1, r1, #1
	bl __divsi3
	ldr r1, [r4, #0]
	adds r1, r1, r0
	str r1, [r4, #0]
	adds r2, r5, #0
	adds r3, r6, #0
	b _080A6DC2
	.2byte 0x0000
_080A6D8C: .4byte gUnk_080B9704
_080A6D90: .4byte gUnk_085186DC
_080A6D94:
	ldr r3, [sp, #0xa4]
	adds r4, r3, r7
	ldr r2, _080A7040
	ldr r3, _080A7044
	ldrb r0, [r1, #0x10]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r5, [sp, #0xa8]
	adds r0, r5, r7
	ldr r0, [r0, #0]
	muls r0, r1, r0
	cmp r0, #0
	bge _080A6DBA
	adds r0, #0xff
_080A6DBA:
	asrs r1, r0, #8
	ldr r0, [r4, #0]
	adds r0, r0, r1
	str r0, [r4, #0]
_080A6DC2:
	mov r1, r9
	add r1, r8
	lsls r1, r1, #2
	ldr r0, [sp, #0xb0]
	adds r4, r0, r1
	ldrb r0, [r4, #0x10]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r5, [sp, #0xa8]
	adds r3, r5, r1
	ldr r0, [r3, #0]
	adds r1, r2, #0
	muls r1, r0, r1
	cmp r1, #0
	bge _080A6DEE
	adds r1, #0xff
_080A6DEE:
	asrs r1, r1, #8
	ldr r0, [r4, #0]
	adds r0, r0, r1
	str r0, [r4, #0]
	ldr r0, [r3, #0]
	adds r0, #0x20
	mov r1, r8
	subs r0, r0, r1
	str r0, [r3, #0]
_080A6E00:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A6E9C
	bl sub_0800CC98
	cmp r0, #0
	bne _080A6E9C
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A6E9C
	bl sub_0800CD34
	adds r7, r0, #0
	cmp r7, #0
	bne _080A6E9C
	ldr r0, _080A7048
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x9c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r1, r9
	add r1, r8
	lsls r1, r1, #2
	ldr r2, [sp, #0xb0]
	adds r6, r2, r1
	ldr r0, [r6, #0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r3, [sp, #0xa4]
	adds r1, r3, r1
	ldr r1, [r1, #0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x94
	mov r5, sp
	adds r5, #0x96
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
_080A6E9C:
	mov r0, r9
	add r0, r8
	lsls r5, r0, #2
	ldr r3, [sp, #0xb0]
	adds r3, r3, r5
	str r3, [sp, #0xa0]
	ldrb r0, [r3, #0x12]
	cmp r0, #0
	beq _080A6EB0
	b _080A7004
_080A6EB0:
	bl sub_080020F4
	ldr r1, [sp, #0xa0]
	ldr r4, [r1, #0]
	asrs r4, r4, #8
	ldr r7, _080A704C
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	ldr r2, [sp, #0xa4]
	adds r1, r2, r5
	ldr r1, [r1, #0]
	asrs r1, r1, #8
	adds r1, #0xc
	muls r0, r6, r0
	adds r2, r7, #0
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
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _080A7004
	bl sub_0800CDF8
	cmp r0, #0
	bne _080A7004
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A7004
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A7004
	ldr r5, _080A7050
	mov sl, r5
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _080A7004
	bl sub_080020F4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080A7004
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A7004
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080A7004
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080A7004
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080A7004
	bl sub_080020F4
	ldr r2, [r5, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	movs r0, #0xe4
	adds r0, r0, r7
	mov r9, r0
	add r1, r9
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _080A7004
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xb0
	ldr r1, _080A7054
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r5, r0, #0
	mov r1, sl
	ldr r4, [r1, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r0, r4, #0
	bl sub_0801ED8C
	adds r1, r5, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r1, #0x88
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	bl sub_080020F4
	mov r3, sl
	ldr r2, [r3, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, r9
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	movs r0, #1
	ldr r5, [sp, #0xa0]
	strb r0, [r5, #0x12]
_080A7004:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _080A7014
	b _080A6CD8
_080A7014:
	bl sub_080003F0
	ldr r1, [sp, #0xac]
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080A7058
	cmp r1, r0
	beq _080A7026
	b _080A6CD0
_080A7026:
	bl sub_0800048C
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0xb4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A7040: .4byte gUnk_080B9704
_080A7044: .4byte gUnk_085186DC
_080A7048: .4byte gUnk_03000404
_080A704C: .4byte gUnk_03003CE0
_080A7050: .4byte gUnk_03000400
_080A7054: .4byte 0x0000FFFE
_080A7058: .4byte 0x0000FFFF
	thumb_func_end sub_080A6BE8
