	thumb_func_start _call_via_sl
_call_via_sl: @ 0x080B8F4C
	bx sl
	.2byte 0x46C0
	thumb_func_end _call_via_sl
