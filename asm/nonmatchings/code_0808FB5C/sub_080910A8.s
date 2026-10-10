	thumb_func_start sub_080910A8
sub_080910A8: @ 0x080910A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, _080910EC
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
	bge _080910DC
	negs r0, r0
_080910DC:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _080910F0
	cmp r7, #1
	beq _08091108
	b _0809111A
	.2byte 0x0000
_080910EC: .4byte gUnk_0300016C
_080910F0:
	ldr r1, _08091104
	movs r3, #1
	negs r3, r3
	str r7, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08065158
	b _0809111A
	.2byte 0x0000
_08091104: .4byte 0x00050022
_08091108:
	ldr r1, _08091158
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08065158
_0809111A:
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
	ldr r0, _0809115C
	ldr r0, [r0, #0]
	mov sl, r2
	cmp r0, #0
	bne _0809114A
	b _080912B8
_0809114A:
	cmp r6, #1
	beq _080911D0
	cmp r6, #1
	bgt _08091160
	cmp r6, #0
	beq _0809116A
	b _08091254
_08091158: .4byte 0x00050023
_0809115C: .4byte gUnk_0300016C
_08091160:
	cmp r6, #2
	beq _08091224
	cmp r6, #6
	beq _08091244
	b _08091254
_0809116A:
	ldr r1, [r5, #0x34]
	ldr r4, _08091184
	adds r1, r1, r4
	str r1, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bgt _08091254
	cmp r7, #0
	beq _08091188
	cmp r7, #1
	beq _080911A0
	b _080911B0
_08091184: .4byte 0xFFFFFF00
_08091188:
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _0809119C
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	b _080911B0
	.2byte 0x0000
_0809119C: .4byte 0x00050024
_080911A0:
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _080911CC
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_080911B0:
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
	b _08091254
_080911CC: .4byte 0x00050025
_080911D0:
	mov r4, r9
	cmp r4, #0
	beq _08091254
	cmp r7, #0
	beq _080911E0
	cmp r7, #1
	beq _080911F8
	b _0809120A
_080911E0:
	str r7, [sp, #0]
	adds r0, r5, #0
	ldr r1, _080911F4
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	b _0809120A
	.2byte 0x0000
_080911F4: .4byte 0x00050022
_080911F8:
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091220
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_0809120A:
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #0xa
	strh r0, [r5, #0x3c]
	movs r0, #0
	mov r4, sl
	strh r0, [r4, #0]
	strh r0, [r5, #0x3e]
	movs r6, #2
	b _08091254
	.2byte 0x0000
_08091220: .4byte 0x00050023
_08091224:
	ldr r1, [r5, #0x34]
	ldr r4, _0809123C
	adds r1, r1, r4
	str r1, [r5, #0x34]
	ldr r0, _08091240
	cmp r1, r0
	bgt _08091254
	movs r0, #0
	str r0, [sp, #0x14]
	movs r6, #6
	b _08091254
	.2byte 0x0000
_0809123C: .4byte 0xFFFFFF00
_08091240: .4byte 0xFFFFF000
_08091244:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	cmp r0, #0x3d
	bne _08091254
	movs r6, #0xff
_08091254:
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
	beq _080912A8
	ldr r0, _080912C8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _080912A8
	b _0809114A
_080912A8:
	ldr r4, _080912C8
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _080912B8
	bl sub_08001538
	mov r0, r8
	str r0, [r4, #0]
_080912B8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080912C8: .4byte gUnk_0300016C
	thumb_func_end sub_080910A8
