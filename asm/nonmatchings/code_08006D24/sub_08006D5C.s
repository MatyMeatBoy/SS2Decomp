	thumb_func_start sub_08006D5C
sub_08006D5C: @ 0x08006D5C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08006D74
	cmp r1, r0
	bhi _08006D6E
	adds r0, r1, #0
	bl m4aSongNumStop
_08006D6E:
	pop {r0}
	bx r0
	.2byte 0x0000
_08006D74: .4byte 0x000001AB
	thumb_func_end sub_08006D5C
