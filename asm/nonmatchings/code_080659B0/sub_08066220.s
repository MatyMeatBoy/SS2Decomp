	thumb_func_start sub_08066220
sub_08066220: @ 0x08066220
	push {r4, r5, r6, lr}
	ldr r0, _08066230
	ldr r2, [r0, #0]
	adds r5, r0, #0
	cmp r2, #0x31
	bls _08066258
	movs r0, #0
	b _080662B2
_08066230: .4byte gUnk_03006338
_08066234:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08066250
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #8
	ldr r2, _08066254
	bl sub_080B8578
	b _080662B0
	.2byte 0x0000
_08066250: .4byte gUnk_03003D18
_08066254: .4byte 0x04000008
_08066258:
	ldr r0, _080662B8
	ldr r4, [r0, #0]
	movs r3, #0
	adds r6, r0, #0
	cmp r3, r2
	bhs _0806627A
	adds r1, r2, #0
_08066266:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _08066272
	ldrb r0, [r4, #0]
	cmp r0, #0x8f
	beq _08066234
_08066272:
	adds r3, #1
	adds r4, #0x88
	cmp r3, r1
	blo _08066266
_0806627A:
	ldr r1, [r5, #0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r6, #0]
	adds r4, r1, r0
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0x8f
	strb r0, [r4, #0]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _080662BC
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #8
	ldr r2, _080662C0
	bl sub_080B8578
	movs r0, #4
	strb r0, [r4, #1]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
_080662B0:
	movs r0, #1
_080662B2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080662B8: .4byte gUnk_03006300
_080662BC: .4byte gUnk_03003D18
_080662C0: .4byte 0x04000008
	thumb_func_end sub_08066220
