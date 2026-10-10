	thumb_func_start sub_08007F0C
sub_08007F0C: @ 0x08007F0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r4, [sp, #0x5c]
	ldr r6, [sp, #0x64]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	ldr r5, [sp, #0x74]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r7, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x18]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x1c]
	ldr r0, _08007F60
	ldr r3, [r0, #0]
	cmp r3, #0x7f
	bhi _08007F58
	ldrh r0, [r6, #2]
	cmp r0, r2
	bhs _08007F68
_08007F58:
	movs r0, #1
	negs r0, r0
	b _080081AA
	.2byte 0x0000
_08007F60: .4byte gUnk_030028B4
_08007F64:
	movs r0, #0
	b _080081AA
_08007F68:
	ldr r0, _0800801C
	ldr r0, [r0, #0]
	str r0, [sp, #0x24]
	ldr r0, _08008020
	ldr r0, [r0, #0]
	str r0, [sp, #0x28]
	ldr r0, [r6, #4]
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r6, #8]
	adds r1, r6, r1
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	mov r2, r9
	lsls r0, r2, #2
	adds r1, r1, r0
	ldrh r1, [r1, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r7, r1, r0
	lsls r1, r3, #3
	ldr r0, _08008024
	adds r4, r1, r0
	ldr r0, _08008028
	ldr r2, [sp, #0x24]
	lsls r1, r2, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
	mov sl, r0
	movs r3, #0
	mov r9, r3
	movs r6, #0
	movs r0, #0
	str r0, [sp, #0x20]
	mov r1, r8
	ldrh r1, [r1, #2]
	cmp r9, r1
	blo _08007FC6
	b _08008150
_08007FC6:
	movs r0, #7
	ldr r2, [sp, #0x28]
	ands r0, r2
	lsls r0, r0, #1
	str r0, [sp, #0x34]
_08007FD0:
	mov ip, r7
	ldrh r2, [r4, #6]
	ldr r0, [r7, #0]
	ldr r1, [r7, #4]
	str r0, [r4, #0]
	str r1, [r4, #4]
	strh r2, [r4, #6]
	ldrh r0, [r7, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r5, #0
	ldrsb r5, [r7, r5]
	ldr r0, [sp, #0xc]
	adds r5, r5, r0
	ldr r1, [sp, #8]
	adds r3, r3, r1
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08008008
	cmp r5, #0xa0
	bgt _08008008
	movs r0, #0x40
	negs r0, r0
	cmp r5, r0
	bge _0800802C
_08008008:
	ldrb r2, [r4, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #3]
	ldrb r0, [r4, #1]
	ands r1, r0
	strb r1, [r4, #1]
	subs r4, #8
	b _0800813C
_0800801C: .4byte gUnk_030028B8
_08008020: .4byte gUnk_030028B0
_08008024: .4byte gUnk_03001330
_08008028: .4byte gUnk_030028BC
_0800802C:
	movs r0, #3
	ldr r2, [sp, #0x10]
	ands r2, r0
	lsls r2, r2, #2
	str r2, [sp, #0x38]
	ldrb r1, [r4, #5]
	movs r2, #0xd
	negs r2, r2
	adds r0, r2, #0
	ands r1, r0
	ldr r0, [sp, #0x38]
	orrs r1, r0
	strb r1, [r4, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x60]
	adds r0, r2, r0
	ldrb r2, [r0, #0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldr r1, _08008094
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r4, #2]
	ldr r2, _08008098
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r4, #2]
	strb r5, [r4, #0]
	ldr r2, [sp, #0x24]
	add r2, r9
	ldr r3, _0800809C
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r3, _080080A0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	add sl, r6
	ldrb r0, [r4, #1]
	lsrs r1, r0, #6
	adds r3, r0, #0
	cmp r1, #0
	beq _080080A8
	ldr r1, _080080A4
	b _080080AA
	.2byte 0x0000
_08008094: .4byte 0x000001FF
_08008098: .4byte 0xFFFFFE00
_0800809C: .4byte 0x000003FF
_080080A0: .4byte 0xFFFFFC00
_080080A4: .4byte gUnk_0847842C
_080080A8:
	ldr r1, _080081BC
_080080AA:
	ldrb r2, [r4, #3]
	lsrs r0, r2, #6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r6, [r0, #0]
	mov r1, r9
	adds r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r3
	movs r3, #1
	orrs r0, r3
	strb r0, [r4, #1]
	subs r1, #0xb
	adds r0, r1, #0
	ands r2, r0
	ldr r3, [sp, #0x34]
	orrs r2, r3
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #3
	movs r3, #1
	ands r0, r3
	ands r0, r3
	lsls r0, r0, #4
	subs r3, #0x12
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #4
	movs r3, #1
	ands r0, r3
	ands r0, r3
	lsls r0, r0, #5
	subs r3, #0x22
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #3]
	ldr r1, _080081C0
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #0x7f
	bls _0800811A
	b _08007F64
_0800811A:
	lsls r6, r6, #5
	mov r1, ip
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r1, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r2, [sp, #0x68]
	adds r0, r2, r0
	mov r1, sl
	adds r2, r6, #0
	bl sub_08001348
_0800813C:
	ldr r3, [sp, #0x20]
	adds r3, #1
	str r3, [sp, #0x20]
	adds r4, #8
	adds r7, #8
	mov r0, r8
	ldrh r0, [r0, #2]
	cmp r3, r0
	bhs _08008150
	b _08007FD0
_08008150:
	ldr r2, _080081C4
	ldr r4, _080081C8
	ldr r0, [r4, #0]
	lsls r1, r0, #5
	adds r2, r1, r2
	adds r0, #1
	str r0, [r4, #0]
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _0800816E
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	negs r0, r0
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
_0800816E:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0800817E
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	negs r0, r0
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
_0800817E:
	ldr r1, _080081CC
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	ldr r3, [sp, #0x14]
	orrs r3, r0
	str r3, [sp, #0]
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, [sp, #0x1c]
	orrs r0, r1
	str r0, [sp, #4]
	adds r1, r2, #6
	mov r0, sp
	movs r2, #1
	movs r3, #8
	bl sub_080B8584
	ldr r1, _080081D0
	ldr r0, [r1, #0]
	add r0, r9
	str r0, [r1, #0]
	ldr r0, [r4, #0]
_080081AA:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_080081BC: .4byte gUnk_0847843C
_080081C0: .4byte gUnk_030028B4
_080081C4: .4byte gUnk_03001330
_080081C8: .4byte gUnk_030028B0
_080081CC: .4byte 0xFFFF0000
_080081D0: .4byte gUnk_030028B8
	thumb_func_end sub_08007F0C
