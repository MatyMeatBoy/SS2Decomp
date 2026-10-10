	thumb_func_start sub_080392B4
sub_080392B4: @ 0x080392B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080392F4
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_0800CE30
	cmp r0, #0
	beq _080392FC
	ldr r0, _080392F8
	ldr r0, [r0, #0]
	adds r0, #0x80
	movs r1, #8
	ldr r0, [r0, #0]
	b _08039304
	.2byte 0x0000
_080392F4: .4byte gUnk_03003CE0
_080392F8: .4byte gUnk_03005CF4
_080392FC:
	ldr r0, _0803930C
	ldr r0, [r0, #0]
	movs r1, #8
	ldr r0, [r0, #0x78]
_08039304:
	ands r0, r1
	cmp r0, #0
	bne _08039366
	b _08039314
_0803930C: .4byte gUnk_03005CF4
_08039310:
	bl sub_080003F0
_08039314:
	bl sub_0805F184
	cmp r0, #0
	bne _08039310
	b _08039322
_0803931E:
	bl sub_080003F0
_08039322:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803931E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039344
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803934C
_08039344: .4byte 0x00140263
_08039348:
	bl sub_080003F0
_0803934C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039358
	b _080399BA
_08039358:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039348
	bl sub_0805EFBC
	b _080399BA
_08039366:
	bl sub_0800CE30
	cmp r0, #0
	beq _08039384
	ldr r0, _08039378
	ldr r0, [r0, #0]
	ldr r1, _0803937C
	adds r0, r0, r1
	b _0803938C
_08039378: .4byte gUnk_03005CF4
_0803937C: .4byte 0x000001C3
_08039380:
	adds r0, r1, #0
	b _08039454
_08039384:
	ldr r0, _0803939C
	ldr r0, [r0, #0]
	ldr r3, _080393A0
	adds r0, r0, r3
_0803938C:
	ldrb r0, [r0, #0]
	asrs r1, r0, #4
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803939A
	b _080397EA
_0803939A:
	b _080393A8
_0803939C: .4byte gUnk_03005CF4
_080393A0: .4byte 0x000001B7
_080393A4:
	bl sub_080003F0
_080393A8:
	bl sub_0805F184
	cmp r0, #0
	bne _080393A4
	b _080393B6
_080393B2:
	bl sub_080003F0
_080393B6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080393B2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080393D8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080393E0
_080393D8: .4byte 0x00140264
_080393DC:
	bl sub_080003F0
_080393E0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080393F6
	bl sub_0800CDF8
	cmp r0, #0
	beq _080393DC
	bl sub_0805EFBC
_080393F6:
	movs r3, #0
	movs r2, #0
	ldr r0, _08039460
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08039404:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _08039412
	ldrh r0, [r1, #2]
	cmp r0, #0x2f
	bne _08039412
	adds r3, #1
_08039412:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08039404
	cmp r3, #0
	bgt _08039420
	b _080399BA
_08039420:
	bl sub_080020F4
	cmp r0, #0
	beq _0803942A
	b _08039796
_0803942A:
	adds r2, r5, #0
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bls _0803946C
	ldr r0, _08039464
	ldr r0, [r0, #0]
	ldr r3, _08039468
	adds r1, r0, r3
	movs r3, #0
_08039440:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _08039380
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _08039440
	bl sub_080003F0
	movs r0, #0
_08039454:
	cmp r0, #0
	beq _080394B4
	adds r0, #0x42
	strh r4, [r0, #0]
	b _080394B4
	.2byte 0x0000
_08039460: .4byte gUnk_030034E0
_08039464: .4byte gUnk_03005CF4
_08039468: .4byte 0x000007A4
_0803946C:
	cmp r5, #0
	beq _08039494
	subs r2, r5, #1
	cmp r2, #4
	bhi _080394B4
	ldr r1, _08039490
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
	b _080394B4
_08039490: .4byte gUnk_030056F4
_08039494:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _080394AC
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r4, [r0, #0]
	b _080394B4
_080394AC: .4byte gUnk_03003CE0
_080394B0:
	bl sub_080003F0
_080394B4:
	bl sub_0805F184
	cmp r0, #0
	bne _080394B0
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080394D8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080394E0
	.2byte 0x0000
_080394D8: .4byte 0x00140265
_080394DC:
	bl sub_080003F0
_080394E0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080394DC
	adds r0, r4, #0
	bl sub_0805EF14
	adds r4, r0, #0
	cmp r4, #0
	beq _08039594
	b _080394FC
_080394F8:
	bl sub_080003F0
_080394FC:
	bl sub_0805F184
	cmp r0, #0
	bne _080394F8
	b _0803950A
_08039506:
	bl sub_080003F0
_0803950A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039506
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803952C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039534
_0803952C: .4byte 0x00140267
_08039530:
	bl sub_080003F0
_08039534:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803954A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039530
	bl sub_0805EFBC
_0803954A:
	movs r4, #1
	movs r3, #0
	ldr r7, _0803958C
	ldr r6, _08039590
	movs r5, #0
_08039554:
	ldr r0, [r6, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #1
	bne _0803957C
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x2f
	bne _0803957C
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _08039582
_0803957C:
	adds r3, #1
	cmp r3, #0x18
	bls _08039554
_08039582:
	adds r0, r7, #0
	movs r1, #4
	bl sub_08068070
	b _080399BA
_0803958C: .4byte sub_0805990C
_08039590: .4byte gUnk_030034E0
_08039594:
	add r6, sp, #0x18
	b _0803959C
_08039598:
	bl sub_080003F0
_0803959C:
	bl sub_0805F184
	cmp r0, #0
	bne _08039598
	b _080395AA
_080395A6:
	bl sub_080003F0
_080395AA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080395A6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080395CC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080395D4
_080395CC: .4byte 0x00140268
_080395D0:
	bl sub_080003F0
_080395D4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080395EA
	bl sub_0800CDF8
	cmp r0, #0
	beq _080395D0
	bl sub_0805EFBC
_080395EA:
	bl sub_0800CE30
	cmp r0, #0
	bne _080396C2
	movs r4, #1
	movs r3, #0
	ldr r7, _0803965C
	movs r5, #0
_080395FA:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #1
	bne _08039622
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x2f
	bne _08039622
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _08039628
_08039622:
	adds r3, #1
	cmp r3, #0x18
	bls _080395FA
_08039628:
	ldr r7, _08039660
	movs r5, #0
	adds r4, r6, #0
	movs r6, #0xa
_08039630:
	strh r6, [r4, #0]
	str r7, [sp, #0x1c]
	adds r0, r4, #0
	bl sub_0805AB20
	adds r5, #1
	cmp r5, #1
	blo _08039630
	ldr r0, _08039664
	movs r1, #4
	bl sub_08068070
	ldr r0, _08039668
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08039670
	movs r0, #0x33
	bl sub_08006D08
	b _08039670
_0803965C: .4byte gUnk_030034E0
_08039660: .4byte 0x00000BB8
_08039664: .4byte sub_0805990C
_08039668: .4byte gUnk_030027D0
_0803966C:
	bl sub_080003F0
_08039670:
	bl sub_0805F184
	cmp r0, #0
	bne _0803966C
	b _0803967E
_0803967A:
	bl sub_080003F0
_0803967E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803967A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080396A0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080396A8
_080396A0: .4byte 0x00140269
_080396A4:
	bl sub_080003F0
_080396A8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080396B4
	b _080399BA
_080396B4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080396A4
	bl sub_0805EFBC
	b _080399BA
_080396C2:
	movs r4, #1
	movs r3, #0
	ldr r7, _0803972C
	movs r5, #0
_080396CA:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #1
	bne _080396F2
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x2f
	bne _080396F2
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _080396F8
_080396F2:
	adds r3, #1
	cmp r3, #0x18
	bls _080396CA
_080396F8:
	ldr r7, _08039730
	movs r5, #0
	adds r4, r6, #0
	movs r6, #0xa
_08039700:
	strh r6, [r4, #0]
	str r7, [sp, #0x1c]
	adds r0, r4, #0
	bl sub_0805AB20
	adds r5, #1
	cmp r5, #1
	blo _08039700
	ldr r0, _08039734
	movs r1, #4
	bl sub_08068070
	ldr r0, _08039738
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08039740
	movs r0, #0x33
	bl sub_08006D08
	b _08039740
_0803972C: .4byte gUnk_030034E0
_08039730: .4byte 0x00002710
_08039734: .4byte sub_0805990C
_08039738: .4byte gUnk_030027D0
_0803973C:
	bl sub_080003F0
_08039740:
	bl sub_0805F184
	cmp r0, #0
	bne _0803973C
	b _0803974E
_0803974A:
	bl sub_080003F0
_0803974E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803974A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039770
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039778
_08039770: .4byte 0x0014026B
_08039774:
	bl sub_080003F0
_08039778:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039784
	b _080399BA
_08039784:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039774
	bl sub_0805EFBC
	b _080399BA
_08039792:
	bl sub_080003F0
_08039796:
	bl sub_0805F184
	cmp r0, #0
	bne _08039792
	b _080397A4
_080397A0:
	bl sub_080003F0
_080397A4:
	bl sub_0805EF90
	cmp r0, #0
	bne _080397A0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080397C8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080397D0
	.2byte 0x0000
_080397C8: .4byte 0x00140266
_080397CC:
	bl sub_080003F0
_080397D0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080397DC
	b _080399BA
_080397DC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080397CC
	bl sub_0805EFBC
	b _080399BA
_080397EA:
	bl sub_0800CE30
	cmp r0, #0
	beq _08039804
	ldr r0, _08039800
	ldr r0, [r0, #0]
	adds r0, #0x80
	movs r1, #0x80
	ldr r4, [r0, #0]
	b _0803980C
	.2byte 0x0000
_08039800: .4byte gUnk_03005CF4
_08039804:
	ldr r0, _08039820
	ldr r0, [r0, #0]
	movs r1, #0x80
	ldr r4, [r0, #0x78]
_0803980C:
	ands r4, r1
	bl sub_0800CE30
	cmp r0, #0
	beq _08039828
	ldr r0, _08039820
	ldr r0, [r0, #0]
	ldr r1, _08039824
	adds r0, r0, r1
	b _08039830
_08039820: .4byte gUnk_03005CF4
_08039824: .4byte 0x000001C3
_08039828:
	ldr r0, _08039840
	ldr r0, [r0, #0]
	ldr r3, _08039844
	adds r0, r0, r3
_08039830:
	ldrb r0, [r0, #0]
	asrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803989E
	b _0803984C
	.2byte 0x0000
_08039840: .4byte gUnk_03005CF4
_08039844: .4byte 0x000001B7
_08039848:
	bl sub_080003F0
_0803984C:
	bl sub_0805F184
	cmp r0, #0
	bne _08039848
	b _0803985A
_08039856:
	bl sub_080003F0
_0803985A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039856
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803987C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039884
_0803987C: .4byte 0x0014027C
_08039880:
	bl sub_080003F0
_08039884:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039890
	b _080399BA
_08039890:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039880
	bl sub_0805EFBC
	b _080399BA
_0803989E:
	cmp r4, #0
	beq _0803996C
	b _080398A8
_080398A4:
	bl sub_080003F0
_080398A8:
	bl sub_0805F184
	cmp r0, #0
	bne _080398A4
	b _080398B6
_080398B2:
	bl sub_080003F0
_080398B6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080398B2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080398D8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080398E0
_080398D8: .4byte 0x0014027B
_080398DC:
	bl sub_080003F0
_080398E0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080398F6
	bl sub_0800CDF8
	cmp r0, #0
	beq _080398DC
	bl sub_0805EFBC
_080398F6:
	bl sub_0800CE30
	cmp r0, #0
	beq _08039910
	ldr r0, _0803990C
	ldr r0, [r0, #0]
	adds r0, #0x80
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r0, [r0, #0]
	b _0803991A
_0803990C: .4byte gUnk_03005CF4
_08039910:
	ldr r0, _0803994C
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r0, [r0, #0x78]
_0803991A:
	ands r0, r1
	cmp r0, #0
	bne _080399BA
	ldr r0, _08039950
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08039932
	movs r0, #0x32
	bl sub_08006D08
_08039932:
	bl sub_0800CE30
	cmp r0, #0
	beq _08039954
	ldr r0, _0803994C
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #0xb
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _080399BA
_0803994C: .4byte gUnk_03005CF4
_08039950: .4byte gUnk_030027D0
_08039954:
	ldr r0, _08039964
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
	b _080399BA
_08039964: .4byte gUnk_03005CF4
_08039968:
	bl sub_080003F0
_0803996C:
	bl sub_0805F184
	cmp r0, #0
	bne _08039968
	b _0803997A
_08039976:
	bl sub_080003F0
_0803997A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039976
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803999C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080399A4
_0803999C: .4byte 0x00140263
_080399A0:
	bl sub_080003F0
_080399A4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080399BA
	bl sub_0800CDF8
	cmp r0, #0
	beq _080399A0
	bl sub_0805EFBC
_080399BA:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080399E0
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
_080399E0: .4byte gUnk_03003CE0
	thumb_func_end sub_080392B4
