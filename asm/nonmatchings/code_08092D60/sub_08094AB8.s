	thumb_func_start sub_08094AB8
sub_08094AB8: @ 0x08094AB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe8
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	movs r0, #0xff
	lsls r0, r0, #0x18
	adds r1, r1, r0
	asrs r7, r1, #0x18
	ldr r2, _08094B38
	adds r1, r7, r2
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x18
	movs r2, #7
	adds r3, r5, #0
	bl sub_08065158
	mov r0, sp
	adds r0, #0x3b
	movs r1, #0
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0]
	add r0, sp, #0x4c
	mov r9, r0
	ldr r1, _08094B3C
	str r4, [sp, #0]
	movs r2, #8
	adds r3, r5, #0
	bl sub_08065158
	add r6, sp, #0x80
	ldr r1, _08094B40
	str r4, [sp, #0]
	adds r0, r6, #0
	movs r2, #8
	adds r3, r5, #0
	bl sub_08065158
	mov r0, sp
	adds r0, #0x6f
	mov r1, r8
	strb r1, [r0, #0]
	add r0, sp, #0xa4
	strb r4, [r0, #0]
	cmp r7, #1
	beq _08094B5A
	cmp r7, #1
	bgt _08094B44
	cmp r7, #0
	beq _08094B4E
	b _08094B82
_08094B38: .4byte 0x00050036
_08094B3C: .4byte 0x0005003A
_08094B40: .4byte 0x0005003B
_08094B44:
	cmp r7, #2
	beq _08094B68
	cmp r7, #3
	beq _08094B76
	b _08094B82
_08094B4E:
	movs r2, #0xf0
	lsls r2, r2, #7
	str r2, [sp, #0xc4]
	movs r0, #0xe0
	lsls r0, r0, #7
	b _08094B80
_08094B5A:
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [sp, #0xc4]
	movs r2, #0xe0
	lsls r2, r2, #7
	str r2, [sp, #0xc8]
	b _08094B82
_08094B68:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [sp, #0xc4]
	movs r1, #0xc0
	lsls r1, r1, #7
	str r1, [sp, #0xc8]
	b _08094B82
_08094B76:
	movs r2, #0x80
	lsls r2, r2, #8
	str r2, [sp, #0xc4]
	movs r0, #0xd0
	lsls r0, r0, #7
_08094B80:
	str r0, [sp, #0xc8]
_08094B82:
	movs r1, #0
	str r1, [sp, #0xd8]
	mov r9, r1
	movs r2, #0
	add r0, sp, #0xb4
	mov r8, r0
	mov r1, sp
	adds r1, #0xbc
	str r1, [sp, #0xe4]
	mov r5, r8
	adds r4, r1, #0
	movs r3, #0
_08094B9A:
	lsls r0, r2, #1
	adds r1, r5, r0
	adds r0, r4, r0
	strh r3, [r0, #0]
	strh r3, [r1, #0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _08094B9A
	movs r5, #4
	movs r0, #6
	bl sub_0801AB50
	b _08094BBC
_08094BB8:
	bl sub_080003F0
_08094BBC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08094BB8
	ldr r0, _08094BE0
	bl sub_0805865C
	mov r2, sp
	adds r2, #0x4c
	str r2, [sp, #0xdc]
	str r6, [sp, #0xe0]
_08094BD2:
	cmp r5, #2
	beq _08094C32
	cmp r5, #2
	bgt _08094BE4
	cmp r5, #1
	beq _08094CA0
	b _08094CB0
_08094BE0: .4byte 0x0000019B
_08094BE4:
	cmp r5, #3
	beq _08094C0C
	cmp r5, #4
	bne _08094CB0
	mov r1, r9
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r1, #0x78
	bls _08094CB0
	movs r0, #0
	mov r9, r0
	movs r5, #3
	ldr r0, _08094C08
	bl sub_0805865C
	b _08094CB0
_08094C08: .4byte 0x0000019D
_08094C0C:
	ldr r0, _08094C20
	ldr r1, [sp, #0xc8]
	cmp r1, r0
	bgt _08094C24
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r2, r1, r2
	str r2, [sp, #0xc8]
	b _08094CB0
	.2byte 0x0000
_08094C20: .4byte 0x00011FFF
_08094C24:
	movs r0, #0xf0
	str r0, [sp, #0xd4]
	movs r5, #2
	adds r0, #0xac
	bl sub_0805865C
	b _08094CB0
_08094C32:
	ldr r1, [sp, #0xd4]
	cmp r1, #0
	beq _08094C7C
	ldr r1, _08094C78
	ldr r0, [sp, #0xd8]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r2, [sp, #0xd4]
	muls r0, r2, r0
	movs r2, #0xf0
	lsls r2, r2, #7
	adds r2, r0, r2
	str r2, [sp, #0xcc]
	ldr r2, [sp, #0xd8]
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #0xd4]
	muls r0, r2, r0
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r1, r0, r1
	str r1, [sp, #0xd0]
	subs r2, #4
	str r2, [sp, #0xd4]
	ldr r0, [sp, #0xd8]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xd8]
	b _08094C96
_08094C78: .4byte gUnk_080B9704
_08094C7C:
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r2, #0xf0
	str r2, [sp, #0xd4]
	cmp r0, #0
	beq _08094C9C
	movs r0, #0xce
	lsls r0, r0, #1
	bl sub_0805865C
_08094C96:
	mov r0, sl
	cmp r0, #0
	bne _08094CB0
_08094C9C:
	movs r5, #1
	b _08094CB0
_08094CA0:
	mov r1, r9
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r1, #0x78
	bls _08094CB0
	movs r5, #0
_08094CB0:
	cmp r5, #2
	bls _08094CF8
	ldr r1, [sp, #0x24]
	adds r1, #0xe0
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x18
	movs r1, #0
	mov r2, r8
	ldr r3, [sp, #0xe4]
	bl sub_08065370
	ldr r1, [sp, #0xc4]
	asrs r0, r1, #8
	mov r2, r8
	ldrh r3, [r2, #0]
	movs r1, #0
	str r1, [sp, #0]
	add r1, sp, #0x34
	str r1, [sp, #4]
	ldr r1, [sp, #0x20]
	str r1, [sp, #8]
	ldr r1, [sp, #0x18]
	str r1, [sp, #0xc]
	movs r1, #0
	movs r2, #0
	bl sub_08007870
	adds r1, r0, #0
	ldr r2, [sp, #0xc8]
	asrs r0, r2, #8
	str r0, [r1, #0xc]
_08094CF8:
	cmp r5, #2
	bne _08094D96
	ldr r0, [sp, #0xdc]
	ldr r1, [r0, #0xc]
	adds r1, #0xe0
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	movs r4, #1
	str r4, [sp, #0]
	ldr r0, [sp, #0xdc]
	movs r1, #0
	mov r2, sp
	adds r2, #0xb6
	mov r3, sp
	adds r3, #0xbe
	bl sub_08065370
	ldr r1, [sp, #0xcc]
	asrs r6, r1, #8
	ldr r2, [sp, #0xd0]
	asrs r7, r2, #8
	mov r0, r8
	ldrh r3, [r0, #2]
	str r4, [sp, #0]
	add r0, sp, #0x68
	str r0, [sp, #4]
	ldr r1, [sp, #0xdc]
	ldr r0, [r1, #8]
	str r0, [sp, #8]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08007870
	ldr r0, _08094DB4
	ldr r0, [r0, #0]
	ands r0, r4
	cmp r0, #0
	beq _08094D96
	ldr r2, [sp, #0xe0]
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x11
	movs r2, #1
	bl sub_08000AF0
	str r4, [sp, #0]
	ldr r0, [sp, #0xe0]
	movs r1, #0
	add r2, sp, #0xb8
	add r3, sp, #0xc0
	bl sub_08065370
	mov r1, r8
	ldrh r3, [r1, #4]
	str r4, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r0, sp, #0x9c
	str r0, [sp, #0xc]
	ldr r2, [sp, #0xe0]
	ldr r0, [r2, #8]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x80]
	str r0, [sp, #0x14]
	adds r0, r6, #0
	movs r1, #0x9f
	movs r2, #0
	bl sub_08007974
	adds r1, r0, #0
	str r7, [r1, #0xc]
_08094D96:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	bne _08094DA4
	movs r5, #0
_08094DA4:
	cmp r5, #0
	beq _08094DAA
	b _08094BD2
_08094DAA:
	movs r0, #6
	bl sub_0801ABE8
	b _08094DBC
	.2byte 0x0000
_08094DB4: .4byte gUnk_03002344
_08094DB8:
	bl sub_080003F0
_08094DBC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08094DB8
	movs r0, #3
	bl sub_080586D0
	bl sub_08094EA4
	bl sub_0800CC18
	bl sub_0800CC68
	bl sub_08098028
	add sp, #0xe8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08094AB8
