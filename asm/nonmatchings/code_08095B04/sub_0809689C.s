	thumb_func_start sub_0809689C
sub_0809689C: @ 0x0809689C
	ldr r0, _080968BC
	movs r2, #0
	movs r1, #0
	strh r1, [r0, #6]
	strh r1, [r0, #4]
	strh r1, [r0, #0xa]
	strh r1, [r0, #8]
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xe]
	strb r2, [r0, #0xd]
	strb r2, [r0, #0xf]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #2]
	strh r1, [r0, #0]
	bx lr
_080968BC: .4byte gUnk_030002A0
	thumb_func_end sub_0809689C
