	thumb_func_start sub_0805790C
sub_0805790C: @ 0x0805790C
	push {lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08057930
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_08067D74
	pop {r0}
	bx r0
	.2byte 0x0000
_08057930: .4byte gUnk_03003CE0
	thumb_func_end sub_0805790C
