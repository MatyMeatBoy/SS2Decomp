	thumb_func_start sub_08021214
sub_08021214: @ 0x08021214
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r1, _08021274
	movs r3, #1
	negs r3, r3
	movs r6, #0
	str r6, [sp, #0]
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
	lsrs r0, r4, #0x10
	mov r8, r0
	ldr r1, _08021278
	ands r1, r4
	str r1, [sp, #0x4c]
	lsrs r2, r7, #0x10
	str r2, [sp, #0x50]
	movs r0, #0xff
	ands r7, r0
	add r5, sp, #0x44
	strh r6, [r5, #0]
	mov r4, sp
	adds r4, #0x46
	strh r6, [r4, #0]
	mov r9, r6
	ldr r3, _0802127C
	adds r0, r7, r3
	bl sub_0805865C
	mov sl, r5
	b _0802130C
_08021274: .4byte 0x00050074
_08021278: .4byte 0x0000FFFF
_0802127C: .4byte 0x00000115
_08021280:
	lsls r0, r7, #0x10
	lsrs r6, r0, #0x10
	mov r4, r9
	str r4, [sp, #0]
	add r0, sp, #0x10
	adds r1, r6, #0
	mov r2, sl
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	bl sub_0800CC98
	cmp r0, #0
	bne _08021308
	bl sub_0800CD8C
	cmp r0, #0
	bne _08021308
	bl sub_0800CCCC
	adds r3, r0, #0
	cmp r3, #0
	bne _08021308
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x48
	mov r5, sp
	adds r5, #0x4a
	movs r2, #0x10
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x4c]
	mov r1, r8
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
	adds r2, r6, #0
	bl sub_08007870
_08021308:
	bl sub_080003F0
_0802130C:
	bl sub_0800CB78
	cmp r0, #0
	bne _0802131A
	mov r0, r9
	cmp r0, #0
	beq _08021280
_0802131A:
	ldr r2, _08021338
	movs r1, #1
	ldr r3, [sp, #0x50]
	lsls r1, r3
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08021338: .4byte gUnk_03005CE4
	thumb_func_end sub_08021214
