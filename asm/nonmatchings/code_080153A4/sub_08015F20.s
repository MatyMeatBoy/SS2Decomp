	thumb_func_start sub_08015F20
sub_08015F20: @ 0x08015F20
	push {lr}
	bl sub_080020F4
	ldr r1, _08015F40
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	pop {r1}
	bx r1
	.2byte 0x0000
_08015F40: .4byte gUnk_03003CE0
	thumb_func_end sub_08015F20
