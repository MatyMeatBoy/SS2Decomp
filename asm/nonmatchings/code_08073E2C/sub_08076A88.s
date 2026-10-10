	thumb_func_start sub_08076A88
sub_08076A88: @ 0x08076A88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sl, r1
	mov r9, r2
	str r3, [sp, #0]
	movs r4, #0
	ldr r1, _08076AF0
	lsls r0, r7, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _08076AC2
	movs r3, #1
_08076AB0:
	adds r4, #1
	cmp r4, #0xf
	bhi _08076AC6
	adds r1, r3, #0
	lsls r1, r4
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _08076AB0
_08076AC2:
	cmp r4, #0xf
	bls _08076AF8
_08076AC6:
	bl sub_080020F4
	cmp r7, r0
	bne _08076B80
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _08076AF4
	adds r5, r1, r0
	ldrh r0, [r5, #0x20]
	cmp r0, #5
	bne _08076B80
	movs r0, #0
	strh r0, [r5, #0x20]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1, #0]
	b _08076B32
	.2byte 0x0000
_08076AF0: .4byte gUnk_030063E0
_08076AF4: .4byte gUnk_03003CE0
_08076AF8:
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001494
	adds r6, r0, #0
	ldr r0, _08076B38
	lsls r1, r7, #2
	mov r8, r1
	add r0, r8
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r2, r0, r1
	str r6, [r2, #0x20]
	cmp r6, #0
	bne _08076B3C
	bl sub_080020F4
	cmp r7, r0
	bne _08076B80
	ldrh r0, [r5, #0x20]
	cmp r0, #5
	bne _08076B80
	strh r6, [r5, #0x20]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r6, [r0, #0]
_08076B32:
	mov r3, r9
	strh r3, [r5, #0x28]
	b _08076B80
_08076B38: .4byte gUnk_030063B0
_08076B3C:
	ldr r0, _08076B90
	add r0, r8
	ldr r0, [r0, #0]
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	adds r1, r1, r0
	str r7, [r1, #0]
	str r4, [r1, #4]
	mov r0, sl
	str r0, [r1, #8]
	mov r3, r9
	str r3, [r1, #0x14]
	ldr r0, [sp, #0]
	str r0, [r1, #0x10]
	movs r0, #0x34
	str r0, [r2, #8]
	ldr r0, _08076B94
	str r0, [r2, #0xc]
	ldr r3, _08076B98
	adds r0, r6, r3
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r2, #0x24]
	adds r0, r2, #0
	bl sub_08000274
	ldr r2, _08076B9C
	add r2, r8
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_08076B80:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076B90: .4byte gUnk_03006380
_08076B94: .4byte sub_080761A4
_08076B98: .4byte 0x000007FC
_08076B9C: .4byte gUnk_030063E0
	thumb_func_end sub_08076A88
