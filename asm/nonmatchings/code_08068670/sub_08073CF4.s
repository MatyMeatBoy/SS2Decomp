	thumb_func_start sub_08073CF4
sub_08073CF4: @ 0x08073CF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	mov r9, r0
	ldr r1, _08073DE4
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
	mov r0, r9
	ldr r0, [r0, #8]
	str r0, [sp, #0x54]
	mov r1, r9
	ldr r0, [r1, #0x14]
	lsrs r0, r0, #8
	str r0, [sp, #0x4c]
	ldr r0, [r1, #0x10]
	lsrs r0, r0, #8
	str r0, [sp, #0x50]
	ldr r2, [r1, #0xc]
	str r2, [sp, #0x58]
	add r1, sp, #0x44
	strh r4, [r1, #0]
	mov sl, r4
	mov r0, sp
	adds r0, #0x46
	mov r3, sl
	strh r3, [r0, #0]
	ldr r0, [sp, #0x4c]
	lsls r0, r0, #0x10
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x50]
	lsls r1, r1, #0x10
	str r1, [sp, #0x60]
_08073D5A:
	bl sub_0800CC98
	cmp r0, #0
	bne _08073DFE
	bl sub_0800CD8C
	adds r6, r0, #0
	cmp r6, #0
	bne _08073DFE
	bl sub_0800CCCC
	adds r2, r0, #0
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x50]
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r2, [sp, #0x58]
	lsls r0, r2, #0x10
	lsrs r7, r0, #0x10
	str r6, [sp, #0]
	add r0, sp, #0x10
	adds r1, r7, #0
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	add r4, sp, #0x48
	mov r5, sp
	adds r5, #0x4a
	movs r0, #0x10
	str r0, [sp, #0]
	str r6, [sp, #4]
	ldr r3, [sp, #0x5c]
	asrs r0, r3, #0x10
	ldr r2, [sp, #0x60]
	asrs r1, r2, #0x10
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r3, [sp, #0x54]
	cmp r3, #0
	beq _08073DE8
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r1, #1
	add r2, sp, #0x44
	ldrh r3, [r2, #0]
	mov r2, r8
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r7, #0
	bl sub_08007870
	b _08073DFE
_08073DE4: .4byte 0x0005008C
_08073DE8:
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r0, #0
	ldrsh r2, [r5, r0]
	add r3, sp, #0x44
	ldrh r0, [r3, #0]
	str r0, [sp, #0]
	add r0, sp, #0x10
	adds r3, r7, #0
	bl sub_08065230
_08073DFE:
	bl sub_080003F0
	mov r0, sl
	cmp r0, #0
	beq _08073D5A
	ldr r2, _08073E28
	mov r1, r9
	ldr r0, [r1, #4]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08073E28: .4byte gUnk_030063E0
	thumb_func_end sub_08073CF4
