	thumb_func_start sub_080686A4
sub_080686A4: @ 0x080686A4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _080686B4
	ldr r2, [r5, #0]
	cmp r2, #0x31
	bls _080686B8
	movs r0, #0
	b _080686E4
_080686B4: .4byte gUnk_03006338
_080686B8:
	ldr r1, _080686EC
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r4, [r1, #0]
	adds r4, r4, r0
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0x98
	strb r0, [r4, #0]
	adds r1, r4, #0
	adds r1, #8
	ldr r2, _080686F0
	adds r0, r3, #0
	bl sub_080B8578
	movs r0, #4
	strb r0, [r4, #1]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	movs r0, #1
_080686E4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
_080686EC: .4byte gUnk_03006300
_080686F0: .4byte 0x04000008
	thumb_func_end sub_080686A4
