	thumb_func_start sub_08096FA0
sub_08096FA0: @ 0x08096FA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r1, _080970BC
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	mov r5, sp
	adds r5, #0x46
	strh r2, [r5, #0]
	add r4, sp, #0x44
	strh r2, [r4, #0]
	movs r0, #0
	str r0, [sp, #0x4c]
	ldr r0, _080970C0
	bl sub_0805865C
	ldr r6, _080970C4
	movs r1, #0x4a
	add r1, sp
	mov r8, r1
	add r7, sp, #0x48
_08096FEE:
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809700C
	str r0, [sp, #0]
	add r0, sp, #0x10
	mov r1, r9
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0809700C:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809708A
	bl sub_0800CC98
	cmp r0, #0
	bne _0809708A
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809708A
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _0809708A
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
	ldr r0, [r6, #0]
	asrs r0, r0, #8
	ldr r1, [r6, #4]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r6, #0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	mov r3, r8
	bl sub_0800BC08
	movs r2, #0
	ldrsh r0, [r7, r2]
	add r1, sp, #0x44
	ldrh r3, [r1, #0]
	str r4, [sp, #0]
	add r1, sp, #0x2c
	str r1, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0
	mov r2, r9
	bl sub_08007870
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r1, [r0, #0xc]
_0809708A:
	bl sub_080003F0
	mov r0, sl
	cmp r0, #0
	beq _08096FEE
	ldr r1, [sp, #0x4c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	cmp r1, #0x3b
	bhi _08096FEE
	ldr r0, _080970C8
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #8]
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080970BC: .4byte 0x00050020
_080970C0: .4byte 0x000001A5
_080970C4: .4byte gUnk_030002C8
_080970C8: .4byte gUnk_030002C0
	thumb_func_end sub_08096FA0
