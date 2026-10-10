	thumb_func_start sub_08006C98
sub_08006C98: @ 0x08006C98
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08006CB0
	cmp r1, r0
	bhi _08006CAA
	adds r0, r1, #0
	bl sub_080B7234
_08006CAA:
	pop {r0}
	bx r0
	.2byte 0x0000
_08006CB0: .4byte 0x000001AB
	thumb_func_end sub_08006C98
