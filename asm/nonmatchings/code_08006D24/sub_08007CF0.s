	thumb_func_start sub_08007CF0
sub_08007CF0: @ 0x08007CF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0]
	str r1, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r4, [sp, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _08007D28
	ldr r6, [r0, #0]
	cmp r6, #0x7f
	bhi _08007D22
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _08007D30
_08007D22:
	movs r0, #1
	negs r0, r0
	b _08007EEA
_08007D28: .4byte gUnk_030028B4
_08007D2C:
	movs r0, #0
	b _08007EEA
_08007D30:
	ldr r0, _08007DEC
	ldr r0, [r0, #0]
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	adds r0, r0, r4
	mov r9, r0
	ldr r1, [r4, #8]
	adds r1, r4, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r9, r0
	mov r1, r9
	ldr r0, [r1, #8]
	add r0, r9
	mov r8, r0
	lsls r1, r6, #3
	ldr r0, _08007DF0
	adds r4, r1, r0
	ldr r0, _08007DF4
	ldr r2, [sp, #0x18]
	lsls r1, r2, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [sp, #0x10]
	movs r3, #0
	mov sl, r3
	movs r7, #0
	movs r0, #0
	str r0, [sp, #0x14]
	mov r1, r9
	ldrh r1, [r1, #2]
	cmp sl, r1
	blo _08007D88
	b _08007ED8
_08007D88:
	mov r2, r8
	str r2, [sp, #0xc]
	ldrh r2, [r4, #6]
	mov r3, r8
	ldr r0, [r3, #0]
	ldr r1, [r3, #4]
	str r0, [r4, #0]
	str r1, [r4, #4]
	strh r2, [r4, #6]
	ldrb r0, [r4, #1]
	movs r6, #0xd
	negs r6, r6
	ands r6, r0
	strb r6, [r4, #1]
	ldrh r0, [r4, #2]
	mov ip, r0
	mov r1, ip
	lsls r3, r1, #0x17
	asrs r3, r3, #0x17
	movs r5, #0
	ldrsb r5, [r4, r5]
	ldr r2, [sp, #4]
	adds r5, r5, r2
	ldr r0, [sp, #0]
	adds r3, r3, r0
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08007DD2
	cmp r5, #0xa0
	bgt _08007DD2
	movs r0, #0x40
	negs r0, r0
	cmp r5, r0
	bge _08007DF8
_08007DD2:
	movs r0, #0xa0
	strb r0, [r4, #0]
	ldrb r2, [r4, #1]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #1]
	ldrb r0, [r4, #3]
	ands r1, r0
	strb r1, [r4, #3]
	subs r4, #8
	b _08007EC2
	.2byte 0x0000
_08007DEC: .4byte gUnk_030028B8
_08007DF0: .4byte gUnk_03001330
_08007DF4: .4byte gUnk_030028BC
_08007DF8:
	ldr r1, [sp, #0x10]
	adds r1, r1, r7
	str r1, [sp, #0x10]
	movs r1, #3
	ldr r0, [sp, #8]
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r4, #5]
	movs r1, #0xd
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x40]
	adds r0, r2, r0
	ldrb r2, [r0, #0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldr r1, _08007E68
	adds r0, r1, #0
	ands r3, r0
	ldr r2, _08007E6C
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	orrs r0, r3
	strh r0, [r4, #2]
	strb r5, [r4, #0]
	ldr r2, [sp, #0x18]
	add r2, sl
	ldr r3, _08007E70
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r3, _08007E74
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	lsrs r0, r6, #6
	cmp r0, #0
	beq _08007E7C
	ldr r0, _08007E78
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1, #0]
	mov r1, sl
	adds r0, r1, r7
	b _08007E8C
	.2byte 0x0000
_08007E68: .4byte 0x000001FF
_08007E6C: .4byte 0xFFFFFE00
_08007E70: .4byte 0x000003FF
_08007E74: .4byte 0xFFFFFC00
_08007E78: .4byte gUnk_0847842C
_08007E7C:
	ldr r0, _08007EFC
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1, #0]
	mov r2, sl
	adds r0, r2, r7
_08007E8C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, _08007F00
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #0x7f
	bls _08007EA0
	b _08007D2C
_08007EA0:
	lsls r7, r7, #5
	ldr r3, [sp, #0xc]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r3, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r1, [sp, #0x48]
	adds r0, r1, r0
	ldr r1, [sp, #0x10]
	adds r2, r7, #0
	bl sub_08001348
_08007EC2:
	ldr r2, [sp, #0x14]
	adds r2, #1
	str r2, [sp, #0x14]
	adds r4, #8
	movs r3, #8
	add r8, r3
	mov r0, r9
	ldrh r0, [r0, #2]
	cmp r2, r0
	bhs _08007ED8
	b _08007D88
_08007ED8:
	ldr r1, _08007F04
	ldr r0, [r1, #0]
	add r0, sl
	str r0, [r1, #0]
	ldr r0, _08007F08
	ldr r2, [sp, #0x18]
	lsls r1, r2, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
_08007EEA:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08007EFC: .4byte gUnk_0847843C
_08007F00: .4byte gUnk_030028B4
_08007F04: .4byte gUnk_030028B8
_08007F08: .4byte gUnk_030028BC
	thumb_func_end sub_08007CF0
