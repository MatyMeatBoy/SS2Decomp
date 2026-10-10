	thumb_func_start sub_08069AEC
sub_08069AEC: @ 0x08069AEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	mov r8, r1
	ldr r1, _08069BB4
	mov r2, r8
	ands r2, r1
	mov r8, r2
	lsrs r4, r0, #0x10
	mov r2, sp
	adds r2, #0x31
	movs r3, #0
	movs r1, #8
	strb r1, [r2, #0]
	adds r2, #0x15
	strh r3, [r2, #0]
	add r1, sp, #0x44
	strh r3, [r1, #0]
	mov r9, r1
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
	lsls r0, r0, #0x10
	str r0, [sp, #0x4c]
	lsls r4, r4, #0x10
	mov sl, r4
_08069B26:
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0
	mov r2, r9
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_0800CC98
	cmp r0, #0
	bne _08069B8E
	bl sub_0800CD8C
	cmp r0, #0
	bne _08069B8E
	bl sub_0800CCCC
	adds r4, r0, #0
	cmp r4, #0
	bne _08069B8E
	movs r0, #0x30
	str r0, [sp, #0]
	str r4, [sp, #4]
	ldr r1, [sp, #0x4c]
	asrs r0, r1, #0x10
	mov r2, sl
	asrs r1, r2, #0x10
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, #1
	mov r2, r9
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
_08069B8E:
	bl sub_080003F0
	cmp r5, #0
	beq _08069B26
	ldr r2, _08069BB8
	movs r1, #1
	mov r0, r8
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08069BB4: .4byte 0x0000FFFF
_08069BB8: .4byte gUnk_0300641C
	thumb_func_end sub_08069AEC
