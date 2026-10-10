	thumb_func_start sub_0809A5E0
sub_0809A5E0: @ 0x0809A5E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
	bl sub_080020F4
	ldr r1, _0809A798
	mov r8, r1
	ldr r1, [r1, #0]
	ldr r7, _0809A79C
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	ldr r2, _0809A7A0
	adds r0, r0, r2
	ldr r4, [r1, #0x14]
	ldr r0, [r0, #0]
	subs r4, r4, r0
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	mov r2, r8
	ldr r1, [r2, #0]
	muls r0, r6, r0
	movs r2, #0x90
	adds r2, r2, r7
	mov sl, r2
	add r0, sl
	ldr r1, [r1, #0x18]
	ldr r0, [r0, #0]
	subs r1, r1, r0
	lsls r1, r1, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2f
	bls _0809A646
	b _0809A81E
_0809A646:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0809A650
	b _0809A81E
_0809A650:
	bl sub_0800CCCC
	cmp r0, #0
	beq _0809A65A
	b _0809A81E
_0809A65A:
	bl sub_0800CD8C
	cmp r0, #0
	beq _0809A664
	b _0809A81E
_0809A664:
	mov r1, r8
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	bne _0809A670
	b _0809A81E
_0809A670:
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
	beq _0809A68A
	b _0809A81E
_0809A68A:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0809A69C
	b _0809A81E
_0809A69C:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	bne _0809A6AC
	b _0809A81E
_0809A6AC:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	bne _0809A6BC
	b _0809A81E
_0809A6BC:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	bne _0809A6CC
	b _0809A81E
_0809A6CC:
	bl sub_080020F4
	mov r1, r8
	ldr r2, [r1, #0]
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
	bne _0809A6EE
	b _0809A81E
_0809A6EE:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xb0
	ldr r1, _0809A7A4
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r5, r0, #0
	mov r1, r8
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
	mov r1, r8
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, r9
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	bl sub_080020F4
	muls r0, r6, r0
	ldr r2, _0809A7A0
	adds r0, r0, r2
	mov r2, r8
	ldr r1, [r2, #0]
	ldr r4, [r0, #0]
	ldr r0, [r1, #0x14]
	subs r4, r4, r0
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	muls r0, r6, r0
	add r0, sl
	mov r1, r8
	ldr r2, [r1, #0]
	ldr r1, [r0, #0]
	ldr r0, [r2, #0x18]
	subs r1, r1, r0
	lsls r1, r1, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r4, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _0809A7AA
	cmp r4, #6
	bhi _0809A7A8
	adds r4, #1
	b _0809A7AA
_0809A798: .4byte gUnk_030002DC
_0809A79C: .4byte gUnk_03003CE0
_0809A7A0: .4byte gUnk_03003D6C
_0809A7A4: .4byte 0x0000FFFE
_0809A7A8:
	movs r4, #0
_0809A7AA:
	cmp r4, #0
	beq _0809A7CC
	cmp r4, #1
	beq _0809A7E4
	bl sub_080020F4
	ldr r2, _0809A7C8
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	subs r1, r4, #2
	adds r0, #0xca
	b _0809A7F6
	.2byte 0x0000
_0809A7C8: .4byte gUnk_03003CE0
_0809A7CC:
	bl sub_080020F4
	ldr r2, _0809A7E0
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #6
	b _0809A7F6
_0809A7E0: .4byte gUnk_03003CE0
_0809A7E4:
	bl sub_080020F4
	ldr r2, _0809A830
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #7
_0809A7F6:
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r5, _0809A830
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
	movs r1, #8
	strh r1, [r0, #0]
	movs r5, #1
_0809A81E:
	adds r0, r5, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_0809A830: .4byte gUnk_03003CE0
	thumb_func_end sub_0809A5E0
