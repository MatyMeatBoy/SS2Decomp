	thumb_func_start sub_08006EC8
sub_08006EC8: @ 0x08006EC8
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08006EDC
	bl sub_080B73A0
	pop {r0}
	bx r0
	.2byte 0x0000
_08006EDC: .4byte gUnk_030075C0
	thumb_func_end sub_08006EC8
