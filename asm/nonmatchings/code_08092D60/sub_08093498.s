	thumb_func_start sub_08093498
sub_08093498: @ 0x08093498
	ldr r1, _080934C0
	ldrb r0, [r1, #0]
	adds r0, #2
	strb r0, [r1, #0]
	ldr r0, _080934C4
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080934BC
	ldr r1, _080934C8
	ldrh r2, [r1, #0xa]
	ldr r0, _080934CC
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _080934D0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
_080934BC:
	bx lr
	.2byte 0x0000
_080934C0: .4byte gUnk_03000267
_080934C4: .4byte gUnk_03000268
_080934C8: .4byte 0x040000D4
_080934CC: .4byte 0x0000C5FF
_080934D0: .4byte 0x00007FFF
	thumb_func_end sub_08093498
