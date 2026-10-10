	thumb_func_start sub_0802133C
sub_0802133C: @ 0x0802133C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	adds r5, r0, #0
	str r1, [sp, #0x4c]
	ldr r1, _080213A4
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #1
	bl sub_08065158
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
	add r1, sp, #0x44
	strh r4, [r1, #0]
	mov r0, sp
	adds r0, #0x46
	strh r4, [r0, #0]
	mov r8, r4
	mov r9, r1
	cmp r5, #3
	bhi _080213AC
	ldr r1, _080213A8
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r5, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #0x50]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x14
	b _080213CA
_080213A4: .4byte 0x0005008C
_080213A8: .4byte gUnk_03003CE0
_080213AC:
	ldr r0, _080213D8
	ldr r1, [r0, #0]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r3, _080213DC
	adds r0, r0, r3
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	str r1, [sp, #0x50]
	ldr r0, [r0, #0x18]
	asrs r4, r0, #8
_080213CA:
	add r6, sp, #0x48
	mov r5, sp
	adds r5, #0x4a
	ldr r7, [sp, #0x50]
	lsls r7, r7, #0x10
	mov sl, r7
	b _0802145E
_080213D8: .4byte gUnk_030056F4
_080213DC: .4byte 0xFFFFF480
_080213E0:
	mov r0, r8
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0x22
	mov r2, r9
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_0800CC98
	cmp r0, #0
	bne _0802145A
	bl sub_0800CD8C
	cmp r0, #0
	bne _0802145A
	bl sub_0800CCCC
	adds r2, r0, #0
	cmp r2, #0
	bne _0802145A
	lsls r1, r4, #0x10
	movs r0, #0x10
	str r0, [sp, #0]
	str r2, [sp, #4]
	mov r2, sl
	asrs r0, r2, #0x10
	asrs r1, r1, #0x10
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x50]
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	movs r3, #0
	ldrsh r2, [r6, r3]
	movs r7, #0
	ldrsh r1, [r5, r7]
	adds r1, #1
	mov r7, r9
	ldrh r3, [r7, #0]
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
	movs r2, #0x22
	bl sub_08007870
_0802145A:
	bl sub_080003F0
_0802145E:
	bl sub_0800CB78
	cmp r0, #0
	bne _0802146C
	mov r0, r8
	cmp r0, #0
	beq _080213E0
_0802146C:
	ldr r2, _0802148C
	movs r1, #1
	ldr r3, [sp, #0x4c]
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
	.2byte 0x0000
_0802148C: .4byte gUnk_03005CE4
	thumb_func_end sub_0802133C
