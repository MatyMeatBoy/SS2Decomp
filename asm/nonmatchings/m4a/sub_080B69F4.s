	thumb_func_start sub_080B69F4
sub_080B69F4: @ 0x080B69F4
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _080B6A06
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_080B6A06:
	bx lr
	.4byte 0x6C0AB500
	.4byte 0x2B007813
	.4byte 0x3201D102
	.4byte 0xE7D0640A
	.4byte 0x330178CB
	.4byte 0x469C70CB
	.4byte 0xFFC4F7FF
	.4byte 0xD200459C
	.4byte 0x2300E7C7
	.4byte 0x320570CB
	.4byte 0xBC01640A
	.2byte 0x4700
	thumb_func_end sub_080B69F4
