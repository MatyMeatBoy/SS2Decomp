	thumb_func_start sub_08079D84
sub_08079D84: @ 0x08079D84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	mov sl, r0
	adds r6, r1, #0
	bl sub_080020F4
	ldr r1, _08079DE8
	movs r3, #1
	negs r3, r3
	movs r0, #0
	mov r8, r0
	str r0, [sp, #0]
	add r0, sp, #8
	movs r2, #1
	bl sub_08065158
	ldr r1, [sp, #0x14]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
	add r1, sp, #8
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	ldr r0, _08079DEC
	ands r0, r6
	lsls r0, r0, #8
	str r0, [sp, #0x44]
	lsrs r6, r6, #0x10
	lsls r6, r6, #8
	str r6, [sp, #0x48]
	add r5, sp, #0x3c
	mov r1, r8
	strh r1, [r5, #0]
	mov r4, sp
	adds r4, #0x3e
	strh r1, [r4, #0]
	movs r7, #0
	adds r1, r6, #0
	mov r2, sl
	bl sub_08068A00
	mov r9, r5
	b _08079E92
_08079DE8: .4byte 0x0005008C
_08079DEC: .4byte 0x0000FFFF
_08079DF0:
	str r7, [sp, #0]
	add r0, sp, #8
	movs r1, #0x15
	mov r2, r9
	mov r3, sp
	adds r3, #0x3e
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	bl sub_0800CC98
	cmp r0, #0
	bne _08079E8E
	bl sub_0800CD8C
	cmp r0, #0
	bne _08079E8E
	bl sub_0800CCCC
	adds r3, r0, #0
	cmp r3, #0
	bne _08079E8E
	ldr r2, [sp, #0x44]
	asrs r5, r2, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x48]
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x40
	movs r2, #0x42
	add r2, sp
	mov r8, r2
	movs r2, #0x10
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r2, r6, #0
	mov r3, r8
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08079EC4
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	mov r5, r8
	cmp r0, #4
	bne _08079E68
	bl sub_0800CDC0
	cmp r0, #0
	beq _08079E68
	movs r4, #0
_08079E68:
	ldr r0, _08079EC8
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08079E8E
	movs r3, #0
	ldrsh r1, [r6, r3]
	movs r0, #0
	ldrsh r2, [r5, r0]
	adds r2, #1
	mov r3, r9
	ldrh r0, [r3, #0]
	str r0, [sp, #0]
	str r4, [sp, #4]
	add r0, sp, #8
	movs r3, #0x15
	bl sub_080659BC
_08079E8E:
	bl sub_080003F0
_08079E92:
	bl sub_0800CB78
	cmp r0, #0
	bne _08079E9E
	cmp r7, #0
	beq _08079DF0
_08079E9E:
	ldr r0, _08079ECC
	mov r1, sl
	ldr r2, [r1, #0]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r0, [r1, #4]
	movs r1, #1
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
_08079EC4: .4byte gUnk_03003170
_08079EC8: .4byte gUnk_03002344
_08079ECC: .4byte gUnk_030063E0
	thumb_func_end sub_08079D84
