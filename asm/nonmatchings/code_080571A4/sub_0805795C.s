	thumb_func_start sub_0805795C
sub_0805795C: @ 0x0805795C
	push {lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08057980
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	pop {r0}
	bx r0
	.2byte 0x0000
_08057980: .4byte gUnk_03003CE0
	thumb_func_end sub_0805795C
