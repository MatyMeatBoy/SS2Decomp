	thumb_func_start sub_0800D1B0
sub_0800D1B0: @ 0x0800D1B0
	push {r4, lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0800D22C
	adds r2, r1, r0
	movs r4, #0
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0800D1FE
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0800D1FE
	ldrh r0, [r2, #0x20]
	cmp r0, #0xc
	beq _0800D1FE
	bl sub_08058DB0
	cmp r0, #0
	bne _0800D1FE
	bl sub_0800D11C
	cmp r0, #0
	bne _0800D1FE
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800D1FE
	bl sub_0800CDF8
	cmp r0, #0
	beq _0800D200
_0800D1FE:
	movs r4, #1
_0800D200:
	bl sub_0800CF80
	cmp r0, #0
	beq _0800D212
	bl sub_08056E50
	cmp r0, #0
	beq _0800D212
	movs r4, #1
_0800D212:
	ldr r0, _0800D230
	adds r1, r0, #0
	adds r1, #0x8c
	ldrh r1, [r1, #0]
	subs r1, #2
	adds r2, r0, #0
	cmp r1, #0x13
	bhi _0800D2D8
	lsls r0, r1, #2
	ldr r1, _0800D234
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800D22C: .4byte gUnk_03003CE0
_0800D230: .4byte gUnk_03003170
_0800D234: .4byte _0800D238
_0800D238:
	.4byte _0800D288
_0800D23C: .4byte _0800D2D8
_0800D240: .4byte _0800D2D8
_0800D244: .4byte _0800D294
_0800D248: .4byte _0800D2D8
_0800D24C: .4byte _0800D2D8
_0800D250: .4byte _0800D2A4
_0800D254: .4byte _0800D2D8
_0800D258: .4byte _0800D2D8
_0800D25C: .4byte _0800D2CC
_0800D260: .4byte _0800D2D6
_0800D264: .4byte _0800D2D8
_0800D268: .4byte _0800D2D6
_0800D26C: .4byte _0800D2D8
_0800D270: .4byte _0800D2D8
_0800D274: .4byte _0800D2D8
_0800D278: .4byte _0800D2D8
_0800D27C: .4byte _0800D2B0
_0800D280: .4byte _0800D2D8
_0800D284: .4byte _0800D2BC
_0800D288:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #7
	bne _0800D2D8
	b _0800D2D6
_0800D294:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0800D2D6
	cmp r0, #0xa
	bne _0800D2D8
	b _0800D2D6
_0800D2A4:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x11
	bne _0800D2D8
	b _0800D2D6
_0800D2B0:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0800D2D8
	b _0800D2D6
_0800D2BC:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #2
	beq _0800D2D6
	cmp r0, #4
	bne _0800D2D8
	b _0800D2D6
_0800D2CC:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0800D2D8
_0800D2D6:
	movs r4, #1
_0800D2D8:
	bl sub_0800CDC0
	cmp r0, #0
	beq _0800D2EA
	bl sub_08019C3C
	cmp r0, #0
	bne _0800D2EA
	movs r4, #1
_0800D2EA:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0800D1B0
