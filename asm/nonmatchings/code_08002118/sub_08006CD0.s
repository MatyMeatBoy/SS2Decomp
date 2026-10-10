	thumb_func_start sub_08006CD0
sub_08006CD0: @ 0x08006CD0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08006CE8
	cmp r1, r0
	bhi _08006CE2
	adds r0, r1, #0
	bl sub_080B72D4
_08006CE2:
	pop {r0}
	bx r0
	.2byte 0x0000
_08006CE8: .4byte 0x000001AB
	thumb_func_end sub_08006CD0
