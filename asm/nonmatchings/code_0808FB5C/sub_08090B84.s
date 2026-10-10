	thumb_func_start sub_08090B84
sub_08090B84: @ 0x08090B84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08090C20
	mov sl, r0
	movs r0, #0x88
	bl sub_08001494
	adds r4, r0, #0
	mov r1, sl
	str r4, [r1, #0]
	str r4, [sp, #0x10]
	adds r6, r4, #0
	adds r6, #0x44
	str r6, [sp, #0x14]
	ldr r1, _08090C24
	movs r2, #1
	negs r2, r2
	mov r9, r2
	movs r5, #0
	str r5, [sp, #0]
	movs r2, #0
	mov r3, r9
	bl sub_08065158
	strb r5, [r4, #0x1c]
	movs r0, #0xa
	strh r0, [r4, #0x3c]
	adds r0, r4, #0
	adds r0, #0x40
	strh r5, [r0, #0]
	strh r5, [r4, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x34]
	movs r3, #0xb0
	lsls r3, r3, #7
	mov r8, r3
	str r3, [r4, #0x38]
	ldr r1, _08090C28
	str r5, [sp, #0]
	adds r0, r6, #0
	movs r2, #1
	mov r3, r9
	bl sub_08065158
	movs r0, #1
	strb r0, [r6, #0x1c]
	movs r0, #0xe
	strh r0, [r6, #0x3c]
	adds r4, #0x84
	strh r5, [r4, #0]
	strh r5, [r6, #0x3e]
	ldr r0, _08090C2C
	str r0, [r6, #0x34]
	mov r4, r8
	str r4, [r6, #0x38]
	movs r7, #0
	movs r0, #0
	mov r8, r0
	mov r1, sl
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _08090C0C
	b _08090E24
_08090C0C:
	mov r2, r8
	cmp r2, #6
	bls _08090C14
	b _08090D7A
_08090C14:
	lsls r0, r2, #2
	ldr r1, _08090C30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08090C20: .4byte gUnk_0300016C
_08090C24: .4byte 0x0005008A
_08090C28: .4byte 0x000500BE
_08090C2C: .4byte 0xFFFFF000
_08090C30: .4byte _08090C34
_08090C34:
	.4byte _08090C50
_08090C38: .4byte _08090C6A
_08090C3C: .4byte _08090C9C
_08090C40: .4byte _08090CD6
_08090C44: .4byte _08090D06
_08090C48: .4byte _08090D40
_08090C4C: .4byte _08090D6C
_08090C50:
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x34]
	subs r1, #0xc0
	str r1, [r0, #0x34]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _08090C62
	b _08090D7A
_08090C62:
	movs r7, #0
	movs r3, #1
	mov r8, r3
	b _08090D7A
_08090C6A:
	ldr r2, [sp, #0x10]
	ldr r0, [r2, #0x34]
	subs r0, #0xc0
	str r0, [r2, #0x34]
	ldr r1, [sp, #0x14]
	ldr r0, [r1, #0x34]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r1, #0x34]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x1f
	bne _08090D7A
	movs r0, #0
	movs r1, #0x12
	strh r1, [r2, #0x3c]
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1, #0]
	strh r0, [r2, #0x3e]
	movs r7, #0
	movs r0, #2
	b _08090D78
_08090C9C:
	ldr r3, [sp, #0x14]
	ldr r0, [r3, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r3, #0x34]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xd
	bne _08090D7A
	ldr r1, [sp, #0x10]
	movs r2, #0
	movs r0, #2
	strh r0, [r1, #0x3c]
	adds r0, r1, #0
	adds r0, #0x40
	strh r2, [r0, #0]
	strh r2, [r1, #0x3e]
	movs r0, #6
	strh r0, [r3, #0x3c]
	adds r0, r3, #0
	adds r0, #0x40
	strh r2, [r0, #0]
	strh r2, [r3, #0x3e]
	movs r7, #0
	movs r2, #3
	mov r8, r2
	b _08090D7A
_08090CD6:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x61
	bne _08090D7A
	ldr r1, [sp, #0x10]
	movs r2, #0
	movs r0, #2
	strh r0, [r1, #0x3c]
	adds r0, r1, #0
	adds r0, #0x40
	strh r2, [r0, #0]
	strh r2, [r1, #0x3e]
	ldr r1, [sp, #0x14]
	movs r0, #0xe
	strh r0, [r1, #0x3c]
	adds r0, r1, #0
	adds r0, #0x40
	strh r2, [r0, #0]
	strh r2, [r1, #0x3e]
	movs r7, #0
	movs r3, #4
	mov r8, r3
	b _08090D7A
_08090D06:
	ldr r3, [sp, #0x10]
	ldr r0, [r3, #0x34]
	adds r0, #0xa0
	str r0, [r3, #0x34]
	ldr r4, [sp, #0x14]
	ldr r0, [r4, #0x34]
	adds r0, #0xa0
	str r0, [r4, #0x34]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x19
	bne _08090D7A
	movs r1, #0
	movs r2, #0xe
	strh r2, [r3, #0x3c]
	adds r0, r3, #0
	adds r0, #0x40
	strh r1, [r0, #0]
	strh r1, [r3, #0x3e]
	strh r2, [r4, #0x3c]
	adds r0, r4, #0
	adds r0, #0x40
	strh r1, [r0, #0]
	strh r1, [r4, #0x3e]
	movs r7, #0
	movs r4, #5
	mov r8, r4
	b _08090D7A
_08090D40:
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x34]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #0x34]
	ldr r0, [sp, #0x14]
	ldr r1, [r0, #0x34]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r1, r1, r3
	str r1, [r0, #0x34]
	ldr r0, _08090D68
	cmp r1, r0
	ble _08090D7A
	movs r7, #0
	movs r4, #6
	mov r8, r4
	b _08090D7A
	.2byte 0x0000
_08090D68: .4byte 0x00011FFF
_08090D6C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x3d
	bne _08090D7A
	movs r0, #0xff
_08090D78:
	mov r8, r0
_08090D7A:
	ldr r5, [sp, #0x10]
	ldr r1, [r5, #0xc]
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	ldrh r1, [r5, #0x3c]
	ldr r2, [sp, #0x10]
	adds r2, #0x3e
	ldr r3, [sp, #0x10]
	adds r3, #0x40
	movs r6, #1
	str r6, [sp, #0]
	ldr r0, [sp, #0x10]
	bl sub_08065370
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	ldr r1, [r5, #0x38]
	asrs r1, r1, #8
	ldrh r2, [r5, #0x3c]
	ldrh r3, [r5, #0x3e]
	movs r4, #0
	mov r9, r4
	str r4, [sp, #0]
	ldr r4, [sp, #0x10]
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r5, [sp, #0x14]
	ldr r1, [r5, #0xc]
	adds r1, #0x20
	movs r0, #0x11
	movs r2, #1
	bl sub_08000AF0
	ldrh r1, [r5, #0x3c]
	ldr r2, [sp, #0x14]
	adds r2, #0x3e
	ldr r3, [sp, #0x14]
	adds r3, #0x40
	str r6, [sp, #0]
	adds r0, r5, #0
	bl sub_08065370
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	ldr r1, [r5, #0x38]
	asrs r1, r1, #8
	ldrh r2, [r5, #0x3c]
	ldrh r3, [r5, #0x3e]
	mov r4, r9
	str r4, [sp, #0]
	ldr r4, [sp, #0x14]
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	bl sub_080003F0
	mov r0, r8
	cmp r0, #0xff
	beq _08090E14
	ldr r0, _08090E34
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08090E14
	b _08090C0C
_08090E14:
	ldr r4, _08090E34
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08090E24
	bl sub_08001538
	mov r1, r9
	str r1, [r4, #0]
_08090E24:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08090E34: .4byte gUnk_0300016C
	thumb_func_end sub_08090B84
