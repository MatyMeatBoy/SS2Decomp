	thumb_func_start sub_08009930
sub_08009930: @ 0x08009930
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r4, r1, #0
	ldr r5, _08009964
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800995E
	ldr r6, _08009968
	adds r0, r6, #0
	bl sub_08000470
	adds r1, r0, #0
	cmp r1, #0
	beq _0800996C
_0800995E:
	movs r0, #0
	b _08009B6C
	.2byte 0x0000
_08009964: .4byte gUnk_03003170
_08009968: .4byte gUnk_03003430
_0800996C:
	ldr r0, _08009A7C
	str r0, [r6, #0xc]
	ldr r0, _08009A80
	str r0, [r6, #0x10]
	str r1, [r6, #0x20]
	movs r0, #0x50
	str r0, [r6, #8]
	str r1, [r6, #0x24]
	adds r0, r5, #0
	adds r0, #0x8c
	strh r7, [r0, #0]
	adds r0, #4
	strh r4, [r0, #0]
	cmp r7, #5
	beq _0800998C
	b _08009A90
_0800998C:
	bl sub_0800CDC0
	cmp r0, #0
	beq _08009A90
	cmp r4, #0xd
	bne _08009A90
	movs r0, #1
	movs r1, #1
	bl sub_08000990
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0xb8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	ldr r1, _08009A84
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, _08009A88
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #1
	add r1, sp, #4
	bl sub_08000AA8
	ldr r1, _08009A8C
	add r0, sp, #4
	strh r1, [r0, #0]
	movs r0, #2
	add r1, sp, #4
	bl sub_08000AA8
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x2d
	movs r1, #0x1d
	movs r3, #0
	bl sub_0800B650
	movs r0, #0x2c
	movs r1, #0x1e
	bl sub_0800B9F0
	ldr r2, [r5, #0x64]
	str r2, [r5, #0x68]
	movs r0, #0
	adds r4, r5, #0
	mov sl, r6
	mov r8, r0
	movs r1, #0x10
	negs r1, r1
	mov r9, r1
	subs r1, #1
	mov ip, r1
	movs r7, #0x3f
	movs r6, #0x40
_08009A0E:
	movs r3, #0
	adds r5, r0, #1
_08009A12:
	mov r0, r8
	strb r0, [r2, #0]
	ldrb r1, [r2, #1]
	mov r0, r9
	ands r0, r1
	mov r1, ip
	ands r0, r1
	ands r0, r7
	orrs r0, r6
	strb r0, [r2, #1]
	adds r3, #1
	adds r2, #2
	cmp r3, #0x1d
	bls _08009A12
	adds r0, r5, #0
	cmp r0, #0x1f
	bls _08009A0E
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	strh r2, [r0, #0]
	adds r0, #2
	strh r2, [r0, #0]
	adds r0, #2
	strh r2, [r0, #0]
	adds r0, #2
	strh r2, [r0, #0]
	adds r1, r4, #0
	adds r1, #0x70
	movs r0, #0x1e
	strh r0, [r1, #0]
	adds r1, #2
	movs r0, #0x20
	strh r0, [r1, #0]
	movs r3, #0x1e
	adds r0, r4, #0
	adds r0, #0x74
	strh r3, [r0, #0]
	movs r1, #0x20
	adds r0, #2
	strh r1, [r0, #0]
	adds r0, #2
	strh r3, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
	adds r0, #0x22
	str r2, [r0, #0]
	subs r0, #0x20
	strh r2, [r0, #0]
	adds r0, #2
	strh r2, [r0, #0]
	b _08009B62
	.2byte 0x0000
_08009A7C: .4byte sub_0800A998
_08009A80: .4byte gUnk_0300342C
_08009A84: .4byte 0xFFFF0000
_08009A88: .4byte 0x00001D83
_08009A8C: .4byte 0x0000BE81
_08009A90:
	ldr r1, _08009AC4
	lsls r4, r4, #2
	movs r0, #0x74
	muls r0, r7, r0
	adds r4, r4, r0
	adds r1, #0x10
	adds r4, r4, r1
	ldr r0, [r4, #0]
	bl sub_08007290
	ldr r5, _08009AC8
	adds r6, r5, #0
	adds r6, #0xb0
	str r0, [r6, #0]
	adds r1, r7, #0
	bl sub_08009138
	ldr r0, [r4, #0]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _08009ACC
	ldr r0, [r6, #0]
	adds r0, #0x10
	b _08009AD8
_08009AC4: .4byte gUnk_0847846C
_08009AC8: .4byte gUnk_03003170
_08009ACC:
	ldr r0, [r6, #0]
	adds r0, #0x10
	adds r1, r5, #0
	adds r1, #0x64
	bl sub_08000BC8
_08009AD8:
	str r0, [r5, #0x60]
	ldr r4, _08009B00
	ldr r5, [r4, #0x60]
	bl sub_0800CCCC
	cmp r0, #0
	beq _08009B04
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r1, r0, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x10
	adds r0, r5, r0
	str r0, [r4, #0x6c]
	b _08009B28
	.2byte 0x0000
_08009B00: .4byte gUnk_03003170
_08009B04:
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r1, r0, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x10
	adds r0, r5, r0
	str r0, [r4, #0x68]
	ldrh r1, [r5, #0]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0, #0]
	ldrh r1, [r5, #2]
	adds r0, #2
	strh r1, [r0, #0]
_08009B28:
	ldr r4, _08009B7C
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	strh r1, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
	ldrh r3, [r5, #0]
	subs r0, #0x16
	strh r3, [r0, #0]
	ldrh r2, [r5, #2]
	adds r0, #2
	strh r2, [r0, #0]
	adds r0, #2
	strh r3, [r0, #0]
	adds r0, #2
	strh r2, [r0, #0]
	adds r0, #0x26
	str r1, [r0, #0]
	subs r0, #0x20
	strh r1, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
	ldr r0, _08009B80
	mov sl, r0
_08009B62:
	mov r0, sl
	movs r1, #0
	bl sub_08000274
	movs r0, #1
_08009B6C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08009B7C: .4byte gUnk_03003170
_08009B80: .4byte gUnk_03003430
	thumb_func_end sub_08009930
