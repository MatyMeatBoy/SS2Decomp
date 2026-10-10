	thumb_func_start sub_0802926C
sub_0802926C: @ 0x0802926C
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bls _080292C8
	ldr r0, _080292BC
	ldr r0, [r0, #0]
	ldr r3, _080292C0
	adds r1, r0, r3
	movs r3, #0
_08029286:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _080292C4
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _08029286
	bl sub_080003F0
	movs r4, #0
_0802929A:
	cmp r4, #0
	beq _08029394
	movs r1, #0
	strh r5, [r4, #0x38]
	ldrh r0, [r4, #0x24]
	adds r0, r5, r0
	strh r0, [r4, #0x2c]
	strh r1, [r4, #0x30]
	strh r1, [r4, #0x2e]
	strh r1, [r4, #0x32]
	strh r1, [r4, #0x34]
_080292B0:
	bl sub_080003F0
	ldrh r0, [r4, #0x32]
	cmp r0, #0
	beq _080292B0
	b _08029394
_080292BC: .4byte gUnk_03005CF4
_080292C0: .4byte 0x000007A4
_080292C4:
	adds r4, r1, #0
	b _0802929A
_080292C8:
	cmp r2, #0
	beq _0802931C
	subs r2, #1
	cmp r2, #4
	bhi _08029394
	ldr r1, _08029318
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
	strh r5, [r0, #0]
	subs r0, #4
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	adds r0, #8
	strh r1, [r0, #0]
	adds r1, r2, #0
	adds r1, #0x6e
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _08029394
	adds r4, r1, #0
_0802930A:
	bl sub_080003F0
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _0802930A
	b _08029394
	.2byte 0x0000
_08029318: .4byte gUnk_030056F4
_0802931C:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08029348
	adds r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r5
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08029350
	adds r0, r3, #0
	adds r0, #0xc0
	movs r1, #1
	strh r1, [r0, #0]
	ldr r0, _0802934C
	ands r5, r0
	b _08029356
	.2byte 0x0000
_08029348: .4byte gUnk_03003CE0
_0802934C: .4byte 0x00007FFF
_08029350:
	adds r0, r3, #0
	adds r0, #0xc0
	strh r1, [r0, #0]
_08029356:
	lsrs r2, r5, #8
	movs r0, #0xf
	ands r2, r0
	movs r0, #0xff
	ands r5, r0
	cmp r2, #0
	bne _08029366
	ldrh r2, [r3, #0x10]
_08029366:
	adds r0, r3, #0
	adds r0, #0xba
	movs r1, #0
	strh r5, [r0, #0]
	adds r0, #2
	strh r2, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
	movs r0, #0xc
	strh r0, [r3, #0x20]
	movs r0, #5
	strh r0, [r3, #0x22]
	adds r0, r3, #0
	adds r0, #0xb6
	ldrh r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0
	bne _08029394
_0802938A:
	bl sub_080003F0
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _0802938A
_08029394:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802926C
