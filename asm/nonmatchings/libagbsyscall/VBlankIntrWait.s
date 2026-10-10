	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x080B8590
	movs r2, #0
	svc #5
	bx lr
	thumb_func_end VBlankIntrWait
