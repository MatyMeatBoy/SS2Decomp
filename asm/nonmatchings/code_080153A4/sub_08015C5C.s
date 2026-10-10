	thumb_func_start sub_08015C5C
sub_08015C5C: @ 0x08015C5C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08015C88
	adds r2, r1, r0
	adds r0, r2, #0
	adds r0, #0x9c
	str r4, [r0, #0]
	adds r0, #4
	str r5, [r0, #0]
	ldr r0, [r2, #0x30]
	movs r1, #0x24
	orrs r0, r1
	str r0, [r2, #0x30]
	pop {r4, r5}
	pop {r0}
	bx r0
_08015C88: .4byte gUnk_03003CE0
	thumb_func_end sub_08015C5C
