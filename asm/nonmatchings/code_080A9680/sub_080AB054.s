	thumb_func_start sub_080AB054
sub_080AB054: @ 0x080AB054
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r6, r2, #0
	adds r5, r1, #0
	lsls r3, r3, #0x10
	mov r8, r3
	mov r0, r8
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0]
	bl sub_080020F4
	ldr r4, [r7, #0x14]
	asrs r4, r4, #8
	adds r4, r5, r4
	ldr r2, _080AB240
	mov sl, r2
	movs r1, #0xa6
	lsls r1, r1, #1
	mov r9, r1
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r1, _080AB244
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	adds r1, r6, r1
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	mov r6, sl
	adds r6, #0x90
	adds r0, r0, r6
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
	cmp r0, r8
	blo _080AB0DA
	b _080AB2C0
_080AB0DA:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080AB0E4
	b _080AB2C0
_080AB0E4:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080AB0EE
	b _080AB2C0
_080AB0EE:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080AB0F8
	b _080AB2C0
_080AB0F8:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xb
	bne _080AB100
	b _080AB2C0
_080AB100:
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, sl
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080AB11E
	b _080AB2C0
_080AB11E:
	bl sub_080020F4
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, sl
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080AB134
	b _080AB2C0
_080AB134:
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sl
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	bne _080AB148
	b _080AB2C0
_080AB148:
	bl sub_080020F4
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, sl
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	bne _080AB15C
	b _080AB2C0
_080AB15C:
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sl
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	bne _080AB170
	b _080AB2C0
_080AB170:
	bl sub_080020F4
	ldrh r1, [r7, #0]
	lsls r1, r1, #2
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	mov r5, sl
	adds r5, #0xe4
	adds r1, r1, r5
	ldr r1, [r1, #0]
	ldr r0, [r7, #0x50]
	cmp r1, r0
	bne _080AB190
	b _080AB2C0
_080AB190:
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sl
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, sl
	adds r0, #0xb0
	ldr r1, _080AB248
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	add r1, sl
	adds r0, r7, #0
	bl sub_0801ED8C
	mov r1, r9
	muls r1, r4, r1
	add r1, sl
	adds r1, #0x88
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	bl sub_080020F4
	ldrh r1, [r7, #0]
	lsls r1, r1, #2
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r7, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r7, #0x50]
	movs r0, #1
	str r0, [sp, #0]
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _080AB244
	adds r0, r0, r2
	ldr r4, [r0, #0]
	ldr r0, [r7, #0x14]
	subs r4, r4, r0
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r6
	ldr r1, [r0, #0]
	ldr r0, [r7, #0x18]
	subs r1, r1, r0
	lsls r1, r1, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r4, r0
	bls _080AB24E
	cmp r4, #6
	bhi _080AB24C
	adds r4, #1
	b _080AB24E
_080AB240: .4byte gUnk_03003CE0
_080AB244: .4byte gUnk_03003D6C
_080AB248: .4byte 0x0000FFFE
_080AB24C:
	movs r4, #0
_080AB24E:
	cmp r4, #0
	beq _080AB270
	cmp r4, #1
	beq _080AB288
	bl sub_080020F4
	ldr r2, _080AB26C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	subs r1, r4, #2
	adds r0, #0xca
	b _080AB29A
	.2byte 0x0000
_080AB26C: .4byte gUnk_03003CE0
_080AB270:
	bl sub_080020F4
	ldr r2, _080AB284
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #6
	b _080AB29A
_080AB284: .4byte gUnk_03003CE0
_080AB288:
	bl sub_080020F4
	ldr r2, _080AB2D4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #7
_080AB29A:
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r5, _080AB2D4
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xcc
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xc8
	movs r1, #0x10
	strh r1, [r0, #0]
_080AB2C0:
	ldr r0, [sp, #0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_080AB2D4: .4byte gUnk_03003CE0
	thumb_func_end sub_080AB054
