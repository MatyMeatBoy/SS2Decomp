	thumb_func_start sub_080914F0
sub_080914F0: @ 0x080914F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, _08091534
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
	bge _08091524
	negs r0, r0
_08091524:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _08091538
	cmp r7, #1
	beq _08091550
	b _08091562
	.2byte 0x0000
_08091534: .4byte gUnk_0300016C
_08091538:
	ldr r1, _0809154C
	movs r3, #1
	negs r3, r3
	str r7, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08065158
	b _08091562
	.2byte 0x0000
_0809154C: .4byte 0x0005002B
_08091550:
	ldr r1, _080915A0
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08065158
_08091562:
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
	ldr r0, _080915A4
	ldr r0, [r0, #0]
	mov sl, r2
	cmp r0, #0
	bne _08091592
	b _08091700
_08091592:
	cmp r6, #1
	beq _08091618
	cmp r6, #1
	bgt _080915A8
	cmp r6, #0
	beq _080915B2
	b _0809169C
_080915A0: .4byte 0x0005002A
_080915A4: .4byte gUnk_0300016C
_080915A8:
	cmp r6, #2
	beq _0809166C
	cmp r6, #6
	beq _0809168C
	b _0809169C
_080915B2:
	ldr r1, [r5, #0x34]
	ldr r4, _080915CC
	adds r1, r1, r4
	str r1, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bgt _0809169C
	cmp r7, #0
	beq _080915D0
	cmp r7, #1
	beq _080915E8
	b _080915F8
_080915CC: .4byte 0xFFFFFF00
_080915D0:
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _080915E4
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	b _080915F8
	.2byte 0x0000
_080915E4: .4byte 0x0005002C
_080915E8:
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091614
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_080915F8:
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
	b _0809169C
_08091614: .4byte 0x0005002D
_08091618:
	mov r4, r9
	cmp r4, #0
	beq _0809169C
	cmp r7, #0
	beq _08091628
	cmp r7, #1
	beq _08091640
	b _08091652
_08091628:
	str r7, [sp, #0]
	adds r0, r5, #0
	ldr r1, _0809163C
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	b _08091652
	.2byte 0x0000
_0809163C: .4byte 0x0005002B
_08091640:
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091668
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_08091652:
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #0xa
	strh r0, [r5, #0x3c]
	movs r0, #0
	mov r4, sl
	strh r0, [r4, #0]
	strh r0, [r5, #0x3e]
	movs r6, #2
	b _0809169C
	.2byte 0x0000
_08091668: .4byte 0x0005002A
_0809166C:
	ldr r1, [r5, #0x34]
	ldr r4, _08091684
	adds r1, r1, r4
	str r1, [r5, #0x34]
	ldr r0, _08091688
	cmp r1, r0
	bgt _0809169C
	movs r0, #0
	str r0, [sp, #0x14]
	movs r6, #6
	b _0809169C
	.2byte 0x0000
_08091684: .4byte 0xFFFFFF00
_08091688: .4byte 0xFFFFF000
_0809168C:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	cmp r0, #0x3d
	bne _0809169C
	movs r6, #0xff
_0809169C:
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
	beq _080916F0
	ldr r0, _08091710
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _080916F0
	b _08091592
_080916F0:
	ldr r4, _08091710
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08091700
	bl sub_08001538
	mov r0, r8
	str r0, [r4, #0]
_08091700:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08091710: .4byte gUnk_0300016C
	thumb_func_end sub_080914F0
