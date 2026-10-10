	thumb_func_start sub_08021960
sub_08021960: @ 0x08021960
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r4, r0, #0
	str r1, [sp, #0x44]
	ldr r1, _080219C4
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #8
	movs r2, #1
	bl sub_08065158
	add r1, sp, #8
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	ldr r1, [sp, #0x14]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
	ldr r2, _080219C8
	ands r2, r4
	lsrs r4, r4, #0x10
	mov r9, r4
	cmp r2, #3
	bhi _080219D0
	ldr r1, _080219CC
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r2, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	mov r8, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r7, r0, #0x14
	b _080219EE
	.2byte 0x0000
_080219C4: .4byte 0x0005008C
_080219C8: .4byte 0x0000FFFF
_080219CC: .4byte gUnk_03003CE0
_080219D0:
	ldr r0, _08021A08
	ldr r1, [r0, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r4, _08021A0C
	adds r0, r0, r4
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	mov r8, r1
	ldr r0, [r0, #0x18]
	asrs r7, r0, #8
_080219EE:
	add r0, sp, #0x3c
	movs r2, #0
	strh r2, [r0, #0]
	mov r1, sp
	adds r1, #0x3e
	strh r2, [r1, #0]
	movs r2, #0x3c
	mov sl, r2
	movs r4, #1
	negs r4, r4
	add r9, r4
	b _08021A96
	.2byte 0x0000
_08021A08: .4byte gUnk_030056F4
_08021A0C: .4byte 0xFFFFF480
_08021A10:
	ldr r0, _08021ACC
	ldr r0, [r0, #0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08021A1E
	subs r7, #1
_08021A1E:
	bl sub_0800CC98
	cmp r0, #0
	bne _08021A92
	bl sub_0800CD8C
	adds r6, r0, #0
	cmp r6, #0
	bne _08021A92
	bl sub_0800CCCC
	adds r2, r0, #0
	mov r0, r8
	adds r1, r7, #0
	bl sub_0800BC44
	mov r1, r9
	adds r1, #0x22
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #8
	add r2, sp, #0x3c
	mov r3, sp
	adds r3, #0x3e
	bl sub_08065370
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x40
	mov r5, sp
	adds r5, #0x42
	movs r2, #0x10
	str r2, [sp, #0]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r4, #0
	ldrsh r2, [r5, r4]
	adds r2, #1
	mov r3, r9
	adds r3, #0x23
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r4, sp
	ldrh r0, [r4, #0x3c]
	str r0, [sp, #0]
	add r0, sp, #8
	bl sub_08065230
_08021A92:
	bl sub_080003F0
_08021A96:
	bl sub_0800CB78
	cmp r0, #0
	bne _08021AAE
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, _08021AD0
	cmp sl, r0
	bne _08021A10
_08021AAE:
	ldr r2, _08021AD4
	movs r1, #1
	ldr r0, [sp, #0x44]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08021ACC: .4byte gUnk_03002344
_08021AD0: .4byte 0x0000FFFF
_08021AD4: .4byte gUnk_03005CE4
	thumb_func_end sub_08021960
