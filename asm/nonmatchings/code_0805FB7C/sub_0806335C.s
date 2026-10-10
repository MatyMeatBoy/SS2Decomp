	thumb_func_start sub_0806335C
sub_0806335C: @ 0x0806335C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x88
	add r4, sp, #0x44
	ldr r1, [r4, #0xc]
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	strb r0, [r4, #0x1c]
	ldr r1, _080633B8
	adds r2, r1, #0
	adds r2, #0x92
	ldrh r0, [r2, #0]
	cmp r0, #0
	bne _0806338A
	b _080634A6
_0806338A:
	add r3, sp, #0x78
	adds r1, #0x8e
	ldrh r0, [r1, #0]
	adds r0, #0x14
	strh r0, [r3, #0]
	ldrh r4, [r2, #0]
	ldr r2, _080633BC
	ldrh r1, [r1, #0]
	movs r0, #0x74
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	subs r0, #1
	adds r5, r3, #0
	cmp r4, r0
	bne _080633C6
	cmp r1, #8
	bhi _080633C0
	adds r0, r1, #0
	adds r0, #0x1c
	strh r0, [r5, #2]
	b _080633C8
	.2byte 0x0000
_080633B8: .4byte gUnk_03003170
_080633BC: .4byte gUnk_0847846C
_080633C0:
	movs r0, #0x23
	strh r0, [r5, #2]
	b _080633C8
_080633C6:
	strh r4, [r5, #2]
_080633C8:
	add r0, sp, #0x7c
	movs r1, #0
	strh r1, [r0, #0]
	strh r1, [r0, #2]
	add r2, sp, #0x80
	strh r1, [r2, #0]
	strh r1, [r2, #2]
	movs r1, #1
	mov sl, r1
	mov r8, r0
	add r4, sp, #0x2c
	subs r0, #0x1c
	str r0, [sp, #0x84]
	ldr r1, _08063408
	mov r9, r1
	movs r7, #1
	movs r6, #0
_080633EA:
	ldr r0, _0806340C
	ldr r1, _08063410
	strh r1, [r0, #0x3a]
	mov r1, r9
	ldrh r0, [r1, #0]
	cmp r0, #8
	bhi _08063414
	ldrh r0, [r5, #0]
	ldr r3, [sp, #0x18]
	str r7, [sp, #0]
	add r1, sp, #0x7c
	add r2, sp, #0x80
	bl sub_08008CC4
	b _08063422
_08063408: .4byte gUnk_030031FE
_0806340C: .4byte gUnk_03001250
_08063410: .4byte 0x00003030
_08063414:
	ldr r3, [sp, #0x18]
	str r7, [sp, #0]
	movs r0, #0x26
	add r1, sp, #0x7c
	add r2, sp, #0x80
	bl sub_08008CC4
_08063422:
	ldrh r0, [r5, #2]
	ldr r3, [sp, #0x4c]
	str r7, [sp, #0]
	mov r1, sp
	adds r1, #0x7e
	mov r2, sp
	adds r2, #0x82
	bl sub_08008CC4
	mov r1, r9
	ldrh r0, [r1, #0]
	cmp r0, #8
	bhi _08063458
	ldrh r2, [r5, #0]
	mov r0, r8
	ldrh r3, [r0, #0]
	str r6, [sp, #0]
	str r4, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0x78
	movs r1, #0x36
	bl sub_08007CF0
	b _08063472
_08063458:
	mov r1, r8
	ldrh r3, [r1, #0]
	str r6, [sp, #0]
	str r4, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0x78
	movs r1, #0x36
	movs r2, #0x26
	bl sub_08007CF0
_08063472:
	ldrh r2, [r5, #2]
	mov r0, r8
	ldrh r3, [r0, #2]
	str r6, [sp, #0]
	ldr r1, [sp, #0x84]
	str r1, [sp, #4]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0xc]
	movs r0, #0x78
	movs r1, #0x6a
	bl sub_08007CF0
	bl sub_080003F0
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r1, #0x77
	bls _080633EA
	ldr r1, _080634D0
	movs r0, #0
	strh r0, [r1, #0x3a]
_080634A6:
	bl sub_080020F4
	ldr r1, _080634D4
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #0x81
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	add sp, #0x88
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080634D0: .4byte gUnk_03001250
_080634D4: .4byte gUnk_03003CE0
	thumb_func_end sub_0806335C
