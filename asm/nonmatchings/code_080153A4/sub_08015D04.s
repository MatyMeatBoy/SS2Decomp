	thumb_func_start sub_08015D04
sub_08015D04: @ 0x08015D04
	push {lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08015D24
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	ldr r1, _08015D28
	ands r0, r1
	str r0, [r2, #0x30]
	pop {r0}
	bx r0
	.2byte 0x0000
_08015D24: .4byte gUnk_03003CE0
_08015D28: .4byte 0xFFEFFFFF
	thumb_func_end sub_08015D04
