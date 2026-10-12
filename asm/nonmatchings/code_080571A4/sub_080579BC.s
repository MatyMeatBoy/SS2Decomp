	thumb_func_start sub_080579BC
sub_080579BC: @ 0x080579BC
	push {lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _080579D4
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0x20]
	pop {r0}
	bx r0
_080579D4: .4byte gUnk_03003CE0
	thumb_func_end sub_080579BC
