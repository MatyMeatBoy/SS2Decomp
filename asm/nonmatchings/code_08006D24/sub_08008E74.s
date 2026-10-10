	thumb_func_start sub_08008E74
sub_08008E74: @ 0x08008E74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	mov r8, r1
	ldr r0, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r4, _08008E98
	ldr r2, [r4, #0]
	cmp r2, #0x31
	bls _08008E9C
	movs r0, #0
	b _08008F1C
_08008E98: .4byte gUnk_030028C8
_08008E9C:
	movs r0, #0x2c
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08008F08
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r4, #0]
	mov r0, ip
	str r0, [r3, #8]
	mov r1, r8
	str r1, [r3, #0xc]
	movs r4, #0
	strh r6, [r3, #0x10]
	strh r5, [r3, #0x12]
	movs r0, #0x22
	adds r0, r0, r3
	mov ip, r0
	movs r1, #7
	ands r1, r7
	ldrb r2, [r0, #0]
	movs r0, #8
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0]
	ldr r0, [sp, #0x1c]
	str r0, [r3, #0x1c]
	ldr r0, [sp, #0x20]
	str r0, [r3, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r3, #0x18]
	ldrb r1, [r1, #0]
	movs r0, #9
	negs r0, r0
	ands r0, r1
	movs r1, #0x71
	negs r1, r1
	ands r0, r1
	mov r1, ip
	strb r0, [r1, #0]
	strh r4, [r3, #0x24]
	strh r4, [r3, #0x26]
	strh r4, [r3, #0x28]
	ldr r2, _08008F0C
	ldr r1, [r2, #0]
	cmp r1, #0
	beq _08008F10
	str r3, [r1, #4]
	str r1, [r3, #0]
	str r4, [r3, #4]
	str r3, [r2, #0]
	b _08008F1A
	.2byte 0x0000
_08008F08: .4byte gUnk_030028D0
_08008F0C: .4byte gUnk_030028C4
_08008F10:
	ldr r0, _08008F28
	str r3, [r0, #0]
	str r3, [r2, #0]
	str r1, [r3, #0]
	str r1, [r3, #4]
_08008F1A:
	adds r0, r3, #0
_08008F1C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08008F28: .4byte gUnk_030028C0
	thumb_func_end sub_08008E74
