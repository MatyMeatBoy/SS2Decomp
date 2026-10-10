	thumb_func_start sub_08006694
sub_08006694: @ 0x08006694
	ldr r1, _080066A0
	ldr r2, _080066A4
	adds r0, r2, #0
	strh r0, [r1, #0]
	bx lr
	.2byte 0x0000
_080066A0: .4byte 0x04000012
_080066A4: .4byte 0x0000FFFC
	thumb_func_end sub_08006694
