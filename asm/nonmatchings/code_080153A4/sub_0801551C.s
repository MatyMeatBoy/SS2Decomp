	thumb_func_start sub_0801551C
sub_0801551C: @ 0x0801551C
	push {r4, r5, r6, lr}
	bl sub_080020F4
	adds r5, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	ldr r6, _0801556C
	adds r0, r4, r6
	bl sub_08000470
	cmp r0, #0
	beq _08015574
	bl sub_080020F4
	cmp r0, r5
	bne _08015616
	ldr r3, _08015570
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	adds r2, r1, r3
	ldrh r0, [r2, #0x20]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08015616
	adds r0, r3, #0
	adds r0, #0x30
	adds r0, r1, r0
	ldr r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08015616
	strh r1, [r2, #0x20]
	b _08015616
_0801556C: .4byte gUnk_03003C40
_08015570: .4byte gUnk_03003CE0
_08015574:
	ldr r0, _08015598
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r5, r1
	adds r1, r1, r0
	ldrh r0, [r1, #0x10]
	cmp r0, #4
	beq _080155B0
	cmp r0, #5
	bne _08015616
	ldrh r0, [r1, #0xc]
	cmp r0, #4
	beq _080155A0
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _0801559C
	b _080155B8
_08015598: .4byte gUnk_03003CE0
_0801559C: .4byte sub_08015464
_080155A0:
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _080155AC
	b _080155B8
	.2byte 0x0000
_080155AC: .4byte sub_080153A4
_080155B0:
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _080155D0
_080155B8:
	str r1, [r0, #0]
	ldr r1, _080155D4
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r1, #8
	adds r0, r0, r1
	movs r1, #0x34
	str r1, [r0, #0]
	adds r4, r2, #0
	b _080155DC
	.2byte 0x0000
_080155D0: .4byte sub_080152CC
_080155D4: .4byte gUnk_03003C40
_080155D8:
	bl sub_080003F0
_080155DC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	ldr r3, _0801561C
	adds r0, r4, r5
	lsls r2, r0, #3
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0, #0]
	cmp r1, #0
	beq _080155D8
	adds r0, r3, #0
	adds r0, #0x10
	adds r0, r2, r0
	movs r4, #0xff
	lsls r4, r4, #2
	adds r1, r1, r4
	str r1, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	movs r1, #0
	str r1, [r0, #0]
	adds r0, r2, r3
	bl sub_08000274
_08015616:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0801561C: .4byte gUnk_03003C40
	thumb_func_end sub_0801551C
