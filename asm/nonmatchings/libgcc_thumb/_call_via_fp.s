	thumb_func_start _call_via_fp
_call_via_fp: @ 0x080B8F50
	bx fp
	.2byte 0x46C0
	thumb_func_end _call_via_fp
