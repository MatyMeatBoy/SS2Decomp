	thumb_func_start sub_0805D1E0
sub_0805D1E0: @ 0x0805D1E0
	ldr r1, _0805D1F8
	ldr r2, [r1, #0]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r1, r2, r3
	ldrh r1, [r1, #0]
	cmp r1, #6
	bne _0805D200
	ldr r1, _0805D1FC
	adds r2, r2, r1
	movs r1, #1
	b _0805D206
_0805D1F8: .4byte gUnk_030034E0
_0805D1FC: .4byte 0x00000149
_0805D200:
	ldr r3, _0805D20C
	adds r2, r2, r3
	movs r1, #0
_0805D206:
	strb r1, [r2, #0]
	bx lr
	.2byte 0x0000
_0805D20C: .4byte 0x00000149
	thumb_func_end sub_0805D1E0
