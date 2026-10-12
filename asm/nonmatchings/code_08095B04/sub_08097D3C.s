	thumb_func_start sub_08097D3C
sub_08097D3C: @ 0x08097D3C
	ldr r2, _08097D5C
	strb r0, [r2, #0xc]
	ldr r3, _08097D60
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	muls r0, r1, r0
	asrs r0, r0, #8
	strb r0, [r2, #0xd]
	strb r0, [r2, #0xe]
	bx lr
	.2byte 0x0000
_08097D5C: .4byte gUnk_030002A0
_08097D60: .4byte gUnk_080B9704
	thumb_func_end sub_08097D3C
