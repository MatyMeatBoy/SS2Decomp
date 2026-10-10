	thumb_func_start sub_0802E444
sub_0802E444: @ 0x0802E444
	push {r4, r5, lr}
	movs r1, #0xa0
	lsls r1, r1, #1
	movs r0, #0x42
	movs r2, #0x80
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E668
	ldr r0, [r0, #0]
	ldr r2, _0802E66C
	adds r1, r0, r2
	movs r2, #0
_0802E45E:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E466
	b _0802E6AC
_0802E466:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E45E
	bl sub_080003F0
	movs r2, #0
_0802E474:
	cmp r2, #0
	beq _0802E488
	movs r0, #0x50
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E488:
	ldr r5, _0802E670
	ldr r0, _0802E668
	ldr r0, [r0, #0]
	ldr r2, _0802E66C
	adds r1, r0, r2
	movs r2, #0
_0802E494:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E49C
	b _0802E6A8
_0802E49C:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E494
	bl sub_080003F0
	movs r0, #0
_0802E4AA:
	cmp r0, #0
	beq _0802E4B0
	str r5, [r0, #0x44]
_0802E4B0:
	movs r1, #0xf4
	lsls r1, r1, #1
	movs r0, #0x44
	movs r2, #0x6f
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E668
	ldr r0, [r0, #0]
	ldr r2, _0802E66C
	adds r1, r0, r2
	movs r2, #0
_0802E4C8:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E4D0
	b _0802E6A4
_0802E4D0:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E4C8
	bl sub_080003F0
	movs r2, #0
_0802E4DE:
	cmp r2, #0
	beq _0802E4F2
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E4F2:
	ldr r5, _0802E674
	ldr r0, _0802E668
	ldr r0, [r0, #0]
	ldr r2, _0802E66C
	adds r1, r0, r2
	movs r2, #0
_0802E4FE:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E506
	b _0802E6A0
_0802E506:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E4FE
	bl sub_080003F0
	movs r0, #0
_0802E514:
	cmp r0, #0
	beq _0802E51A
	str r5, [r0, #0x44]
_0802E51A:
	movs r1, #0xd8
	lsls r1, r1, #1
	movs r0, #0x45
	movs r2, #0x5f
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E668
	ldr r0, [r0, #0]
	ldr r2, _0802E66C
	adds r1, r0, r2
	movs r2, #0
_0802E532:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E53A
	b _0802E69C
_0802E53A:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E532
	bl sub_080003F0
	movs r2, #0
_0802E548:
	cmp r2, #0
	beq _0802E55C
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E55C:
	ldr r5, _0802E678
	ldr r0, _0802E668
	ldr r0, [r0, #0]
	ldr r2, _0802E66C
	adds r1, r0, r2
	movs r2, #0
_0802E568:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E570
	b _0802E698
_0802E570:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E568
	bl sub_080003F0
	movs r0, #0
_0802E57E:
	cmp r0, #0
	beq _0802E584
	str r5, [r0, #0x44]
_0802E584:
	movs r1, #0xe7
	lsls r1, r1, #1
	movs r0, #0x46
	movs r2, #0x5f
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E668
	ldr r0, [r0, #0]
	ldr r2, _0802E66C
	adds r1, r0, r2
	movs r2, #0
_0802E59C:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802E694
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E59C
	bl sub_080003F0
	movs r2, #0
_0802E5B0:
	cmp r2, #0
	beq _0802E5C4
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E5C4:
	ldr r5, _0802E67C
	ldr r0, _0802E668
	ldr r0, [r0, #0]
	ldr r2, _0802E66C
	adds r1, r0, r2
	movs r2, #0
_0802E5D0:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802E690
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E5D0
	bl sub_080003F0
	movs r0, #0
_0802E5E4:
	cmp r0, #0
	beq _0802E5EA
	str r5, [r0, #0x44]
_0802E5EA:
	ldr r1, _0802E680
	movs r0, #0x43
	movs r2, #0x83
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E668
	ldr r0, [r0, #0]
	ldr r2, _0802E66C
	adds r1, r0, r2
	movs r2, #0
_0802E600:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802E68C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E600
	bl sub_080003F0
	movs r2, #0
_0802E614:
	cmp r2, #0
	beq _0802E628
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E628:
	ldr r5, _0802E684
	ldr r0, _0802E668
	ldr r0, [r0, #0]
	ldr r2, _0802E66C
	adds r1, r0, r2
	movs r2, #0
_0802E634:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802E688
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E634
	bl sub_080003F0
	movs r0, #0
_0802E648:
	cmp r0, #0
	beq _0802E64E
	str r5, [r0, #0x44]
_0802E64E:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802E6D8
	bl sub_0801AB24
	cmp r0, #1
	beq _0802E6BC
	cmp r0, #1
	bgt _0802E6B0
	cmp r0, #0
	beq _0802E6B6
	b _0802E6D0
_0802E668: .4byte gUnk_03005CF4
_0802E66C: .4byte 0x000007A4
_0802E670: .4byte sub_0803C698
_0802E674: .4byte sub_08045F44
_0802E678: .4byte sub_08046F28
_0802E67C: .4byte sub_08046490
_0802E680: .4byte 0x00000225
_0802E684: .4byte sub_080469DC
_0802E688:
	adds r0, r1, #0
	b _0802E648
_0802E68C:
	adds r2, r1, #0
	b _0802E614
_0802E690:
	adds r0, r1, #0
	b _0802E5E4
_0802E694:
	adds r2, r1, #0
	b _0802E5B0
_0802E698:
	adds r0, r1, #0
	b _0802E57E
_0802E69C:
	adds r2, r1, #0
	b _0802E548
_0802E6A0:
	adds r0, r1, #0
	b _0802E514
_0802E6A4:
	adds r2, r1, #0
	b _0802E4DE
_0802E6A8:
	adds r0, r1, #0
	b _0802E4AA
_0802E6AC:
	adds r2, r1, #0
	b _0802E474
_0802E6B0:
	cmp r0, #2
	beq _0802E6C4
	b _0802E6D0
_0802E6B6:
	bl sub_080576A8
	b _0802E6D0
_0802E6BC:
	movs r0, #6
	bl sub_0801AB50
	b _0802E6D0
_0802E6C4:
	movs r0, #6
	bl sub_0801AB90
	b _0802E6D0
_0802E6CC:
	bl sub_080003F0
_0802E6D0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802E6CC
_0802E6D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802E444
