	thumb_func_start sub_08075520
sub_08075520: @ 0x08075520
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	str r0, [sp, #0x4c]
	str r1, [sp, #0x50]
	add r5, sp, #0x48
	movs r0, #0
	strh r0, [r5, #0]
	mov r4, sp
	adds r4, #0x4a
	strh r0, [r4, #0]
	ldr r1, _080756D4
	movs r3, #1
	negs r3, r3
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	movs r0, #0
	mov sl, r0
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0x4c]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _080756D8
	adds r6, r1, r0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xa
	bne _0807558C
	adds r4, r6, r1
_0807557C:
	bl sub_080003F0
	ldr r0, [r4, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xa
	beq _0807557C
_0807558C:
	ldr r2, [sp, #0x4c]
	lsls r2, r2, #2
	str r2, [sp, #0x54]
	mov r0, sl
	cmp r0, #0
	bne _08075654
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r1, r1, r6
	mov r9, r1
	add r2, sp, #0x44
	mov r8, r2
	mov r7, sp
	adds r7, #0x46
_080755A8:
	mov r0, r9
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	mov r2, r8
	adds r3, r7, #0
	bl sub_0800BC08
	mov r0, r9
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r1, #0
	str r1, [sp, #0]
	add r0, sp, #0x10
	movs r1, #8
	adds r2, r5, #0
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	bl sub_0800CC98
	cmp r0, #0
	bne _0807564A
	bl sub_0800CD8C
	cmp r0, #0
	bne _0807564A
	bl sub_0800CCCC
	cmp r0, #0
	bne _0807564A
	ldr r0, _080756DC
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08075628
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08075628:
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r2, #0
	ldrsh r1, [r7, r2]
	adds r1, #1
	ldrh r3, [r5, #0]
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #8
	bl sub_08007870
_0807564A:
	bl sub_080003F0
	mov r0, sl
	cmp r0, #0
	beq _080755A8
_08075654:
	bl sub_080020F4
	ldr r1, [sp, #0x4c]
	cmp r1, r0
	bne _08075668
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r6, #0x30]
_08075668:
	bl sub_080020F4
	ldr r2, [sp, #0x4c]
	cmp r0, r2
	beq _0807567C
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0x30]
_0807567C:
	movs r4, #0
_0807567E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_080003F0
	cmp r4, #0x3b
	bls _0807567E
	bl sub_080020F4
	ldr r1, [sp, #0x4c]
	cmp r1, r0
	bne _0807569E
	ldr r0, [r6, #0x30]
	ldr r1, _080756E0
	ands r0, r1
	str r0, [r6, #0x30]
_0807569E:
	bl sub_080020F4
	ldr r2, [sp, #0x4c]
	cmp r0, r2
	beq _080756B0
	ldr r0, [r6, #0x30]
	ldr r1, _080756E4
	ands r0, r1
	str r0, [r6, #0x30]
_080756B0:
	ldr r2, _080756E8
	ldr r0, [sp, #0x54]
	adds r2, r0, r2
	movs r1, #1
	ldr r0, [sp, #0x50]
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
_080756D4: .4byte 0x0005008D
_080756D8: .4byte gUnk_03003CE0
_080756DC: .4byte gUnk_03002344
_080756E0: .4byte 0xFFFBFFFF
_080756E4: .4byte 0xFFF7FFFF
_080756E8: .4byte gUnk_030063E0
	thumb_func_end sub_08075520
