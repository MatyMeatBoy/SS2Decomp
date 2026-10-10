	thumb_func_start sub_08000C08
sub_08000C08: @ 0x08000C08
	ldr r2, _08000C14
	strh r0, [r2, #0]
	ldr r0, _08000C18
	strh r1, [r0, #0]
	bx lr
	.2byte 0x0000
_08000C14: .4byte gUnk_03001730
_08000C18: .4byte gUnk_03002348
	thumb_func_end sub_08000C08
