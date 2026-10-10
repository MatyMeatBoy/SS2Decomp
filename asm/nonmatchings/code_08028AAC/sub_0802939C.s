	thumb_func_start sub_0802939C
sub_0802939C: @ 0x0802939C
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bls _080293F0
	ldr r0, _080293E4
	ldr r0, [r0, #0]
	ldr r3, _080293E8
	adds r1, r0, r3
	movs r3, #0
_080293B6:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _080293EC
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _080293B6
	bl sub_080003F0
	movs r2, #0
_080293CA:
	cmp r2, #0
	beq _08029494
	movs r0, #0
	strh r4, [r2, #0x38]
	ldrh r1, [r2, #0x24]
	adds r1, r4, r1
	strh r1, [r2, #0x2c]
	strh r0, [r2, #0x30]
	strh r0, [r2, #0x2e]
	strh r0, [r2, #0x32]
	movs r0, #1
	strh r0, [r2, #0x34]
	b _08029494
_080293E4: .4byte gUnk_03005CF4
_080293E8: .4byte 0x000007A4
_080293EC:
	adds r2, r1, #0
	b _080293CA
_080293F0:
	cmp r2, #0
	beq _08029430
	subs r2, #1
	cmp r2, #4
	bhi _08029494
	ldr r1, _0802942C
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
	adds r1, r2, #0
	adds r1, #0x72
	movs r0, #1
	strh r0, [r1, #0]
	b _08029494
_0802942C: .4byte gUnk_030056F4
_08029430:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0802945C
	adds r2, r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08029464
	adds r0, r2, #0
	adds r0, #0xc0
	movs r1, #1
	strh r1, [r0, #0]
	ldr r0, _08029460
	ands r4, r0
	b _0802946A
	.2byte 0x0000
_0802945C: .4byte gUnk_03003CE0
_08029460: .4byte 0x00007FFF
_08029464:
	adds r0, r2, #0
	adds r0, #0xc0
	strh r1, [r0, #0]
_0802946A:
	lsrs r1, r4, #8
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _08029476
	ldrh r1, [r2, #0x10]
_08029476:
	movs r0, #0xff
	ands r4, r0
	adds r0, r2, #0
	adds r0, #0xba
	strh r4, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
	adds r1, r2, #0
	adds r1, #0xbe
	movs r0, #1
	strh r0, [r1, #0]
	movs r0, #0xc
	strh r0, [r2, #0x20]
	movs r0, #5
	strh r0, [r2, #0x22]
_08029494:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0802939C
