	thumb_func_start sub_080A47A0
sub_080A47A0: @ 0x080A47A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _080A47DC
	ldr r0, [r0, #0]
	movs r1, #0x81
	lsls r1, r1, #2
	adds r1, r0, r1
	str r1, [sp, #0x18]
	mov r2, sp
	adds r2, #0x12
	movs r1, #0
	strh r1, [r2, #0]
	add r0, sp, #0x10
	strh r1, [r0, #0]
	add r2, sp, #0x14
	mov sl, r2
	movs r3, #0x16
	add r3, sp
	mov r9, r3
_080A47CE:
	ldr r4, _080A47E0
	ldrb r1, [r4, #0]
	cmp r1, #0
	bne _080A47E4
	bl sub_080003F0
	b _080A47CE
_080A47DC: .4byte gUnk_03000364
_080A47E0: .4byte gUnk_030003FC
_080A47E4:
	ldr r6, _080A47F4
	ldrb r0, [r6, #0]
	cmp r0, #1
	bne _080A47F8
	adds r0, r1, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080A47FC
_080A47F4: .4byte gUnk_030003F0
_080A47F8:
	ldr r0, _080A4894
	ldrb r0, [r0, #0]
_080A47FC:
	mov r8, r0
	ldr r0, _080A4898
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0x1c]
	ldr r0, [r0, #0x18]
	str r0, [sp, #0x20]
	ldr r0, _080A489C
	ldrb r1, [r0, #0]
	lsls r1, r1, #2
	ldr r2, _080A48A0
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r4, [sp, #0x1c]
	adds r0, r4, r0
	str r0, [sp, #0x1c]
	ldr r0, _080A48A4
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x20]
	adds r0, r3, r0
	str r0, [sp, #0x20]
	ldr r5, _080A48A8
	ldr r4, _080A48AC
	ldrb r0, [r4, #0]
	movs r4, #0x34
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldr r2, _080A48B0
	ldrh r0, [r2, #0]
	strb r0, [r1, #0x1c]
	ldrh r0, [r2, #0]
	adds r0, #0x10
	ldr r2, _080A48AC
	ldrb r1, [r2, #0]
	adds r3, r1, #0
	muls r3, r4, r3
	adds r1, r5, #0
	adds r1, #0xc
	adds r3, r3, r1
	ldr r1, [sp, #0x18]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [r3, #0]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_0800CD8C
	adds r1, r0, #0
	cmp r1, #0
	bne _080A4882
	ldrb r0, [r6, #0]
	muls r0, r4, r0
	adds r0, r0, r5
	str r1, [sp, #0]
	mov r1, r8
	add r2, sp, #0x10
	mov r3, sp
	adds r3, #0x12
	bl sub_08065370
_080A4882:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A48B4
	bl sub_08097FF8
	b _080A48C2
_080A4894: .4byte gUnk_030003FC
_080A4898: .4byte gUnk_03000364
_080A489C: .4byte gUnk_030003FB
_080A48A0: .4byte gUnk_08518754
_080A48A4: .4byte gUnk_08518756
_080A48A8: .4byte gUnk_03000380
_080A48AC: .4byte gUnk_030003F0
_080A48B0: .4byte gUnk_030003E8
_080A48B4:
	ldr r3, [sp, #0x1c]
	asrs r0, r3, #8
	ldr r4, [sp, #0x20]
	asrs r1, r4, #8
	movs r2, #0
	bl sub_0800BC44
_080A48C2:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A496E
	bl sub_0800CC98
	cmp r0, #0
	bne _080A496E
	bl sub_0800CD34
	adds r7, r0, #0
	cmp r7, #0
	bne _080A496E
	ldr r0, _080A499C
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r7, [sp, #0]
	str r7, [sp, #4]
	mov r2, sl
	mov r3, r9
	bl sub_0800BC08
	mov r6, sl
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r9
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	add r2, sp, #0x10
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	ldr r4, _080A49A0
	ldrb r2, [r4, #0]
	movs r5, #0x34
	muls r2, r5, r2
	ldr r4, _080A49A4
	adds r2, r2, r4
	str r2, [sp, #4]
	movs r6, #0x1c
	negs r6, r6
	adds r6, r6, r4
	mov ip, r6
	ldr r6, _080A49A0
	ldrb r2, [r6, #0]
	muls r2, r5, r2
	subs r4, #0x14
	adds r2, r2, r4
	ldr r2, [r2, #0]
	str r2, [sp, #8]
	ldrb r2, [r6, #0]
	muls r2, r5, r2
	add r2, ip
	ldr r2, [r2, #0]
	str r2, [sp, #0xc]
	mov r2, r8
	bl sub_08007870
	adds r4, r0, #0
	ldr r1, [sp, #0x1c]
	lsls r0, r1, #8
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x20]
	lsls r1, r2, #8
	asrs r1, r1, #0x10
	str r7, [sp, #0]
	str r7, [sp, #4]
	mov r2, sl
	mov r3, r9
	bl sub_0800BC08
	mov r3, sl
	movs r6, #0
	ldrsh r0, [r3, r6]
	str r0, [r4, #8]
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	str r0, [r4, #0xc]
_080A496E:
	bl sub_080003F0
	bl sub_0800CED8
	cmp r0, #0
	bne _080A498C
	bl sub_0800CB78
	cmp r0, #0
	bne _080A498C
	bl sub_0800CD00
	cmp r0, #0
	bne _080A498C
	b _080A47CE
_080A498C:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A499C: .4byte gUnk_03000364
_080A49A0: .4byte gUnk_030003F0
_080A49A4: .4byte gUnk_0300039C
	thumb_func_end sub_080A47A0
