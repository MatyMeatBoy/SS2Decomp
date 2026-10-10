	thumb_func_start sub_08058240
sub_08058240: @ 0x08058240
	push {lr}
	bl sub_080020F4
	ldr r1, _0805825C
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	pop {r1}
	bx r1
	.2byte 0x0000
_0805825C: .4byte gUnk_03003CE0
	thumb_func_end sub_08058240
