	thumb_func_start sub_08090330
sub_08090330: @ 0x08090330
	push {lr}
	adds r1, r0, #0
	ldr r0, _08090360
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0809036C
	adds r0, r1, #0
	bl sub_0802704C
	ldr r1, _08090364
	movs r0, #0
	bl sub_08057328
	ldr r1, _08090368
	adds r0, r1, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080903BC
	adds r1, #0x72
	movs r0, #0x14
	strh r0, [r1, #0]
	b _080903BC
_08090360: .4byte gUnk_03005CF4
_08090364: .4byte sub_0808E130
_08090368: .4byte gUnk_03003170
_0809036C:
	bl sub_08056E90
	cmp r0, #0
	beq _080903BC
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08090384
_08090380:
	bl sub_080003F0
_08090384:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08090380
	bl sub_0800BB40
	ldr r0, _080903B0
	ldr r1, [r0, #0]
	ldr r0, _080903B4
	adds r3, r1, r0
	ldr r2, _080903B8
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #1
	strh r0, [r1, #0x30]
	strh r0, [r1, #0x24]
	b _080903BE
_080903B0: .4byte gUnk_03005CF4
_080903B4: .4byte 0x0000071C
_080903B8: .4byte gUnk_08517220
_080903BC:
	movs r0, #0
_080903BE:
	pop {r1}
	bx r1
	thumb_func_end sub_08090330
