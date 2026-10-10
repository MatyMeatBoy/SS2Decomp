	thumb_func_start sub_0802C2A0
sub_0802C2A0: @ 0x0802C2A0
	push {r4, r5, lr}
	ldr r0, _0802C380
	movs r1, #0xd4
	lsls r1, r1, #1
	movs r2, #0xcf
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802C384
	ldr r0, [r0, #0]
	ldr r2, _0802C388
	adds r1, r0, r2
	movs r2, #0
_0802C2BA:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802C3A4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C2BA
	bl sub_080003F0
	movs r2, #0
_0802C2CE:
	cmp r2, #0
	beq _0802C2E2
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x22
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802C2E2:
	ldr r5, _0802C38C
	ldr r0, _0802C384
	ldr r0, [r0, #0]
	ldr r2, _0802C388
	adds r1, r0, r2
	movs r2, #0
_0802C2EE:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802C3A0
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C2EE
	bl sub_080003F0
	movs r0, #0
_0802C302:
	cmp r0, #0
	beq _0802C308
	str r5, [r0, #0x44]
_0802C308:
	ldr r0, _0802C380
	movs r1, #0xf4
	lsls r1, r1, #1
	movs r2, #0xcf
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802C384
	ldr r0, [r0, #0]
	ldr r2, _0802C388
	adds r1, r0, r2
	movs r2, #0
_0802C320:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802C39C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C320
	bl sub_080003F0
	movs r2, #0
_0802C334:
	cmp r2, #0
	beq _0802C348
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x22
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802C348:
	ldr r5, _0802C390
	ldr r0, _0802C384
	ldr r0, [r0, #0]
	ldr r2, _0802C388
	adds r1, r0, r2
	movs r2, #0
_0802C354:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802C398
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C354
	bl sub_080003F0
	movs r0, #0
_0802C368:
	cmp r0, #0
	beq _0802C36E
	str r5, [r0, #0x44]
_0802C36E:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802C3AC
	ldr r0, _0802C384
	ldr r0, [r0, #0]
	ldr r1, _0802C394
	adds r0, r0, r1
	b _0802C3B4
_0802C380: .4byte 0x00020039
_0802C384: .4byte gUnk_03005CF4
_0802C388: .4byte 0x000007A4
_0802C38C: .4byte sub_0803188C
_0802C390: .4byte sub_080319F0
_0802C394: .4byte 0x000001C5
_0802C398:
	adds r0, r1, #0
	b _0802C368
_0802C39C:
	adds r2, r1, #0
	b _0802C334
_0802C3A0:
	adds r0, r1, #0
	b _0802C302
_0802C3A4:
	adds r2, r1, #0
	b _0802C2CE
_0802C3A8:
	adds r2, r1, #0
	b _0802C40C
_0802C3AC:
	ldr r0, _0802C43C
	ldr r0, [r0, #0]
	ldr r2, _0802C440
	adds r0, r0, r2
_0802C3B4:
	ldrb r0, [r0, #0]
	asrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0802C46C
	movs r0, #7
	movs r1, #0xda
	movs r2, #0xcf
	bl sub_080289C0
	adds r4, r0, #0
	movs r1, #1
	bl sub_0802939C
	movs r0, #8
	movs r1, #0xf6
	movs r2, #0xcf
	bl sub_080289C0
	movs r1, #2
	bl sub_0802939C
	movs r0, #6
	movs r1, #0xe9
	movs r2, #0xcf
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802C43C
	ldr r0, [r0, #0]
	ldr r2, _0802C444
	adds r1, r0, r2
	movs r2, #0
_0802C3F8:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802C3A8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C3F8
	bl sub_080003F0
	movs r2, #0
_0802C40C:
	cmp r2, #0
	beq _0802C420
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x22
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802C420:
	ldr r5, _0802C448
	ldr r0, _0802C43C
	ldr r0, [r0, #0]
	ldr r2, _0802C444
	adds r1, r0, r2
	movs r2, #0
_0802C42C:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802C450
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C42C
	b _0802C4CC
_0802C43C: .4byte gUnk_03005CF4
_0802C440: .4byte 0x000001B9
_0802C444: .4byte 0x000007A4
_0802C448: .4byte sub_08031B54
_0802C44C:
	adds r2, r1, #0
	b _0802C496
_0802C450:
	adds r0, r1, #0
	b _0802C4D2
_0802C454:
	adds r2, r1, #0
	b _0802C504
_0802C458:
	adds r0, r1, #0
	b _0802C538
_0802C45C:
	adds r2, r1, #0
	b _0802C568
_0802C460:
	adds r0, r1, #0
	b _0802C59E
_0802C464:
	adds r2, r1, #0
	b _0802C5D2
_0802C468:
	adds r0, r1, #0
	b _0802C608
_0802C46C:
	movs r0, #7
	movs r1, #0xe9
	movs r2, #0xcf
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802C628
	ldr r0, [r0, #0]
	ldr r2, _0802C62C
	adds r1, r0, r2
	movs r2, #0
_0802C482:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802C44C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C482
	bl sub_080003F0
	movs r2, #0
_0802C496:
	cmp r2, #0
	beq _0802C4AA
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x22
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802C4AA:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0802939C
	ldr r5, _0802C630
	ldr r0, _0802C628
	ldr r0, [r0, #0]
	ldr r2, _0802C62C
	adds r1, r0, r2
	movs r2, #0
_0802C4BE:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802C450
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C4BE
_0802C4CC:
	bl sub_080003F0
	movs r0, #0
_0802C4D2:
	cmp r0, #0
	beq _0802C4D8
	str r5, [r0, #0x44]
_0802C4D8:
	ldr r0, _0802C634
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r2, #0xcf
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802C628
	ldr r0, [r0, #0]
	ldr r2, _0802C62C
	adds r1, r0, r2
	movs r2, #0
_0802C4F0:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802C454
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C4F0
	bl sub_080003F0
	movs r2, #0
_0802C504:
	cmp r2, #0
	beq _0802C518
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x22
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802C518:
	ldr r5, _0802C638
	ldr r0, _0802C628
	ldr r0, [r0, #0]
	ldr r2, _0802C62C
	adds r1, r0, r2
	movs r2, #0
_0802C524:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802C458
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C524
	bl sub_080003F0
	movs r0, #0
_0802C538:
	cmp r0, #0
	beq _0802C53E
	str r5, [r0, #0x44]
_0802C53E:
	ldr r0, _0802C634
	movs r1, #0xa8
	movs r2, #0xc8
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802C628
	ldr r0, [r0, #0]
	ldr r2, _0802C62C
	adds r1, r0, r2
	movs r2, #0
_0802C554:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802C45C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C554
	bl sub_080003F0
	movs r2, #0
_0802C568:
	cmp r2, #0
	beq _0802C57C
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x22
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802C57C:
	ldr r5, _0802C63C
	ldr r0, _0802C628
	ldr r0, [r0, #0]
	ldr r2, _0802C62C
	adds r1, r0, r2
	movs r2, #0
_0802C588:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802C590
	b _0802C460
_0802C590:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C588
	bl sub_080003F0
	movs r0, #0
_0802C59E:
	cmp r0, #0
	beq _0802C5A4
	str r5, [r0, #0x44]
_0802C5A4:
	ldr r0, _0802C634
	movs r1, #0x94
	lsls r1, r1, #1
	movs r2, #0xcf
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802C628
	ldr r0, [r0, #0]
	ldr r2, _0802C62C
	adds r1, r0, r2
	movs r2, #0
_0802C5BC:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802C5C4
	b _0802C464
_0802C5C4:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C5BC
	bl sub_080003F0
	movs r2, #0
_0802C5D2:
	cmp r2, #0
	beq _0802C5E6
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x22
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802C5E6:
	ldr r5, _0802C640
	ldr r0, _0802C628
	ldr r0, [r0, #0]
	ldr r2, _0802C62C
	adds r1, r0, r2
	movs r2, #0
_0802C5F2:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802C5FA
	b _0802C468
_0802C5FA:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C5F2
	bl sub_080003F0
	movs r0, #0
_0802C608:
	cmp r0, #0
	beq _0802C60E
	str r5, [r0, #0x44]
_0802C60E:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802C66C
	bl sub_0801AB24
	cmp r0, #1
	beq _0802C650
	cmp r0, #1
	bgt _0802C644
	cmp r0, #0
	beq _0802C64A
	b _0802C664
_0802C628: .4byte gUnk_03005CF4
_0802C62C: .4byte 0x000007A4
_0802C630: .4byte sub_08031B54
_0802C634: .4byte 0x00020039
_0802C638: .4byte sub_08031CB8
_0802C63C: .4byte sub_08031D88
_0802C640: .4byte sub_08031E58
_0802C644:
	cmp r0, #2
	beq _0802C658
	b _0802C664
_0802C64A:
	bl sub_080576A8
	b _0802C664
_0802C650:
	movs r0, #6
	bl sub_0801AB50
	b _0802C664
_0802C658:
	movs r0, #6
	bl sub_0801AB90
	b _0802C664
_0802C660:
	bl sub_080003F0
_0802C664:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802C660
_0802C66C:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802C2A0
