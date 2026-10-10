	thumb_func_start sub_080912CC
sub_080912CC: @ 0x080912CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, _08091310
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
	bge _08091300
	negs r0, r0
_08091300:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _08091314
	cmp r7, #1
	beq _0809132C
	b _0809133E
	.2byte 0x0000
_08091310: .4byte gUnk_0300016C
_08091314:
	ldr r1, _08091328
	movs r3, #1
	negs r3, r3
	str r7, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08065158
	b _0809133E
	.2byte 0x0000
_08091328: .4byte 0x0005001D
_0809132C:
	ldr r1, _0809137C
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08065158
_0809133E:
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
	ldr r0, _08091380
	ldr r0, [r0, #0]
	mov sl, r2
	cmp r0, #0
	bne _0809136E
	b _080914DC
_0809136E:
	cmp r6, #1
	beq _080913F4
	cmp r6, #1
	bgt _08091384
	cmp r6, #0
	beq _0809138E
	b _08091478
_0809137C: .4byte 0x0005001F
_08091380: .4byte gUnk_0300016C
_08091384:
	cmp r6, #2
	beq _08091448
	cmp r6, #6
	beq _08091468
	b _08091478
_0809138E:
	ldr r1, [r5, #0x34]
	ldr r4, _080913A8
	adds r1, r1, r4
	str r1, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bgt _08091478
	cmp r7, #0
	beq _080913AC
	cmp r7, #1
	beq _080913C4
	b _080913D4
_080913A8: .4byte 0xFFFFFF00
_080913AC:
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _080913C0
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	b _080913D4
	.2byte 0x0000
_080913C0: .4byte 0x0005001E
_080913C4:
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _080913F0
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_080913D4:
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
	b _08091478
_080913F0: .4byte 0x00050021
_080913F4:
	mov r4, r9
	cmp r4, #0
	beq _08091478
	cmp r7, #0
	beq _08091404
	cmp r7, #1
	beq _0809141C
	b _0809142E
_08091404:
	str r7, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091418
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	b _0809142E
	.2byte 0x0000
_08091418: .4byte 0x0005001D
_0809141C:
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091444
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_0809142E:
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #0xa
	strh r0, [r5, #0x3c]
	movs r0, #0
	mov r4, sl
	strh r0, [r4, #0]
	strh r0, [r5, #0x3e]
	movs r6, #2
	b _08091478
	.2byte 0x0000
_08091444: .4byte 0x0005001F
_08091448:
	ldr r1, [r5, #0x34]
	ldr r4, _08091460
	adds r1, r1, r4
	str r1, [r5, #0x34]
	ldr r0, _08091464
	cmp r1, r0
	bgt _08091478
	movs r0, #0
	str r0, [sp, #0x14]
	movs r6, #6
	b _08091478
	.2byte 0x0000
_08091460: .4byte 0xFFFFFF00
_08091464: .4byte 0xFFFFF000
_08091468:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	cmp r0, #0x3d
	bne _08091478
	movs r6, #0xff
_08091478:
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
	beq _080914CC
	ldr r0, _080914EC
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _080914CC
	b _0809136E
_080914CC:
	ldr r4, _080914EC
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _080914DC
	bl sub_08001538
	mov r0, r8
	str r0, [r4, #0]
_080914DC:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080914EC: .4byte gUnk_0300016C
	thumb_func_end sub_080912CC
