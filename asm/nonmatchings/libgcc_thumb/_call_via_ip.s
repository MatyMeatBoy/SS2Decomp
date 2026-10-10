	thumb_func_start _call_via_ip
_call_via_ip: @ 0x080B8F54
	bx ip
	.2byte 0x46C0
	thumb_func_end _call_via_ip
