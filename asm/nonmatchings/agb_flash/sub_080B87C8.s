	thumb_func_start sub_080B87C8
sub_080B87C8: @ 0x080B87C8
	push {lr}
	adds r2, r0, #0
	ldr r1, _080B87E4
	adds r0, r2, #1
	str r0, [r1, #0]
	ldr r3, _080B87E8
	movs r0, #1
	bics r3, r0
	ldr r0, _080B87EC
	ldr r1, _080B87E8
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080B87FC
	.2byte 0x0000
_080B87E4: .4byte gUnk_030076D4
_080B87E8: .4byte sub_080B87C4
_080B87EC: .4byte sub_080B87C8
_080B87F0:
	ldrh r0, [r3, #0]
	strh r0, [r2, #0]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080B87FC:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080B87F0
	pop {r0}
	bx r0
	thumb_func_end sub_080B87C8
