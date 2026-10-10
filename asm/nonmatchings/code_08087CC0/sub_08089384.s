	thumb_func_start sub_08089384
sub_08089384: @ 0x08089384
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08089394
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _08089480
	b _0808939C
_08089394: .4byte gUnk_03005CF4
_08089398:
	bl sub_080003F0
_0808939C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089398
	bl sub_080020F4
	adds r7, r0, #0
	ldr r0, _0808941C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x36]
	lsls r4, r0, #3
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, #4
	adds r4, r5, r4
	bl sub_0800CCDC
	bl sub_080020F4
	ldr r5, _08089420
	movs r6, #0xa6
	lsls r6, r6, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r1, r5, #0
	adds r1, #0x8c
	adds r1, r2, r1
	ldrh r0, [r4, #0]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r1, r5, #0
	adds r1, #0x90
	adds r1, r2, r1
	ldrh r0, [r4, #2]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r2, r2, r5
	adds r3, r2, #0
	adds r3, #0x94
	adds r2, #0x8c
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	str r0, [r3, #0]
	str r1, [r3, #4]
	adds r0, r7, #0
	muls r0, r6, r0
	adds r0, r0, r5
	adds r2, r0, #0
	adds r2, #0x94
	adds r0, #0x8c
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	str r1, [r2, #4]
	movs r0, #0xa
	bl sub_08057B98
	cmp r0, #0
	beq _08089424
	movs r0, #0
	movs r1, #0x14
	bl sub_08009930
	b _08089432
_0808941C: .4byte gUnk_03005CF4
_08089420: .4byte gUnk_03003CE0
_08089424:
	movs r0, #0
	movs r1, #3
	bl sub_08009930
	b _08089432
_0808942E:
	bl sub_080003F0
_08089432:
	bl sub_0800BA6C
	cmp r0, #0
	beq _0808942E
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r7, #0
	muls r4, r0, r4
	ldr r0, _08089474
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r1, _08089478
	movs r0, #0
	bl sub_08057328
	bl sub_08015EF8
	bl sub_08015C38
	ldr r0, _0808947C
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	b _080894F8
	.2byte 0x0000
_08089474: .4byte gUnk_03003D6C
_08089478: .4byte sub_0802C674
_0808947C: .4byte gUnk_03005CF4
_08089480:
	adds r0, r5, #0
	movs r1, #3
	bl sub_08088B6C
	cmp r0, #0
	beq _08089490
	movs r0, #1
	b _080894FA
_08089490:
	bl sub_080020F4
	ldr r1, _080894B8
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #0x37
	ble _080894F8
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _080894C0
_080894B8: .4byte gUnk_03003CE0
_080894BC:
	bl sub_080003F0
_080894C0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080894BC
	bl sub_0800BB40
	ldr r0, _080894EC
	ldr r1, [r0, #0]
	movs r2, #0
	movs r0, #3
	strh r0, [r1, #0x36]
	strh r2, [r1, #2]
	ldr r0, _080894F0
	adds r3, r1, r0
	ldr r0, _080894F4
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	strh r2, [r1, #0x10]
	strh r2, [r1, #0x1c]
	movs r0, #1
	b _080894FA
	.2byte 0x0000
_080894EC: .4byte gUnk_03005CF4
_080894F0: .4byte 0x0000071C
_080894F4: .4byte gUnk_084F0AC0
_080894F8:
	movs r0, #0
_080894FA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08089384
