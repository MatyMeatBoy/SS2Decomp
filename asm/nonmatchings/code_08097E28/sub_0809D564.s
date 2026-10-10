	thumb_func_start sub_0809D564
sub_0809D564: @ 0x0809D564
	ldr r0, _0809D570
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.2byte 0x0000
_0809D570: .4byte gUnk_030002E8
	thumb_func_end sub_0809D564
