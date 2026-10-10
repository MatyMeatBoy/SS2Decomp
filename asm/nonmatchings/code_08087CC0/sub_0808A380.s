	thumb_func_start sub_0808A380
sub_0808A380: @ 0x0808A380
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0808A390
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808A454
	b _0808A398
_0808A390: .4byte gUnk_03005CF4
_0808A394:
	bl sub_080003F0
_0808A398:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808A394
	bl sub_080020F4
	adds r6, r0, #0
	ldr r0, _0808A3FC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x36]
	lsls r4, r0, #3
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, #4
	adds r4, r5, r4
	bl sub_0800CCDC
	bl sub_080020F4
	ldr r3, _0808A400
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	adds r1, r3, #0
	adds r1, #0x8c
	adds r1, r2, r1
	ldrh r0, [r4, #0]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r1, r3, #0
	adds r1, #0x90
	adds r1, r2, r1
	ldrh r0, [r4, #2]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r2, r2, r3
	adds r3, r2, #0
	adds r3, #0x94
	adds r2, #0x8c
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	str r0, [r3, #0]
	str r1, [r3, #4]
	movs r0, #0
	movs r1, #0xb
	bl sub_08009930
	b _0808A408
	.2byte 0x0000
_0808A3FC: .4byte gUnk_03005CF4
_0808A400: .4byte gUnk_03003CE0
_0808A404:
	bl sub_080003F0
_0808A408:
	bl sub_0800BA6C
	cmp r0, #0
	beq _0808A404
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r6, #0
	muls r4, r0, r4
	ldr r0, _0808A448
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r1, _0808A44C
	movs r0, #0
	bl sub_08057328
	bl sub_08015EF8
	bl sub_08015C38
	ldr r0, _0808A450
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	b _0808A464
_0808A448: .4byte gUnk_03003D6C
_0808A44C: .4byte sub_0802DE0C
_0808A450: .4byte gUnk_03005CF4
_0808A454:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08088B6C
	cmp r0, #0
	beq _0808A464
	movs r0, #1
	b _0808A4CE
_0808A464:
	bl sub_080020F4
	ldr r1, _0808A48C
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #0x25
	ble _0808A4CC
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808A494
_0808A48C: .4byte gUnk_03003CE0
_0808A490:
	bl sub_080003F0
_0808A494:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808A490
	bl sub_0800BB40
	ldr r0, _0808A4C0
	ldr r1, [r0, #0]
	movs r3, #0
	movs r0, #2
	strh r0, [r1, #0x36]
	movs r0, #0xa
	strh r0, [r1, #2]
	ldr r0, _0808A4C4
	adds r2, r1, r0
	ldr r0, _0808A4C8
	ldr r0, [r0, #0x28]
	str r0, [r2, #0]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x1c]
	movs r0, #1
	b _0808A4CE
_0808A4C0: .4byte gUnk_03005CF4
_0808A4C4: .4byte 0x0000071C
_0808A4C8: .4byte gUnk_084F0AC0
_0808A4CC:
	movs r0, #0
_0808A4CE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_0808A380
