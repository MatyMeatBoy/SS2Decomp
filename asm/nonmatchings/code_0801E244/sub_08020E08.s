	thumb_func_start sub_08020E08
sub_08020E08: @ 0x08020E08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	mov r8, r0
	mov sl, r1
	ldr r1, _08020E5C
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
	add r5, sp, #0x44
	strh r6, [r5, #0]
	mov r4, sp
	adds r4, #0x46
	strh r6, [r4, #0]
	mov r9, r6
	bl sub_0800CCCC
	cmp r0, #0
	bne _08020F38
	movs r0, #0xc0
	lsls r0, r0, #1
	bl sub_0805865C
	b _08020F38
_08020E5C: .4byte 0x0005008C
_08020E60:
	mov r0, r9
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #8
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	bl sub_0800CC98
	cmp r0, #0
	bne _08020F34
	bl sub_0800CD8C
	cmp r0, #0
	bne _08020F34
	bl sub_0800CCCC
	cmp r0, #0
	bne _08020F34
	mov r1, r8
	cmp r1, #3
	bhi _08020EB8
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r1, _08020EB4
	adds r0, r0, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r4, r0, #4
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r6, r0, #0x14
	b _08020ED6
	.2byte 0x0000
_08020EB4: .4byte gUnk_03003E28
_08020EB8:
	ldr r0, _08020F64
	ldr r1, [r0, #0]
	mov r2, r8
	lsls r0, r2, #1
	add r0, r8
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r1, _08020F68
	adds r0, r0, r1
	ldr r1, [r0, #0x14]
	asrs r4, r1, #8
	ldr r0, [r0, #0x18]
	asrs r6, r0, #8
_08020ED6:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	add r5, sp, #0x48
	mov r7, sp
	adds r7, #0x4a
	movs r2, #0x10
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_0800BC08
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08020F6C
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	mov r0, sl
	ands r0, r2
	cmp r1, r0
	bne _08020F34
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r2, #0
	ldrsh r1, [r7, r2]
	adds r1, #1
	add r2, sp, #0x44
	ldrh r3, [r2, #0]
	str r6, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #8
	bl sub_08007870
_08020F34:
	bl sub_080003F0
_08020F38:
	bl sub_0800CB78
	cmp r0, #0
	bne _08020F46
	mov r0, r9
	cmp r0, #0
	beq _08020E60
_08020F46:
	ldr r2, _08020F70
	movs r1, #1
	mov r0, sl
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08020F64: .4byte gUnk_030056F4
_08020F68: .4byte 0xFFFFF480
_08020F6C: .4byte gUnk_03002344
_08020F70: .4byte gUnk_03005CE4
	thumb_func_end sub_08020E08
