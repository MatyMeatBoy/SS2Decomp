	thumb_func_start sub_08002238
sub_08002238: @ 0x08002238
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08002248
	adds r0, r0, r1
	bx lr
	.2byte 0x0000
_08002248: .4byte gUnk_03002770
	thumb_func_end sub_08002238
