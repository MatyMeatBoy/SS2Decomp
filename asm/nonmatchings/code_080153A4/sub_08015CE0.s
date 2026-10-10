	thumb_func_start sub_08015CE0
sub_08015CE0: @ 0x08015CE0
	push {lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08015D00
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r2, #0x30]
	pop {r0}
	bx r0
_08015D00: .4byte gUnk_03003CE0
	thumb_func_end sub_08015CE0
