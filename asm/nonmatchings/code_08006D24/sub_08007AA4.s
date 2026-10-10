	thumb_func_start sub_08007AA4
sub_08007AA4: @ 0x08007AA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	ldr r0, _08007AD0
	ldr r3, [r0, #0]
	cmp r3, #0x7f
	bhi _08007AC8
	mov r0, r8
	ldr r2, [r0, #0x14]
	ldrh r0, [r2, #2]
	mov r1, r8
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	bhs _08007AD8
_08007AC8:
	movs r0, #1
	negs r0, r0
	b _08007CCE
	.2byte 0x0000
_08007AD0: .4byte gUnk_030028B4
_08007AD4:
	movs r0, #0
	b _08007CCE
_08007AD8:
	ldr r0, _08007BC4
	ldr r0, [r0, #0]
	str r0, [sp, #0xc]
	ldr r0, [r2, #4]
	adds r0, r0, r2
	mov sl, r0
	ldr r1, [r2, #8]
	adds r1, r2, r1
	mov r4, r8
	ldrh r2, [r4, #0x10]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r1, [r1, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add sl, r0
	mov r7, sl
	ldr r0, [r7, #8]
	add r0, sl
	mov r9, r0
	lsls r1, r3, #3
	ldr r0, _08007BC8
	adds r4, r1, r0
	ldr r0, _08007BCC
	ldr r2, [sp, #0xc]
	lsls r1, r2, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [sp, #4]
	movs r3, #0
	str r3, [sp, #0x10]
	movs r7, #0
	movs r0, #0
	str r0, [sp, #8]
	mov r1, sl
	ldrh r1, [r1, #2]
	cmp r3, r1
	blo _08007B36
	b _08007CBA
_08007B36:
	mov r2, r8
	adds r2, #0x22
	str r2, [sp, #0x14]
_08007B3C:
	mov r3, r9
	str r3, [sp, #0]
	ldrh r2, [r4, #6]
	ldr r0, [r3, #0]
	ldr r1, [r3, #4]
	str r0, [r4, #0]
	str r1, [r4, #4]
	strh r2, [r4, #6]
	ldr r1, [sp, #0x14]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	movs r2, #3
	ands r0, r2
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	subs r2, #0x10
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #1]
	ldr r3, [sp, #0x14]
	ldrb r0, [r3, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	lsls r0, r0, #4
	movs r3, #0x11
	negs r3, r3
	adds r1, r3, #0
	adds r6, r2, #0
	ands r6, r1
	orrs r6, r0
	strb r6, [r4, #1]
	ldrh r0, [r4, #2]
	mov ip, r0
	mov r1, ip
	lsls r3, r1, #0x17
	asrs r3, r3, #0x17
	movs r5, #0
	ldrsb r5, [r4, r5]
	mov r2, r8
	ldr r0, [r2, #0xc]
	adds r5, r5, r0
	ldr r0, [r2, #8]
	adds r3, r3, r0
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08007BAC
	cmp r5, #0xa0
	bgt _08007BAC
	movs r0, #0x40
	negs r0, r0
	cmp r5, r0
	bge _08007BD0
_08007BAC:
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
	b _08007CA4
_08007BC4: .4byte gUnk_030028B8
_08007BC8: .4byte gUnk_03001330
_08007BCC: .4byte gUnk_030028BC
_08007BD0:
	ldr r0, [sp, #4]
	adds r0, r0, r7
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	movs r2, #3
	ands r0, r2
	lsls r0, r0, #2
	ldrb r2, [r4, #5]
	movs r1, #0xd
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #5]
	lsrs r2, r1, #4
	mov r7, r8
	ldr r0, [r7, #0x1c]
	adds r0, r0, r2
	ldrb r2, [r0, #0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldr r1, _08007C48
	adds r0, r1, #0
	ands r3, r0
	ldr r2, _08007C4C
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	orrs r0, r3
	strh r0, [r4, #2]
	strb r5, [r4, #0]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	adds r2, r0, r1
	ldr r3, _08007C50
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r7, _08007C54
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	lsrs r0, r6, #6
	cmp r0, #0
	beq _08007C5C
	ldr r0, _08007C58
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1, #0]
	ldr r1, [sp, #0x10]
	adds r0, r1, r7
	b _08007C6C
_08007C48: .4byte 0x000001FF
_08007C4C: .4byte 0xFFFFFE00
_08007C50: .4byte 0x000003FF
_08007C54: .4byte 0xFFFFFC00
_08007C58: .4byte gUnk_0847842C
_08007C5C:
	ldr r0, _08007CE0
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1, #0]
	ldr r2, [sp, #0x10]
	adds r0, r2, r7
_08007C6C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, _08007CE4
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #0x7f
	bls _08007C80
	b _08007AD4
_08007C80:
	lsls r7, r7, #5
	ldr r3, [sp, #0]
	ldrh r1, [r3, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r3, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xa
	orrs r1, r0
	lsls r1, r1, #5
	mov r2, r8
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	ldr r1, [sp, #4]
	adds r2, r7, #0
	bl sub_08001348
_08007CA4:
	ldr r3, [sp, #8]
	adds r3, #1
	str r3, [sp, #8]
	adds r4, #8
	movs r0, #8
	add r9, r0
	mov r1, sl
	ldrh r1, [r1, #2]
	cmp r3, r1
	bhs _08007CBA
	b _08007B3C
_08007CBA:
	ldr r1, _08007CE8
	ldr r0, [r1, #0]
	ldr r2, [sp, #0x10]
	adds r0, r0, r2
	str r0, [r1, #0]
	ldr r0, _08007CEC
	ldr r3, [sp, #0xc]
	lsls r1, r3, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
_08007CCE:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08007CE0: .4byte gUnk_0847843C
_08007CE4: .4byte gUnk_030028B4
_08007CE8: .4byte gUnk_030028B8
_08007CEC: .4byte gUnk_030028BC
	thumb_func_end sub_08007AA4
