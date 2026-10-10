	thumb_func_start sub_0801DF08
sub_0801DF08: @ 0x0801DF08
	push {r4, lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0801DF48
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x62
	ldrh r1, [r0, #0]
	adds r0, #0x62
	strh r1, [r0, #0]
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801DF3A
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0, #0]
	adds r1, r4, #0
	adds r1, #0xc2
	strh r0, [r1, #0]
_0801DF3A:
	movs r0, #0
	strh r0, [r4, #0x20]
	movs r0, #0x40
	str r0, [r4, #0x30]
	pop {r4}
	pop {r0}
	bx r0
_0801DF48: .4byte gUnk_03003CE0
	thumb_func_end sub_0801DF08
