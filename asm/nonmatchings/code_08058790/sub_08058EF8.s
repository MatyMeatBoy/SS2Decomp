	thumb_func_start sub_08058EF8
sub_08058EF8: @ 0x08058EF8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080020F4
	movs r6, #0xa6
	lsls r6, r6, #1
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _08058F48
	adds r2, r2, r5
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0802949C
	movs r0, #1
	adds r1, r4, #0
	bl sub_080445E8
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r5
	ldr r0, [r1, #0x30]
	movs r2, #2
	negs r2, r2
	ands r0, r2
	str r0, [r1, #0x30]
	bl sub_0800D108
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08058F48: .4byte gUnk_03003CE0
	thumb_func_end sub_08058EF8
