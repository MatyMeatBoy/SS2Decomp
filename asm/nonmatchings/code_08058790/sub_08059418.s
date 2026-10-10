	thumb_func_start sub_08059418
sub_08059418: @ 0x08059418
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08059454
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_0800CE30
	cmp r0, #0
	bne _08059458
	movs r0, #2
	adds r1, r4, #0
	bl sub_080445E8
	b _08059460
	.2byte 0x0000
_08059454: .4byte gUnk_03003CE0
_08059458:
	movs r0, #3
	adds r1, r4, #0
	bl sub_080445E8
_08059460:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08059484
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	pop {r4}
	pop {r0}
	bx r0
_08059484: .4byte gUnk_03003CE0
	thumb_func_end sub_08059418
