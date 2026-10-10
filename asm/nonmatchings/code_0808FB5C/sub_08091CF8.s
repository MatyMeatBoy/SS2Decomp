	thumb_func_start sub_08091CF8
sub_08091CF8: @ 0x08091CF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, _08091D68
	movs r0, #0x44
	bl sub_08001494
	str r0, [r4, #0]
	adds r5, r0, #0
	bl sub_0800086C
	movs r0, #0
	mov sl, r0
	ldr r1, _08091D6C
	movs r3, #1
	negs r3, r3
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08065158
	mov r0, sl
	strb r0, [r5, #0x1c]
	movs r0, #0xa
	strh r0, [r5, #0x3c]
	adds r1, r5, #0
	adds r1, #0x40
	mov r0, sl
	strh r0, [r1, #0]
	strh r0, [r5, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x34]
	movs r0, #0xb0
	lsls r0, r0, #7
	str r0, [r5, #0x38]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	movs r6, #0
	ldr r0, [r4, #0]
	mov r8, r1
	cmp r0, #0
	bne _08091D5A
	b _08091E80
_08091D5A:
	cmp r6, #1
	beq _08091DBC
	cmp r6, #1
	bgt _08091D70
	cmp r6, #0
	beq _08091D7A
	b _08091E20
_08091D68: .4byte gUnk_0300016C
_08091D6C: .4byte 0x00050019
_08091D70:
	cmp r6, #2
	beq _08091DF0
	cmp r6, #6
	beq _08091E10
	b _08091E20
_08091D7A:
	ldr r1, [r5, #0x34]
	ldr r0, _08091DB4
	adds r1, r1, r0
	str r1, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bgt _08091E20
	mov r0, sl
	cmp r0, #0
	bne _08091DA0
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091DB8
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_08091DA0:
	movs r0, #0
	str r0, [sp, #0x10]
	strb r6, [r5, #0x1c]
	movs r0, #0xa
	strh r0, [r5, #0x3c]
	mov r0, r8
	strh r6, [r0, #0]
	strh r6, [r5, #0x3e]
	movs r6, #1
	b _08091E20
_08091DB4: .4byte 0xFFFFFF00
_08091DB8: .4byte 0x0005001A
_08091DBC:
	mov r0, r9
	cmp r0, #0
	beq _08091E20
	mov r0, sl
	cmp r0, #0
	bne _08091DD8
	str r0, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08091DEC
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_08091DD8:
	movs r0, #1
	str r0, [sp, #0x10]
	movs r1, #0
	movs r0, #0xa
	strh r0, [r5, #0x3c]
	mov r0, r8
	strh r1, [r0, #0]
	strh r1, [r5, #0x3e]
	movs r6, #2
	b _08091E20
_08091DEC: .4byte 0x00050019
_08091DF0:
	ldr r1, [r5, #0x34]
	ldr r0, _08091E08
	adds r1, r1, r0
	str r1, [r5, #0x34]
	ldr r0, _08091E0C
	cmp r1, r0
	bgt _08091E20
	movs r0, #0
	str r0, [sp, #0x14]
	movs r6, #6
	b _08091E20
	.2byte 0x0000
_08091E08: .4byte 0xFFFFFF00
_08091E0C: .4byte 0xFFFFF000
_08091E10:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	cmp r0, #0x3d
	bne _08091E20
	movs r6, #0xff
_08091E20:
	ldr r1, [r5, #0xc]
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	ldrh r1, [r5, #0x3c]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r2, #0x3e
	mov r3, r8
	bl sub_08065370
	mov r9, r0
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	ldr r1, [r5, #0x38]
	asrs r1, r1, #8
	ldrh r2, [r5, #0x3c]
	ldrh r3, [r5, #0x3e]
	movs r7, #0
	str r7, [sp, #0]
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
	beq _08091E72
	ldr r0, _08091E90
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08091E72
	b _08091D5A
_08091E72:
	ldr r4, _08091E90
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08091E80
	bl sub_08001538
	str r7, [r4, #0]
_08091E80:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08091E90: .4byte gUnk_0300016C
	thumb_func_end sub_08091CF8
