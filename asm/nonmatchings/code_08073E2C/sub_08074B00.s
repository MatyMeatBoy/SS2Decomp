	thumb_func_start sub_08074B00
sub_08074B00: @ 0x08074B00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r7, r0, #0
	str r1, [sp, #0x4c]
	add r5, sp, #0x48
	movs r0, #0
	strh r0, [r5, #0]
	mov r4, sp
	adds r4, #0x4a
	strh r0, [r4, #0]
	ldr r1, _08074B50
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
	mov r8, r0
	cmp r7, #3
	bhi _08074B58
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _08074B54
	adds r1, r1, r0
	str r1, [sp, #0x50]
	b _08074B6E
	.2byte 0x0000
_08074B50: .4byte 0x0005008C
_08074B54: .4byte gUnk_03003CE0
_08074B58:
	ldr r0, _08074BA8
	lsls r1, r7, #1
	adds r1, r1, r7
	lsls r1, r1, #3
	subs r1, r1, r7
	lsls r1, r1, #5
	ldr r2, _08074BAC
	adds r1, r1, r2
	ldr r0, [r0, #0]
	adds r0, r0, r1
	mov r9, r0
_08074B6E:
	lsls r0, r7, #2
	str r0, [sp, #0x54]
	mov r1, r8
	cmp r1, #0
	bne _08074C48
	movs r2, #0
	mov sl, r2
_08074B7C:
	cmp r7, #3
	bhi _08074BB0
	ldr r1, [sp, #0x50]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp, #0]
	mov r2, sl
	str r2, [sp, #4]
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_0800BC08
	b _08074BD0
_08074BA8: .4byte gUnk_030056F4
_08074BAC: .4byte 0xFFFFF480
_08074BB0:
	mov r1, r9
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	mov r2, sl
	str r2, [sp, #4]
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_0800BC08
_08074BD0:
	add r6, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	add r2, sp, #0x48
	mov r0, sl
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #1
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_0800CC98
	cmp r0, #0
	bne _08074C3E
	bl sub_0800CD8C
	cmp r0, #0
	bne _08074C3E
	bl sub_0800CCCC
	cmp r0, #0
	bne _08074C3E
	ldr r0, _08074C6C
	ldr r0, [r0, #0]
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _08074C1C
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08074C1C:
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r1, #1
	add r2, sp, #0x48
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08007870
_08074C3E:
	bl sub_080003F0
	mov r0, r8
	cmp r0, #0
	beq _08074B7C
_08074C48:
	ldr r2, _08074C70
	ldr r1, [sp, #0x54]
	adds r2, r1, r2
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
_08074C6C: .4byte gUnk_03002344
_08074C70: .4byte gUnk_030063E0
	thumb_func_end sub_08074B00
