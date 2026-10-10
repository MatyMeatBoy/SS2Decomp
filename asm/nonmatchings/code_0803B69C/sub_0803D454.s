	thumb_func_start sub_0803D454
sub_0803D454: @ 0x0803D454
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803D480
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	b _0803D488
_0803D480: .4byte gUnk_03003CE0
_0803D484:
	bl sub_080003F0
_0803D488:
	bl sub_0805F184
	cmp r0, #0
	bne _0803D484
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803D4AC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803D4B4
	.2byte 0x0000
_0803D4AC: .4byte 0x001404FB
_0803D4B0:
	bl sub_080003F0
_0803D4B4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803D4B0
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803D4CA
	b _0803D962
_0803D4CA:
	ldr r0, _0803D4F4
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803D4DC
	movs r0, #0x32
	bl sub_08006D08
_0803D4DC:
	movs r4, #2
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D4FC
	ldr r0, _0803D4F8
	ldr r1, [r0, #0]
	adds r1, #0x80
	ldr r0, [r1, #0]
	orrs r0, r4
	str r0, [r1, #0]
	b _0803D510
_0803D4F4: .4byte gUnk_030027D0
_0803D4F8: .4byte gUnk_03005CF4
_0803D4FC:
	ldr r0, _0803D508
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x78]
	orrs r0, r4
	str r0, [r1, #0x78]
	b _0803D510
_0803D508: .4byte gUnk_03005CF4
_0803D50C:
	bl sub_080003F0
_0803D510:
	bl sub_0805F184
	cmp r0, #0
	bne _0803D50C
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803D534
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803D53C
	.2byte 0x0000
_0803D534: .4byte 0x001404FC
_0803D538:
	bl sub_080003F0
_0803D53C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803D538
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803D552
	b _0803D962
_0803D552:
	ldr r0, _0803D57C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803D564
	movs r0, #0x32
	bl sub_08006D08
_0803D564:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D584
	ldr r0, _0803D580
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #4
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0803D59C
_0803D57C: .4byte gUnk_030027D0
_0803D580: .4byte gUnk_03005CF4
_0803D584:
	ldr r0, _0803D594
	ldr r2, [r0, #0]
	movs r1, #4
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
	b _0803D59C
	.2byte 0x0000
_0803D594: .4byte gUnk_03005CF4
_0803D598:
	bl sub_080003F0
_0803D59C:
	bl sub_0805F184
	cmp r0, #0
	bne _0803D598
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803D5C0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803D5C8
	.2byte 0x0000
_0803D5C0: .4byte 0x001404FD
_0803D5C4:
	bl sub_080003F0
_0803D5C8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803D5C4
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803D5DE
	b _0803D962
_0803D5DE:
	ldr r0, _0803D608
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803D5F0
	movs r0, #0x32
	bl sub_08006D08
_0803D5F0:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D610
	ldr r0, _0803D60C
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #8
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0803D628
_0803D608: .4byte gUnk_030027D0
_0803D60C: .4byte gUnk_03005CF4
_0803D610:
	ldr r0, _0803D620
	ldr r2, [r0, #0]
	movs r1, #8
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
	b _0803D628
	.2byte 0x0000
_0803D620: .4byte gUnk_03005CF4
_0803D624:
	bl sub_080003F0
_0803D628:
	bl sub_0805F184
	cmp r0, #0
	bne _0803D624
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803D64C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803D654
	.2byte 0x0000
_0803D64C: .4byte 0x001404FE
_0803D650:
	bl sub_080003F0
_0803D654:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803D650
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803D66A
	b _0803D962
_0803D66A:
	ldr r0, _0803D694
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803D67C
	movs r0, #0x32
	bl sub_08006D08
_0803D67C:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D69C
	ldr r0, _0803D698
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x10
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0803D6B4
_0803D694: .4byte gUnk_030027D0
_0803D698: .4byte gUnk_03005CF4
_0803D69C:
	ldr r0, _0803D6AC
	ldr r2, [r0, #0]
	movs r1, #0x10
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
	b _0803D6B4
	.2byte 0x0000
_0803D6AC: .4byte gUnk_03005CF4
_0803D6B0:
	bl sub_080003F0
_0803D6B4:
	bl sub_0805F184
	cmp r0, #0
	bne _0803D6B0
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803D6D8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803D6E0
	.2byte 0x0000
_0803D6D8: .4byte 0x001404FF
_0803D6DC:
	bl sub_080003F0
_0803D6E0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803D6DC
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803D6F6
	b _0803D962
_0803D6F6:
	ldr r0, _0803D720
	ldr r0, [r0, #0]
	movs r4, #0x20
	ands r0, r4
	cmp r0, #0
	bne _0803D708
	movs r0, #0x32
	bl sub_08006D08
_0803D708:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D728
	ldr r0, _0803D724
	ldr r1, [r0, #0]
	adds r1, #0x80
	ldr r0, [r1, #0]
	orrs r0, r4
	str r0, [r1, #0]
	b _0803D73C
	.2byte 0x0000
_0803D720: .4byte gUnk_030027D0
_0803D724: .4byte gUnk_03005CF4
_0803D728:
	ldr r0, _0803D734
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x78]
	orrs r0, r4
	str r0, [r1, #0x78]
	b _0803D73C
_0803D734: .4byte gUnk_03005CF4
_0803D738:
	bl sub_080003F0
_0803D73C:
	bl sub_0805F184
	cmp r0, #0
	bne _0803D738
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803D760
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803D768
	.2byte 0x0000
_0803D760: .4byte 0x00140500
_0803D764:
	bl sub_080003F0
_0803D768:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803D764
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803D77E
	b _0803D962
_0803D77E:
	ldr r0, _0803D7A8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803D790
	movs r0, #0x32
	bl sub_08006D08
_0803D790:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D7B0
	ldr r0, _0803D7AC
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x40
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0803D7C8
_0803D7A8: .4byte gUnk_030027D0
_0803D7AC: .4byte gUnk_03005CF4
_0803D7B0:
	ldr r0, _0803D7C0
	ldr r2, [r0, #0]
	movs r1, #0x40
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
	b _0803D7C8
	.2byte 0x0000
_0803D7C0: .4byte gUnk_03005CF4
_0803D7C4:
	bl sub_080003F0
_0803D7C8:
	bl sub_0805F184
	cmp r0, #0
	bne _0803D7C4
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803D7EC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803D7F4
	.2byte 0x0000
_0803D7EC: .4byte 0x00140501
_0803D7F0:
	bl sub_080003F0
_0803D7F4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803D7F0
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803D80A
	b _0803D962
_0803D80A:
	ldr r0, _0803D834
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803D81C
	movs r0, #0x32
	bl sub_08006D08
_0803D81C:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D83C
	ldr r0, _0803D838
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0803D854
_0803D834: .4byte gUnk_030027D0
_0803D838: .4byte gUnk_03005CF4
_0803D83C:
	ldr r0, _0803D84C
	ldr r2, [r0, #0]
	movs r1, #0x80
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
	b _0803D854
	.2byte 0x0000
_0803D84C: .4byte gUnk_03005CF4
_0803D850:
	bl sub_080003F0
_0803D854:
	bl sub_0805F184
	cmp r0, #0
	bne _0803D850
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803D878
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803D880
	.2byte 0x0000
_0803D878: .4byte 0x00140502
_0803D87C:
	bl sub_080003F0
_0803D880:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803D87C
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	beq _0803D962
	ldr r0, _0803D8C0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803D8A6
	movs r0, #0x32
	bl sub_08006D08
_0803D8A6:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D8C8
	ldr r0, _0803D8C4
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0803D8E0
_0803D8C0: .4byte gUnk_030027D0
_0803D8C4: .4byte gUnk_03005CF4
_0803D8C8:
	ldr r0, _0803D8D8
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
	b _0803D8E0
_0803D8D8: .4byte gUnk_03005CF4
_0803D8DC:
	bl sub_080003F0
_0803D8E0:
	bl sub_0805F184
	cmp r0, #0
	bne _0803D8DC
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803D904
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803D90C
	.2byte 0x0000
_0803D904: .4byte 0x00140503
_0803D908:
	bl sub_080003F0
_0803D90C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803D908
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	beq _0803D962
	ldr r0, _0803D94C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803D932
	movs r0, #0x32
	bl sub_08006D08
_0803D932:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D954
	ldr r0, _0803D950
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0803D962
_0803D94C: .4byte gUnk_030027D0
_0803D950: .4byte gUnk_03005CF4
_0803D954:
	ldr r0, _0803D994
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0803D962:
	movs r0, #0
	bl sub_0805C7B8
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803D998
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
_0803D994: .4byte gUnk_03005CF4
_0803D998: .4byte gUnk_03003CE0
	thumb_func_end sub_0803D454
