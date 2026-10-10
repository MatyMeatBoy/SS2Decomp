	thumb_func_start sub_080010AC
sub_080010AC: @ 0x080010AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080010C0
	ldrh r1, [r2, #0]
	bics r1, r0
	strh r1, [r2, #0]
	ldr r0, _080010C4
	strh r1, [r0, #0]
	bx lr
	.2byte 0x0000
_080010C0: .4byte gUnk_03000004
_080010C4: .4byte 0x04000004
	thumb_func_end sub_080010AC
