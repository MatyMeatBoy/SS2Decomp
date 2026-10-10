	thumb_func_start sub_08029174
sub_08029174: @ 0x08029174
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bls _080291C8
	ldr r0, _080291BC
	ldr r0, [r0, #0]
	ldr r3, _080291C0
	adds r1, r0, r3
	movs r3, #0
_0802918E:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _080291C4
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _0802918E
	bl sub_080003F0
	movs r2, #0
_080291A2:
	cmp r2, #0
	beq _08029266
	movs r1, #0
	strh r4, [r2, #0x38]
	ldrh r0, [r2, #0x24]
	adds r0, r4, r0
	strh r0, [r2, #0x2c]
	strh r1, [r2, #0x30]
	strh r1, [r2, #0x2e]
	strh r1, [r2, #0x32]
	strh r1, [r2, #0x34]
	b _08029266
	.2byte 0x0000
_080291BC: .4byte gUnk_03005CF4
_080291C0: .4byte 0x000007A4
_080291C4:
	adds r2, r1, #0
	b _080291A2
_080291C8:
	cmp r2, #0
	beq _08029204
	subs r2, #1
	cmp r2, #4
	bhi _08029266
	ldr r1, _08029200
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r2, r1, r0
	movs r1, #0
	movs r0, #0xc
	strh r0, [r2, #0xc]
	movs r0, #5
	strh r0, [r2, #0xe]
	adds r0, r2, #0
	adds r0, #0x70
	strh r4, [r0, #0]
	subs r0, #4
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	adds r0, #8
	strh r1, [r0, #0]
	b _08029266
_08029200: .4byte gUnk_030056F4
_08029204:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08029230
	adds r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08029238
	adds r0, r3, #0
	adds r0, #0xc0
	movs r1, #1
	strh r1, [r0, #0]
	ldr r0, _08029234
	ands r4, r0
	b _0802923E
	.2byte 0x0000
_08029230: .4byte gUnk_03003CE0
_08029234: .4byte 0x00007FFF
_08029238:
	adds r0, r3, #0
	adds r0, #0xc0
	strh r1, [r0, #0]
_0802923E:
	lsrs r2, r4, #8
	movs r0, #0xf
	ands r2, r0
	cmp r2, #0
	bne _0802924A
	ldrh r2, [r3, #0x10]
_0802924A:
	movs r0, #0xff
	ands r4, r0
	adds r0, r3, #0
	adds r0, #0xba
	movs r1, #0
	strh r4, [r0, #0]
	adds r0, #2
	strh r2, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
	movs r0, #0xc
	strh r0, [r3, #0x20]
	movs r0, #5
	strh r0, [r3, #0x22]
_08029266:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08029174
