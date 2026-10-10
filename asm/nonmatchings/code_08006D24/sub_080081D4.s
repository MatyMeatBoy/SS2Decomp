	thumb_func_start sub_080081D4
sub_080081D4: @ 0x080081D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r4, [sp, #0x50]
	ldr r7, [sp, #0x58]
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	ldr r5, [sp, #0x68]
	ldr r6, [sp, #0x6c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r9, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
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
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r4, _0800822C
	ldr r0, [r4, #0]
	cmp r0, #0x7f
	bhi _08008226
	ldrh r0, [r7, #2]
	cmp r0, r2
	bhs _08008230
_08008226:
	movs r0, #1
	negs r0, r0
	b _080084E8
_0800822C: .4byte gUnk_030028B4
_08008230:
	bl sub_0801AAE0
	movs r1, #0
	cmp r0, #0
	beq _0800823C
	adds r1, r6, #0
_0800823C:
	adds r6, r1, #0
	ldr r0, _0800836C
	ldr r0, [r0, #0]
	str r0, [sp, #0x24]
	ldr r0, _08008370
	ldr r0, [r0, #0]
	str r0, [sp, #0x28]
	ldr r0, [r7, #4]
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r7, #8]
	adds r1, r7, r1
	mov r2, r9
	lsls r0, r2, #1
	add r0, r9
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	mov r3, sl
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r2, r1, r0
	ldr r0, [r4, #0]
	lsls r0, r0, #3
	ldr r1, _08008374
	adds r5, r0, r1
	ldr r0, _08008378
	ldr r3, [sp, #0x24]
	lsls r1, r3, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [sp, #0x20]
	movs r0, #0
	mov sl, r0
	movs r7, #0
	movs r1, #0
	mov r9, r1
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp sl, r3
	blo _080082A0
	b _0800844C
_080082A0:
	movs r0, #3
	ands r6, r0
	lsls r6, r6, #2
	str r6, [sp, #0x2c]
	adds r6, r2, #0
_080082AA:
	ldrh r2, [r5, #6]
	ldr r0, [r6, #0]
	ldr r1, [r6, #4]
	str r0, [r5, #0]
	str r1, [r5, #4]
	strh r2, [r5, #6]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]
	ldr r1, [sp, #0xc]
	adds r4, r4, r1
	ldr r2, [sp, #8]
	adds r3, r3, r2
	ldr r0, [sp, #0x10]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r5, #5]
	subs r1, #0x10
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x54]
	adds r0, r2, r0
	ldrb r2, [r0, #0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #5]
	ldrb r1, [r5, #1]
	subs r0, #0x1c
	ands r0, r1
	ldr r1, [sp, #0x2c]
	orrs r0, r1
	strb r0, [r5, #1]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08008310
	cmp r4, #0xa0
	bgt _08008310
	movs r0, #0x40
	negs r0, r0
	cmp r4, r0
	bge _08008322
_08008310:
	ldrb r2, [r5, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #3]
	ldrb r0, [r5, #1]
	ands r1, r0
	strb r1, [r5, #1]
	movs r4, #0xa0
_08008322:
	ldr r2, _0800837C
	adds r0, r2, #0
	ands r3, r0
	ldrh r0, [r5, #2]
	ldr r2, _08008380
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r4, [r5, #0]
	ldr r2, [sp, #0x24]
	add r2, sl
	ldr r3, _08008384
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r5, #4]
	ldr r3, _08008388
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #4]
	ldr r0, [sp, #0x20]
	adds r0, r0, r7
	str r0, [sp, #0x20]
	ldrb r0, [r6, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08008390
	ldr r0, _0800838C
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1, #0]
	mov r1, sl
	adds r0, r1, r7
	b _080083A0
_0800836C: .4byte gUnk_030028B8
_08008370: .4byte gUnk_030028B0
_08008374: .4byte gUnk_03001330
_08008378: .4byte gUnk_030028BC
_0800837C: .4byte 0x000001FF
_08008380: .4byte 0xFFFFFE00
_08008384: .4byte 0x000003FF
_08008388: .4byte 0xFFFFFC00
_0800838C: .4byte gUnk_0847842C
_08008390:
	ldr r0, _080084AC
	ldrb r1, [r6, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1, #0]
	mov r2, sl
	adds r0, r2, r7
_080083A0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrb r0, [r5, #1]
	movs r3, #4
	negs r3, r3
	adds r1, r3, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #1]
	ldrb r1, [r6, #3]
	lsls r2, r1, #0x1c
	lsrs r2, r2, #0x1d
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	orrs r2, r0
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	lsls r1, r1, #4
	orrs r2, r1
	ldr r3, [sp, #0x28]
	adds r2, r2, r3
	movs r0, #7
	ands r2, r0
	lsls r2, r2, #1
	ldrb r3, [r5, #3]
	movs r1, #0xf
	negs r1, r1
	adds r0, r1, #0
	ands r3, r0
	orrs r3, r2
	ldr r2, [sp, #0x28]
	lsrs r0, r2, #3
	movs r1, #1
	ands r0, r1
	ands r0, r1
	lsls r0, r0, #4
	movs r2, #0x11
	negs r2, r2
	adds r1, r2, #0
	ands r3, r1
	orrs r3, r0
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #4
	movs r2, #1
	ands r0, r2
	ands r0, r2
	lsls r0, r0, #5
	subs r2, #0x22
	adds r1, r2, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r5, #3]
	ldr r1, _080084B0
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #0x7f
	bhi _080084C0
	lsls r7, r7, #5
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r6, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r3, [sp, #0x5c]
	adds r0, r3, r0
	ldr r1, [sp, #0x20]
	adds r2, r7, #0
	bl sub_08001348
	movs r0, #1
	add r9, r0
	adds r5, #8
	adds r6, #8
	mov r1, r8
	ldrh r1, [r1, #2]
	cmp r9, r1
	bhs _0800844C
	b _080082AA
_0800844C:
	ldr r6, _080084B4
	ldr r2, _080084B8
	ldr r0, [r2, #0]
	lsls r1, r0, #5
	adds r6, r1, r6
	adds r0, #1
	str r0, [r2, #0]
	mov r2, r8
	ldrh r0, [r2, #0]
	cmp r0, #0
	beq _080084C4
	ldr r0, [r2, #4]
	adds r4, r2, r0
	movs r3, #0
	mov r9, r3
	ldrh r0, [r2, #0]
	cmp r9, r0
	bhs _080084DC
	ldr r7, _080084BC
	mov r5, sp
_08008474:
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x10
	ldrh r0, [r4, #4]
	orrs r0, r1
	str r0, [sp, #0]
	ldrh r1, [r4, #0]
	ldr r0, [r5, #4]
	ands r0, r7
	orrs r0, r1
	str r0, [r5, #4]
	adds r1, r6, #6
	mov r0, sp
	movs r2, #1
	movs r3, #8
	bl sub_080B8584
	adds r6, #0x20
	ldr r1, _080084B8
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	movs r1, #1
	add r9, r1
	mov r2, r8
	ldrh r2, [r2, #0]
	cmp r9, r2
	blo _08008474
	b _080084DC
_080084AC: .4byte gUnk_0847843C
_080084B0: .4byte gUnk_030028B4
_080084B4: .4byte gUnk_03001330
_080084B8: .4byte gUnk_030028B0
_080084BC: .4byte 0xFFFF0000
_080084C0:
	movs r0, #0
	b _080084E8
_080084C4:
	mov r0, sp
	ldrh r3, [r0, #0x14]
	strh r3, [r0, #0]
	ldrh r1, [r0, #0x18]
	strh r1, [r0, #2]
	ldrh r2, [r0, #0x1c]
	strh r2, [r0, #4]
	adds r1, r6, #6
	movs r2, #1
	movs r3, #8
	bl sub_080B8584
_080084DC:
	ldr r1, _080084F8
	ldr r0, [r1, #0]
	add r0, sl
	str r0, [r1, #0]
	ldr r0, _080084FC
	ldr r0, [r0, #0]
_080084E8:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080084F8: .4byte gUnk_030028B8
_080084FC: .4byte gUnk_030028B0
	thumb_func_end sub_080081D4
