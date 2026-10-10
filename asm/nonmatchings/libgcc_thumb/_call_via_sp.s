	thumb_func_start _call_via_sp
_call_via_sp: @ 0x080B8F58
	bx sp
	.2byte 0x46C0
	thumb_func_end _call_via_sp
