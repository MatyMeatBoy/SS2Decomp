	thumb_func_start sub_08091938
sub_08091938: @ 0x08091938
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, _0809197C
	movs r0, #0x44
	bl sub_08001494
	str r0, [r4, #0]
	adds r5, r0, #0
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _0809196C
	negs r0, r0
_0809196C:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _08091980
	cmp r7, #1
	beq _08091998
	b _080919AA
	.2byte 0x0000
_0809197C: .4byte gUnk_0300016C
_08091980:
	ldr r1, _08091994
	movs r3, #1
	negs r3, r3
	str r7, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08065158
	b _080919AA
	.2byte 0x0000
_08091994: .4byte 0x00050035
_08091998:
	ldr r1, _080919E8
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08065158
_080919AA:
	movs r1, #0
	strb r1, [r5, #0x1c]
	movs r0, #0xa
	strh r0, [r5, #0x3c]
	adds r2, r5, #0
	adds r2, #0x40
	strh r1, [r2, #0]
	strh r1, [r5, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x34]
	movs r0, #0xb0
	lsls r0, r0, #7
	str r0, [r5, #0x38]
	movs r0, #1
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	movs r6, #0
	ldr r0, _080919EC
	ldr r0, [r0, #0]
	mov sl, r2
	cmp r0, #0
	bne _080919DA
	b _08091B48
_080919DA:
	cmp r6, #1
	beq _08091A60
	cmp r6, #1
	bgt _080919F0
	cmp r6, #0
	beq _080919FA
	b _08091AE4
_080919E8: .4byte 0x00050037
_080919EC: .4byte gUnk_0300016C
_080919F0:
	cmp r6, #2
	beq _08091AB4
	cmp r6, #6
	beq _08091AD4
	b _08091AE4
_080919FA:
	ldr r1, [r5, #0x34]
	ldr r4, _08091A14
	adds r1, r1, r4
	str r1, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bgt _08091AE4
	cmp r7, #0
	beq _08091A18
	cmp r7, #1
	beq _08091A30
	b _08091A40
_08091A14: .4byte 0xFFFFFF00
_08091A18:
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091A2C
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	b _08091A40
	.2byte 0x0000
_08091A2C: .4byte 0x00050036
_08091A30:
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091A5C
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_08091A40:
	movs r0, #0
	mov r9, r0
	movs r1, #0
	str r1, [sp, #0x10]
	mov r4, r9
	strb r4, [r5, #0x1c]
	movs r0, #0xa
	strh r0, [r5, #0x3c]
	mov r1, r9
	mov r0, sl
	strh r1, [r0, #0]
	strh r1, [r5, #0x3e]
	movs r6, #1
	b _08091AE4
_08091A5C: .4byte 0x00050038
_08091A60:
	mov r4, r9
	cmp r4, #0
	beq _08091AE4
	cmp r7, #0
	beq _08091A70
	cmp r7, #1
	beq _08091A88
	b _08091A9A
_08091A70:
	str r7, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091A84
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	b _08091A9A
	.2byte 0x0000
_08091A84: .4byte 0x00050035
_08091A88:
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091AB0
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_08091A9A:
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #0xa
	strh r0, [r5, #0x3c]
	movs r0, #0
	mov r4, sl
	strh r0, [r4, #0]
	strh r0, [r5, #0x3e]
	movs r6, #2
	b _08091AE4
	.2byte 0x0000
_08091AB0: .4byte 0x00050037
_08091AB4:
	ldr r1, [r5, #0x34]
	ldr r4, _08091ACC
	adds r1, r1, r4
	str r1, [r5, #0x34]
	ldr r0, _08091AD0
	cmp r1, r0
	bgt _08091AE4
	movs r0, #0
	str r0, [sp, #0x14]
	movs r6, #6
	b _08091AE4
	.2byte 0x0000
_08091ACC: .4byte 0xFFFFFF00
_08091AD0: .4byte 0xFFFFF000
_08091AD4:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	cmp r0, #0x3d
	bne _08091AE4
	movs r6, #0xff
_08091AE4:
	ldr r1, [r5, #0xc]
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	ldrh r1, [r5, #0x3c]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r2, #0x3e
	mov r3, sl
	bl sub_08065370
	mov r9, r0
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	ldr r1, [r5, #0x38]
	asrs r1, r1, #8
	ldrh r2, [r5, #0x3c]
	ldrh r3, [r5, #0x3e]
	movs r4, #0
	mov r8, r4
	str r4, [sp, #0]
	adds r4, r5, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	bl sub_080003F0
	cmp r6, #0xff
	beq _08091B38
	ldr r0, _08091B58
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08091B38
	b _080919DA
_08091B38:
	ldr r4, _08091B58
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08091B48
	bl sub_08001538
	mov r0, r8
	str r0, [r4, #0]
_08091B48:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08091B58: .4byte gUnk_0300016C
	thumb_func_end sub_08091938
