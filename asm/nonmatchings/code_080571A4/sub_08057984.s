	thumb_func_start sub_08057984
sub_08057984: @ 0x08057984
	push {lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080579A8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	pop {r0}
	bx r0
_080579A8: .4byte gUnk_03003CE0
	thumb_func_end sub_08057984
