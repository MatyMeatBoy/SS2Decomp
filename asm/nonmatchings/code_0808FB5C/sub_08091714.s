	thumb_func_start sub_08091714
sub_08091714: @ 0x08091714
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, _08091758
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
	bge _08091748
	negs r0, r0
_08091748:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _0809175C
	cmp r7, #1
	beq _08091774
	b _08091786
	.2byte 0x0000
_08091758: .4byte gUnk_0300016C
_0809175C:
	ldr r1, _08091770
	movs r3, #1
	negs r3, r3
	str r7, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08065158
	b _08091786
	.2byte 0x0000
_08091770: .4byte 0x00050030
_08091774:
	ldr r1, _080917C4
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08065158
_08091786:
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
	ldr r0, _080917C8
	ldr r0, [r0, #0]
	mov sl, r2
	cmp r0, #0
	bne _080917B6
	b _08091924
_080917B6:
	cmp r6, #1
	beq _0809183C
	cmp r6, #1
	bgt _080917CC
	cmp r6, #0
	beq _080917D6
	b _080918C0
_080917C4: .4byte 0x00050031
_080917C8: .4byte gUnk_0300016C
_080917CC:
	cmp r6, #2
	beq _08091890
	cmp r6, #6
	beq _080918B0
	b _080918C0
_080917D6:
	ldr r1, [r5, #0x34]
	ldr r4, _080917F0
	adds r1, r1, r4
	str r1, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bgt _080918C0
	cmp r7, #0
	beq _080917F4
	cmp r7, #1
	beq _0809180C
	b _0809181C
_080917F0: .4byte 0xFFFFFF00
_080917F4:
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091808
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	b _0809181C
	.2byte 0x0000
_08091808: .4byte 0x00050033
_0809180C:
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091838
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_0809181C:
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
	b _080918C0
_08091838: .4byte 0x00050032
_0809183C:
	mov r4, r9
	cmp r4, #0
	beq _080918C0
	cmp r7, #0
	beq _0809184C
	cmp r7, #1
	beq _08091864
	b _08091876
_0809184C:
	str r7, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091860
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	b _08091876
	.2byte 0x0000
_08091860: .4byte 0x00050030
_08091864:
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	ldr r1, _0809188C
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_08091876:
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #0xa
	strh r0, [r5, #0x3c]
	movs r0, #0
	mov r4, sl
	strh r0, [r4, #0]
	strh r0, [r5, #0x3e]
	movs r6, #2
	b _080918C0
	.2byte 0x0000
_0809188C: .4byte 0x00050031
_08091890:
	ldr r1, [r5, #0x34]
	ldr r4, _080918A8
	adds r1, r1, r4
	str r1, [r5, #0x34]
	ldr r0, _080918AC
	cmp r1, r0
	bgt _080918C0
	movs r0, #0
	str r0, [sp, #0x14]
	movs r6, #6
	b _080918C0
	.2byte 0x0000
_080918A8: .4byte 0xFFFFFF00
_080918AC: .4byte 0xFFFFF000
_080918B0:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	cmp r0, #0x3d
	bne _080918C0
	movs r6, #0xff
_080918C0:
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
	beq _08091914
	ldr r0, _08091934
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08091914
	b _080917B6
_08091914:
	ldr r4, _08091934
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08091924
	bl sub_08001538
	mov r0, r8
	str r0, [r4, #0]
_08091924:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08091934: .4byte gUnk_0300016C
	thumb_func_end sub_08091714
