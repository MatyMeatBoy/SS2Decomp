	thumb_func_start sub_080210A8
sub_080210A8: @ 0x080210A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	mov r8, r0
	str r1, [sp, #0x4c]
	ldr r1, _080210FC
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
	mov r0, r8
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r0, _08021100
	mov r1, r8
	ands r1, r0
	mov r8, r1
	add r1, sp, #0x44
	strh r4, [r1, #0]
	mov r0, sp
	adds r0, #0x46
	strh r4, [r0, #0]
	mov sl, r4
	b _080211DC
	.2byte 0x0000
_080210FC: .4byte 0x00050074
_08021100: .4byte 0x0000FFFF
_08021104:
	ldr r2, [sp, #0x4c]
	lsls r4, r2, #0x10
	lsrs r1, r4, #0x10
	mov r3, sl
	str r3, [sp, #0]
	add r0, sp, #0x10
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	bl sub_0800CC98
	mov r9, r4
	cmp r0, #0
	bne _080211D8
	bl sub_0800CD8C
	cmp r0, #0
	bne _080211D8
	bl sub_0800CCCC
	cmp r0, #0
	bne _080211D8
	mov r5, r8
	cmp r5, #3
	bhi _08021168
	ldr r1, _08021164
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
	b _08021186
	.2byte 0x0000
_08021164: .4byte gUnk_03003CE0
_08021168:
	ldr r0, _08021208
	ldr r1, [r0, #0]
	mov r5, r8
	lsls r0, r5, #1
	add r0, r8
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r1, _0802120C
	adds r0, r0, r1
	ldr r1, [r0, #0x14]
	asrs r7, r1, #8
	ldr r0, [r0, #0x18]
	asrs r6, r0, #8
_08021186:
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
	movs r2, #0
	ldrsh r4, [r4, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r1, #1
	mov r5, r9
	lsrs r2, r5, #0x10
	add r5, sp, #0x44
	ldrh r3, [r5, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	bl sub_08007870
_080211D8:
	bl sub_080003F0
_080211DC:
	bl sub_0800CB78
	cmp r0, #0
	bne _080211EA
	mov r0, sl
	cmp r0, #0
	beq _08021104
_080211EA:
	ldr r2, _08021210
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
_08021208: .4byte gUnk_030056F4
_0802120C: .4byte 0xFFFFF480
_08021210: .4byte gUnk_03005CE4
	thumb_func_end sub_080210A8
