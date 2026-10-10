	thumb_func_start RegisterRamReset
RegisterRamReset: @ 0x080B8588
	svc #1
	bx lr
	thumb_func_end RegisterRamReset
