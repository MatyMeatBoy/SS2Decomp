	thumb_func_start sub_08006CEC
sub_08006CEC: @ 0x08006CEC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08006D04
	cmp r1, r0
	bhi _08006CFE
	adds r0, r1, #0
	bl sub_080B7308
_08006CFE:
	pop {r0}
	bx r0
	.2byte 0x0000
_08006D04: .4byte 0x000001AB
	thumb_func_end sub_08006CEC
