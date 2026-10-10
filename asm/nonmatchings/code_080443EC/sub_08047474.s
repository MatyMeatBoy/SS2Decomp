	thumb_func_start sub_08047474
sub_08047474: @ 0x08047474
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080474B0
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_0800CE30
	cmp r0, #0
	beq _080474BC
	ldr r0, _080474B4
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	b _080474C6
_080474B0: .4byte gUnk_03003CE0
_080474B4: .4byte gUnk_03005CF4
_080474B8:
	adds r0, r1, #0
	b _08047580
_080474BC:
	ldr r0, _080474D4
	ldr r0, [r0, #0]
	movs r3, #0xdc
	lsls r3, r3, #1
	adds r0, r0, r3
_080474C6:
	ldrb r0, [r0, #0]
	asrs r0, r0, #5
	ands r0, r4
	cmp r0, #0
	beq _080474D2
	b _08047714
_080474D2:
	b _080474DC
_080474D4: .4byte gUnk_03005CF4
_080474D8:
	bl sub_080003F0
_080474DC:
	bl sub_0805F184
	cmp r0, #0
	bne _080474D8
	b _080474EA
_080474E6:
	bl sub_080003F0
_080474EA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080474E6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0804750C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08047514
_0804750C: .4byte 0x0014022B
_08047510:
	bl sub_080003F0
_08047514:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0804752A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08047510
	bl sub_0805EFBC
_0804752A:
	movs r3, #0
	movs r2, #0
	ldr r0, _0804758C
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08047538:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _08047546
	ldrh r0, [r1, #2]
	cmp r0, #0x2a
	bne _08047546
	adds r3, #1
_08047546:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08047538
	cmp r3, #0
	bgt _08047554
	b _08047762
_08047554:
	adds r2, r5, #0
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bls _08047598
	ldr r0, _08047590
	ldr r0, [r0, #0]
	ldr r3, _08047594
	adds r1, r0, r3
	movs r3, #0
	add r6, sp, #0xc
_0804756C:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _080474B8
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _0804756C
	bl sub_080003F0
	movs r0, #0
_08047580:
	cmp r0, #0
	beq _080475E8
	adds r0, #0x42
	strh r4, [r0, #0]
	b _080475E8
	.2byte 0x0000
_0804758C: .4byte gUnk_030034E0
_08047590: .4byte gUnk_03005CF4
_08047594: .4byte 0x000007A4
_08047598:
	cmp r5, #0
	beq _080475C4
	subs r2, r5, #1
	add r6, sp, #0xc
	cmp r2, #4
	bhi _080475E8
	ldr r1, _080475C0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	movs r1, #3
	bl sub_08019EB8
	b _080475E8
	.2byte 0x0000
_080475C0: .4byte gUnk_030056F4
_080475C4:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _080475E0
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r4, [r0, #0]
	add r6, sp, #0xc
	b _080475E8
	.2byte 0x0000
_080475E0: .4byte gUnk_03003CE0
_080475E4:
	bl sub_080003F0
_080475E8:
	bl sub_0805F184
	cmp r0, #0
	bne _080475E4
	b _080475F6
_080475F2:
	bl sub_080003F0
_080475F6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080475F2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08047618
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08047620
_08047618: .4byte 0x0014022D
_0804761C:
	bl sub_080003F0
_08047620:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08047636
	bl sub_0800CDF8
	cmp r0, #0
	beq _0804761C
	bl sub_0805EFBC
_08047636:
	movs r4, #1
	movs r3, #0
	ldr r7, _080476B0
	movs r5, #0
_0804763E:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #1
	bne _08047666
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x2a
	bne _08047666
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _0804766C
_08047666:
	adds r3, #1
	cmp r3, #0x18
	bls _0804763E
_0804766C:
	movs r1, #1
	movs r2, #0x2b
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_0804767C:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _0804767C
	movs r4, #0
_08047688:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08047688
	ldr r0, _080476B4
	movs r1, #0xd
	bl sub_08068070
	ldr r0, _080476B8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080476C0
	movs r0, #0x33
	bl sub_08006D08
	b _080476C0
_080476B0: .4byte gUnk_030034E0
_080476B4: .4byte sub_0805990C
_080476B8: .4byte gUnk_030027D0
_080476BC:
	bl sub_080003F0
_080476C0:
	bl sub_0805F184
	cmp r0, #0
	bne _080476BC
	b _080476CE
_080476CA:
	bl sub_080003F0
_080476CE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080476CA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080476F0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080476F8
_080476F0: .4byte 0x0014022E
_080476F4:
	bl sub_080003F0
_080476F8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08047762
	bl sub_0800CDF8
	cmp r0, #0
	beq _080476F4
	bl sub_0805EFBC
	b _08047762
_08047710:
	bl sub_080003F0
_08047714:
	bl sub_0805F184
	cmp r0, #0
	bne _08047710
	b _08047722
_0804771E:
	bl sub_080003F0
_08047722:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804771E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08047744
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804774C
_08047744: .4byte 0x00140230
_08047748:
	bl sub_080003F0
_0804774C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08047762
	bl sub_0800CDF8
	cmp r0, #0
	beq _08047748
	bl sub_0805EFBC
_08047762:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08047788
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08047788: .4byte gUnk_03003CE0
	thumb_func_end sub_08047474
