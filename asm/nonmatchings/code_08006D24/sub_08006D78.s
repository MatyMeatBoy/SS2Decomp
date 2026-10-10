	thumb_func_start sub_08006D78
sub_08006D78: @ 0x08006D78
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08006D90
	cmp r1, r0
	bhi _08006D8A
	adds r0, r1, #0
	bl sub_080B7308
_08006D8A:
	pop {r0}
	bx r0
	.2byte 0x0000
_08006D90: .4byte 0x000001AB
	thumb_func_end sub_08006D78
