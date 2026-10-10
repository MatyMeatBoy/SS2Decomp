	thumb_func_start sub_0806617C
sub_0806617C: @ 0x0806617C
	push {r4, r5, r6, lr}
	ldr r0, _0806618C
	ldr r2, [r0, #0]
	adds r5, r0, #0
	cmp r2, #0x31
	bls _080661B4
	movs r0, #0
	b _0806620E
_0806618C: .4byte gUnk_03006338
_08066190:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _080661AC
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #8
	ldr r2, _080661B0
	bl CpuSet
	b _0806620C
	.2byte 0x0000
_080661AC: .4byte gUnk_03003D38
_080661B0: .4byte 0x0400000C
_080661B4:
	ldr r0, _08066214
	ldr r4, [r0, #0]
	movs r3, #0
	adds r6, r0, #0
	cmp r3, r2
	bhs _080661D6
	adds r1, r2, #0
_080661C2:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _080661CE
	ldrb r0, [r4, #0]
	cmp r0, #0x8e
	beq _08066190
_080661CE:
	adds r3, #1
	adds r4, #0x88
	cmp r3, r1
	blo _080661C2
_080661D6:
	ldr r1, [r5, #0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r6, #0]
	adds r4, r1, r0
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0x8e
	strb r0, [r4, #0]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08066218
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #8
	ldr r2, _0806621C
	bl CpuSet
	movs r0, #6
	strb r0, [r4, #1]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
_0806620C:
	movs r0, #1
_0806620E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08066214: .4byte gUnk_03006300
_08066218: .4byte gUnk_03003D38
_0806621C: .4byte 0x0400000C
	thumb_func_end sub_0806617C
