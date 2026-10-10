	thumb_func_start sub_08021490
sub_08021490: @ 0x08021490
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	mov r8, r0
	str r1, [sp, #0x4c]
	ldr r1, _080214D8
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #1
	bl sub_08065158
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	add r1, sp, #0x44
	strh r4, [r1, #0]
	mov r0, sp
	adds r0, #0x46
	strh r4, [r0, #0]
	mov r9, r4
	mov sl, r1
	b _080215AA
	.2byte 0x0000
_080214D8: .4byte 0x0005008C
_080214DC:
	mov r0, r9
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0xb
	mov r2, sl
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	bl sub_0800CC98
	cmp r0, #0
	bne _080215A6
	bl sub_0800CD8C
	cmp r0, #0
	bne _080215A6
	bl sub_0800CCCC
	cmp r0, #0
	bne _080215A6
	mov r1, r8
	cmp r1, #3
	bhi _08021538
	ldr r1, _08021534
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r7, r0, #4
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r6, r0, #0x14
	b _08021556
_08021534: .4byte gUnk_03003CE0
_08021538:
	ldr r0, _080215D8
	ldr r1, [r0, #0]
	mov r4, r8
	lsls r0, r4, #1
	add r0, r8
	lsls r0, r0, #3
	subs r0, r0, r4
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r1, _080215DC
	adds r0, r0, r1
	ldr r1, [r0, #0x14]
	asrs r7, r1, #8
	ldr r0, [r0, #0x18]
	asrs r6, r0, #8
_08021556:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x48
	mov r5, sp
	adds r5, #0x4a
	movs r2, #0x10
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_0800BC44
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	adds r1, #1
	mov r4, sl
	ldrh r3, [r4, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #0xb
	bl sub_08007870
_080215A6:
	bl sub_080003F0
_080215AA:
	bl sub_0800CB78
	cmp r0, #0
	bne _080215B8
	mov r0, r9
	cmp r0, #0
	beq _080214DC
_080215B8:
	ldr r2, _080215E0
	movs r1, #1
	ldr r3, [sp, #0x4c]
	lsls r1, r3
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080215D8: .4byte gUnk_030056F4
_080215DC: .4byte 0xFFFFF480
_080215E0: .4byte gUnk_03005CE4
	thumb_func_end sub_08021490
