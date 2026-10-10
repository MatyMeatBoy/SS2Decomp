	thumb_func_start sub_080066A8
sub_080066A8: @ 0x080066A8
	ldr r0, _080066B4
	ldr r1, _080066B8
	ldr r1, [r1, #0]
	strh r1, [r0, #0]
	bx lr
	.2byte 0x0000
_080066B4: .4byte 0x04000010
_080066B8: .4byte gUnk_03003474
	thumb_func_end sub_080066A8
