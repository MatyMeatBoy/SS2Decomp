	thumb_func_start sub_08058C74
sub_08058C74: @ 0x08058C74
	push {lr}
	ldr r1, _08058C88
	ldr r1, [r1, #0]
	adds r1, #0x68
	strh r0, [r1, #0]
	bl sub_0805AD78
	pop {r0}
	bx r0
	.2byte 0x0000
_08058C88: .4byte gUnk_030034E0
	thumb_func_end sub_08058C74
