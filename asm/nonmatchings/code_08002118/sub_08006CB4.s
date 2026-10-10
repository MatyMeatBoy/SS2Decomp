	thumb_func_start sub_08006CB4
sub_08006CB4: @ 0x08006CB4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08006CCC
	cmp r1, r0
	bhi _08006CC6
	adds r0, r1, #0
	bl sub_080B7280
_08006CC6:
	pop {r0}
	bx r0
	.2byte 0x0000
_08006CCC: .4byte 0x000001AB
	thumb_func_end sub_08006CB4
