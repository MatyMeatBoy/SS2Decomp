	thumb_func_start sub_08015150
sub_08015150: @ 0x08015150
	push {r4, r5, lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080151DC
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080151AA
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	bne _080151AA
	adds r5, r4, #0
	adds r5, #0xdc
_08015174:
	adds r0, r4, #0
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _08015186
	cmp r0, #4
	beq _08015186
	cmp r0, #5
	bne _08015196
_08015186:
	adds r0, r4, #0
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08015196
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
_08015196:
	bl sub_080003F0
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080151AA
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	beq _08015174
_080151AA:
	ldrh r0, [r4, #0x20]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080151C4
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _080151C4
	strh r1, [r4, #0x20]
_080151C4:
	movs r1, #0
	strh r1, [r4, #0x24]
	ldrh r0, [r4, #0x26]
	strh r0, [r4, #0x28]
	strh r1, [r4, #0x26]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
_080151DC: .4byte gUnk_03003CE0
	thumb_func_end sub_08015150
