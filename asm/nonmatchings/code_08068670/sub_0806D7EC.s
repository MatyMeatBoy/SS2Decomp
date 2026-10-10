	thumb_func_start sub_0806D7EC
sub_0806D7EC: @ 0x0806D7EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	bl sub_080020F4
	mov sl, r0
	ldr r0, [r5, #0]
	mov r8, r0
	ldr r1, [r5, #4]
	str r1, [sp, #0xc]
	ldrh r6, [r5, #0x14]
	mov r9, r6
	cmp r0, #3
	bhi _0806D81C
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r8
	muls r1, r0, r1
	ldr r0, _0806D8AC
	adds r7, r1, r0
_0806D81C:
	cmp sl, r8
	bne _0806D850
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806D8AC
	adds r4, r4, r0
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x14]
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
	bge _0806D850
	movs r0, #0
	strh r0, [r4, #0]
_0806D850:
	adds r0, r7, #0
	adds r0, #0xb4
	ldrh r1, [r0, #0]
	adds r4, r0, #0
	mov r2, r8
	lsls r2, r2, #2
	str r2, [sp, #0x10]
	cmp r1, #6
	bhi _0806D874
_0806D862:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xa
	bne _0806D86A
	b _0806DA12
_0806D86A:
	bl sub_080003F0
	ldrh r0, [r4, #0]
	cmp r0, #6
	bls _0806D862
_0806D874:
	cmp sl, r8
	bne _0806D890
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806D890
	bl sub_0800CD34
	cmp r0, #0
	bne _0806D890
	movs r0, #0xb4
	lsls r0, r0, #1
	bl sub_0805865C
_0806D890:
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #4]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #8]
	movs r4, #0
	movs r5, #0
	b _0806D934
_0806D8AC: .4byte gUnk_03003CE0
_0806D8B0:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _0806D9B4
	adds r1, r1, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r2, [r0, #0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0806D92E
	adds r0, r1, #0
	adds r0, #0x68
	adds r1, r7, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bne _0806D92E
	cmp r0, #0
	beq _0806D92E
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldr r3, [sp, #4]
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r2, [sp, #8]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, r9
	cmp r0, #5
	beq _0806D922
	lsls r0, r1, #0x10
	asrs r1, r0, #0x13
	cmp r1, #0
	bge _0806D90A
	negs r1, r1
_0806D90A:
	mov r0, r9
	adds r0, #1
	lsls r2, r0, #1
	cmp r1, r2
	bge _0806D92E
	lsls r0, r3, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0806D91E
	negs r0, r0
_0806D91E:
	cmp r0, r2
	bge _0806D92E
_0806D922:
	adds r0, r4, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	add r0, sp
	strb r5, [r0, #0]
_0806D92E:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0806D934:
	bl sub_08002164
	cmp r5, r0
	blo _0806D8B0
	movs r5, #0
	cmp r5, r4
	bhs _0806D958
_0806D942:
	mov r1, sp
	adds r0, r1, r5
	ldrb r0, [r0, #0]
	movs r1, #0xb
	bl sub_08074DE8
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r4
	blo _0806D942
_0806D958:
	cmp sl, r8
	bne _0806DA46
	ldr r3, [r7, #0x34]
	movs r5, #0
	mov r9, r3
	ldr r2, _0806D9B4
	mov sl, r2
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, #0x28
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r2, r1, #2
	lsls r4, r6, #3
_0806D976:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _0806D9B8
	ldrh r0, [r3, #2]
	cmp r0, #3
	bhi _0806D9B8
	adds r1, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r1, r0
	add r0, sl
	adds r0, #0x64
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0806D9B8
	ldrh r0, [r3, #4]
	cmp r0, #5
	bne _0806D9B8
	ldrh r0, [r3, #6]
	cmp r0, r6
	bhi _0806D9E4
	mov r0, r8
	strh r0, [r3, #2]
	strh r6, [r3, #6]
	strh r2, [r3, #0]
	strh r4, [r3, #8]
	strh r4, [r3, #0xa]
	strh r4, [r3, #0xc]
	strh r4, [r3, #0xe]
	b _0806D9E4
_0806D9B4: .4byte gUnk_03003CE0
_0806D9B8:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #0x28
	cmp r5, #7
	bls _0806D976
	movs r1, #0
	cmp r1, #0
	bne _0806D9E4
	mov r3, r9
	movs r5, #0
	subs r1, #1
_0806D9D0:
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, r1
	beq _0806D9EC
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #0x28
	cmp r5, #7
	bls _0806D9D0
_0806D9E4:
	movs r0, #0
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	b _0806DAF6
_0806D9EC:
	mov r0, r8
	strh r0, [r3, #2]
	movs r0, #5
	strh r0, [r3, #4]
	strh r6, [r3, #6]
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, #0x28
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	strh r1, [r3, #0]
	lsls r0, r6, #3
	strh r0, [r3, #8]
	strh r0, [r3, #0xa]
	strh r0, [r3, #0xc]
	strh r0, [r3, #0xe]
	b _0806D9E4
_0806DA12:
	ldr r2, _0806DA1C
	ldr r1, [sp, #0x10]
	adds r2, r1, r2
	b _0806DAFC
	.2byte 0x0000
_0806DA1C: .4byte gUnk_030063E0
_0806DA20:
	mov r0, r8
	strh r0, [r3, #2]
	movs r0, #5
	strh r0, [r3, #4]
	strh r6, [r3, #6]
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, #0x28
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	strh r1, [r3, #0]
	lsls r0, r6, #3
	strh r0, [r3, #8]
	strh r0, [r3, #0xa]
	strh r0, [r3, #0xc]
	strh r0, [r3, #0xe]
	b _0806DAF6
_0806DA46:
	movs r5, #0
	cmp r5, r4
	bhs _0806DAF6
	movs r1, #0xa6
	lsls r1, r1, #1
	mov r9, r1
	adds r2, r1, #0
	mov r1, sl
	muls r1, r2, r1
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r2, r0, #1
_0806DA5E:
	mov r3, sp
	adds r0, r3, r5
	ldrb r0, [r0, #0]
	cmp r0, sl
	bne _0806DAEC
	ldr r0, _0806DAB8
	adds r7, r1, r0
	ldr r3, [r7, #0x34]
	movs r5, #0
	mov ip, r0
	adds r1, r2, #0
	adds r1, #0x28
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #2
	lsls r4, r6, #3
_0806DA7E:
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #0
	ble _0806DABC
	ldrh r0, [r3, #2]
	cmp r0, #3
	bhi _0806DABC
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, ip
	adds r0, #0x64
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0806DABC
	ldrh r0, [r3, #4]
	cmp r0, #5
	bne _0806DABC
	ldrh r0, [r3, #6]
	cmp r0, r6
	bhi _0806DAF6
	strh r6, [r3, #6]
	strh r1, [r3, #0]
	strh r4, [r3, #8]
	strh r4, [r3, #0xa]
	strh r4, [r3, #0xc]
	strh r4, [r3, #0xe]
	b _0806DAF6
	.2byte 0x0000
_0806DAB8: .4byte gUnk_03003CE0
_0806DABC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #0x28
	cmp r5, #7
	bls _0806DA7E
	movs r3, #0
	cmp r3, #0
	bne _0806DAF6
	ldr r3, [r7, #0x34]
	movs r5, #0
	movs r1, #1
	negs r1, r1
_0806DAD6:
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, r1
	beq _0806DA20
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #0x28
	cmp r5, #7
	bls _0806DAD6
	b _0806DAF6
_0806DAEC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r4
	blo _0806DA5E
_0806DAF6:
	ldr r3, [sp, #0x10]
	ldr r0, _0806DB18
	adds r2, r3, r0
_0806DAFC:
	movs r1, #1
	ldr r3, [sp, #0xc]
	lsls r1, r3
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806DB18: .4byte gUnk_030063E0
	thumb_func_end sub_0806D7EC
