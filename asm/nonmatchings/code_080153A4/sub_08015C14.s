	thumb_func_start sub_08015C14
sub_08015C14: @ 0x08015C14
	push {lr}
	bl sub_080020F4
	ldr r1, _08015C34
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
_08015C34: .4byte gUnk_03003CE0
	thumb_func_end sub_08015C14
