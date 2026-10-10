	thumb_func_start sub_08015CB4
sub_08015CB4: @ 0x08015CB4
	push {lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08015CD8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	ldr r1, _08015CDC
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08067D74
	pop {r0}
	bx r0
	.2byte 0x0000
_08015CD8: .4byte gUnk_03003CE0
_08015CDC: .4byte 0xFFF7FFFF
	thumb_func_end sub_08015CB4
