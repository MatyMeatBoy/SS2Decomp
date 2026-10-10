	thumb_func_start sub_080087AC
sub_080087AC: @ 0x080087AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #0]
	str r1, [sp, #4]
	ldr r1, [sp, #0x40]
	ldr r4, [sp, #0x48]
	ldr r0, [sp, #0x50]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _080087EC
	ldr r6, [r0, #0]
	cmp r6, #0x7f
	bhi _080087E6
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _080087F4
_080087E6:
	movs r0, #1
	negs r0, r0
	b _080089BA
_080087EC: .4byte gUnk_030028B4
_080087F0:
	movs r0, #0
	b _080089BA
_080087F4:
	ldr r0, _080088B0
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
	ldr r0, _080088B4
	adds r4, r1, r0
	ldr r0, _080088B8
	ldr r2, [sp, #0x18]
	lsls r1, r2, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [sp, #0x10]
	movs r3, #0
	mov sl, r3
	movs r7, #0
	movs r5, #0
	str r5, [sp, #0x14]
	mov r0, r9
	ldrh r0, [r0, #2]
	cmp sl, r0
	blo _0800884C
	b _080089A8
_0800884C:
	mov r0, ip
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	str r0, [sp, #0x1c]
_08008856:
	mov r2, r8
	str r2, [sp, #0xc]
	ldrh r2, [r4, #6]
	mov r3, r8
	ldr r0, [r3, #0]
	ldr r1, [r3, #4]
	str r0, [r4, #0]
	str r1, [r4, #4]
	strh r2, [r4, #6]
	ldrh r5, [r4, #2]
	mov ip, r5
	mov r0, ip
	lsls r5, r0, #0x17
	asrs r5, r5, #0x17
	movs r6, #0
	ldrsb r6, [r4, r6]
	ldr r1, [sp, #4]
	adds r6, r6, r1
	ldr r2, [sp, #0]
	adds r5, r5, r2
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08008896
	cmp r6, #0xa0
	bgt _08008896
	movs r0, #0x40
	negs r0, r0
	cmp r6, r0
	bge _080088BC
_08008896:
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
	b _08008992
	.2byte 0x0000
_080088B0: .4byte gUnk_030028B8
_080088B4: .4byte gUnk_03001330
_080088B8: .4byte gUnk_030028BC
_080088BC:
	ldr r0, [sp, #8]
	movs r3, #3
	ands r0, r3
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	subs r3, #0x10
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #1]
	ldr r0, [sp, #0x10]
	adds r0, r0, r7
	str r0, [sp, #0x10]
	ldrb r0, [r4, #5]
	movs r1, #0xd
	negs r1, r1
	ands r1, r0
	ldr r2, [sp, #0x1c]
	orrs r1, r2
	strb r1, [r4, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x44]
	adds r0, r2, r0
	ldrb r2, [r0, #0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldr r1, _08008938
	adds r0, r1, #0
	ands r5, r0
	ldr r2, _0800893C
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	orrs r0, r5
	strh r0, [r4, #2]
	strb r6, [r4, #0]
	ldr r2, [sp, #0x18]
	add r2, sl
	ldr r5, _08008940
	adds r0, r5, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r5, _08008944
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	lsrs r3, r3, #6
	cmp r3, #0
	beq _0800894C
	ldr r0, _08008948
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1, #0]
	mov r1, sl
	adds r0, r1, r7
	b _0800895C
	.2byte 0x0000
_08008938: .4byte 0x000001FF
_0800893C: .4byte 0xFFFFFE00
_08008940: .4byte 0x000003FF
_08008944: .4byte 0xFFFFFC00
_08008948: .4byte gUnk_0847842C
_0800894C:
	ldr r0, _080089CC
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1, #0]
	mov r2, sl
	adds r0, r2, r7
_0800895C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, _080089D0
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #0x7f
	bls _08008970
	b _080087F0
_08008970:
	ldr r3, [sp, #0xc]
	ldrh r1, [r3, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r3, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xa
	orrs r0, r1
	lsls r7, r7, #5
	lsls r0, r0, #5
	ldr r5, [sp, #0x4c]
	adds r0, r5, r0
	ldr r1, [sp, #0x10]
	adds r2, r7, #0
	bl sub_08001348
_08008992:
	ldr r0, [sp, #0x14]
	adds r0, #1
	str r0, [sp, #0x14]
	adds r4, #8
	movs r1, #8
	add r8, r1
	mov r2, r9
	ldrh r2, [r2, #2]
	cmp r0, r2
	bhs _080089A8
	b _08008856
_080089A8:
	ldr r1, _080089D4
	ldr r0, [r1, #0]
	add r0, sl
	str r0, [r1, #0]
	ldr r0, _080089D8
	ldr r3, [sp, #0x18]
	lsls r1, r3, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
_080089BA:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_080089CC: .4byte gUnk_0847843C
_080089D0: .4byte gUnk_030028B4
_080089D4: .4byte gUnk_030028B8
_080089D8: .4byte gUnk_030028BC
	thumb_func_end sub_080087AC
