	thumb_func_start sub_080B8780
sub_080B8780: @ 0x080B8780
	ldr r3, _080B87B0
	movs r1, #0
	strh r1, [r3, #0]
	ldr r2, _080B87B4
	ldr r0, [r2, #0]
	strh r1, [r0, #0]
	adds r0, #2
	str r0, [r2, #0]
	strh r1, [r0, #0]
	subs r0, #2
	str r0, [r2, #0]
	ldr r2, _080B87B8
	ldr r0, _080B87BC
	ldrb r0, [r0, #0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2, #0]
	bics r0, r1
	strh r0, [r2, #0]
	ldr r0, _080B87C0
	ldrh r0, [r0, #0]
	strh r0, [r3, #0]
	bx lr
	.2byte 0x0000
_080B87B0: .4byte 0x04000208
_080B87B4: .4byte gUnk_03000E34
_080B87B8: .4byte 0x04000200
_080B87BC: .4byte gUnk_03000E30
_080B87C0: .4byte gUnk_03000E38
	thumb_func_end sub_080B8780
