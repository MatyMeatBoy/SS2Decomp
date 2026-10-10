	thumb_func_start sub_08020F74
sub_08020F74: @ 0x08020F74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r4, r0, #0
	str r1, [sp, #0x4c]
	ldr r1, _08020FC8
	movs r3, #1
	negs r3, r3
	movs r5, #0
	str r5, [sp, #0]
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
	ldr r0, _08020FCC
	ands r0, r4
	lsls r0, r0, #8
	str r0, [sp, #0x50]
	asrs r4, r4, #0x10
	lsls r4, r4, #8
	str r4, [sp, #0x54]
	add r1, sp, #0x44
	strh r5, [r1, #0]
	mov r0, sp
	adds r0, #0x46
	strh r5, [r0, #0]
	mov r9, r5
	mov sl, r1
	b _08021072
_08020FC8: .4byte 0x0005008C
_08020FCC: .4byte 0x0000FFFF
_08020FD0:
	mov r0, r9
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0xe
	mov r2, sl
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	bl sub_0800CC98
	cmp r0, #0
	bne _0802106E
	bl sub_0800CD8C
	cmp r0, #0
	bne _0802106E
	bl sub_0800CCCC
	adds r7, r0, #0
	cmp r7, #0
	bne _0802106E
	ldr r0, _080210A0
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08021018
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08021018:
	ldr r1, [sp, #0x50]
	asrs r5, r1, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x54]
	asrs r4, r2, #8
	add r6, sp, #0x48
	movs r3, #0x4a
	add r3, sp
	mov r8, r3
	movs r1, #0x10
	str r1, [sp, #0]
	str r7, [sp, #4]
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	movs r4, #0
	ldrsh r2, [r6, r4]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
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
	movs r2, #0xe
	bl sub_08007870
_0802106E:
	bl sub_080003F0
_08021072:
	bl sub_0800CB78
	cmp r0, #0
	bne _08021080
	mov r0, r9
	cmp r0, #0
	beq _08020FD0
_08021080:
	ldr r2, _080210A4
	movs r1, #1
	ldr r3, [sp, #0x4c]
	lsls r1, r3
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080210A0: .4byte gUnk_03002344
_080210A4: .4byte gUnk_03005CE4
	thumb_func_end sub_08020F74
