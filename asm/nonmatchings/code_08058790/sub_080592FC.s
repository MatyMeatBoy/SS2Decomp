	thumb_func_start sub_080592FC
sub_080592FC: @ 0x080592FC
	push {r4, r5, lr}
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _0805933C
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0802A19C
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldr r0, [r1, #0x30]
	movs r2, #2
	negs r2, r2
	ands r0, r2
	str r0, [r1, #0x30]
	bl sub_0800D108
	pop {r4, r5}
	pop {r0}
	bx r0
_0805933C: .4byte gUnk_03003CE0
	thumb_func_end sub_080592FC
