	thumb_func_start sub_080216BC
sub_080216BC: @ 0x080216BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r4, r0, #0
	str r1, [sp, #0x4c]
	ldr r1, _08021710
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
	ldr r0, _08021714
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
	mov sl, r5
	b _080217A6
	.2byte 0x0000
_08021710: .4byte 0x0005008C
_08021714: .4byte 0x0000FFFF
_08021718:
	bl sub_0800CC98
	cmp r0, #0
	bne _080217A2
	bl sub_0800CD8C
	cmp r0, #0
	bne _080217A2
	bl sub_0800CCCC
	adds r7, r0, #0
	cmp r7, #0
	bne _080217A2
	ldr r0, [sp, #0x50]
	asrs r4, r0, #8
	ldr r1, [sp, #0x54]
	asrs r1, r1, #8
	mov r9, r1
	adds r0, r4, #0
	movs r2, #0
	bl sub_0800BC44
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r2, sl
	str r2, [sp, #0]
	add r0, sp, #0x10
	movs r1, #1
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add r6, sp, #0x48
	movs r3, #0x4a
	add r3, sp
	mov r8, r3
	movs r0, #0x10
	str r0, [sp, #0]
	str r7, [sp, #4]
	adds r0, r4, #0
	mov r1, r9
	adds r2, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	add r2, sp, #0x44
	ldrh r3, [r2, #0]
	str r5, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08007870
_080217A2:
	bl sub_080003F0
_080217A6:
	bl sub_0800CB78
	cmp r0, #0
	bne _080217B4
	mov r3, sl
	cmp r3, #0
	beq _08021718
_080217B4:
	ldr r2, _080217D4
	movs r1, #1
	ldr r0, [sp, #0x4c]
	lsls r1, r0
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
_080217D4: .4byte gUnk_03005CE4
	thumb_func_end sub_080216BC
