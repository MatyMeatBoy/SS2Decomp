	thumb_func_start sub_080384D4
sub_080384D4: @ 0x080384D4
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08038510
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
	beq _08038518
	ldr r0, _08038514
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x7c]
	b _0803851E
	.2byte 0x0000
_08038510: .4byte gUnk_03003CE0
_08038514: .4byte gUnk_03005CF4
_08038518:
	ldr r0, _08038530
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x74]
_0803851E:
	bl sub_0800CE30
	cmp r0, #0
	beq _08038534
	ldr r0, _08038530
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _0803853C
_08038530: .4byte gUnk_03005CF4
_08038534:
	ldr r0, _0803854C
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_0803853C:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080385A6
	b _08038554
_0803854C: .4byte gUnk_03005CF4
_08038550:
	bl sub_080003F0
_08038554:
	bl sub_0805F184
	cmp r0, #0
	bne _08038550
	b _08038562
_0803855E:
	bl sub_080003F0
_08038562:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803855E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038584
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803858C
_08038584: .4byte 0x00140121
_08038588:
	bl sub_080003F0
_0803858C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08038598
	b _0803895A
_08038598:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08038588
	bl sub_0805EFBC
	b _0803895A
_080385A6:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0803860A
	b _080385B6
_080385B2:
	bl sub_080003F0
_080385B6:
	bl sub_0805F184
	cmp r0, #0
	bne _080385B2
	b _080385C4
_080385C0:
	bl sub_080003F0
_080385C4:
	bl sub_0805EF90
	cmp r0, #0
	bne _080385C0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080385E8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080385F0
	.2byte 0x0000
_080385E8: .4byte 0x00140120
_080385EC:
	bl sub_080003F0
_080385F0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080385FC
	b _0803895A
_080385FC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080385EC
	bl sub_0805EFBC
	b _0803895A
_0803860A:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _0803866A
	b _08038618
_08038614:
	bl sub_080003F0
_08038618:
	bl sub_0805F184
	cmp r0, #0
	bne _08038614
	b _08038626
_08038622:
	bl sub_080003F0
_08038626:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038622
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038648
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038650
_08038648: .4byte 0x0014011F
_0803864C:
	bl sub_080003F0
_08038650:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803865C
	b _0803895A
_0803865C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803864C
	bl sub_0805EFBC
	b _0803895A
_0803866A:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _080386CA
	b _08038678
_08038674:
	bl sub_080003F0
_08038678:
	bl sub_0805F184
	cmp r0, #0
	bne _08038674
	b _08038686
_08038682:
	bl sub_080003F0
_08038686:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038682
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080386A8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080386B0
_080386A8: .4byte 0x0014011E
_080386AC:
	bl sub_080003F0
_080386B0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080386BC
	b _0803895A
_080386BC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080386AC
	bl sub_0805EFBC
	b _0803895A
_080386CA:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _0803872A
	b _080386D8
_080386D4:
	bl sub_080003F0
_080386D8:
	bl sub_0805F184
	cmp r0, #0
	bne _080386D4
	b _080386E6
_080386E2:
	bl sub_080003F0
_080386E6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080386E2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038708
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038710
_08038708: .4byte 0x0014011D
_0803870C:
	bl sub_080003F0
_08038710:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803871C
	b _0803895A
_0803871C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803870C
	bl sub_0805EFBC
	b _0803895A
_0803872A:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _0803878A
	b _08038738
_08038734:
	bl sub_080003F0
_08038738:
	bl sub_0805F184
	cmp r0, #0
	bne _08038734
	b _08038746
_08038742:
	bl sub_080003F0
_08038746:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038742
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038768
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038770
_08038768: .4byte 0x0014011C
_0803876C:
	bl sub_080003F0
_08038770:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803877C
	b _0803895A
_0803877C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803876C
	bl sub_0805EFBC
	b _0803895A
_0803878A:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080387EA
	b _08038798
_08038794:
	bl sub_080003F0
_08038798:
	bl sub_0805F184
	cmp r0, #0
	bne _08038794
	b _080387A6
_080387A2:
	bl sub_080003F0
_080387A6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080387A2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080387C8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080387D0
_080387C8: .4byte 0x0014011B
_080387CC:
	bl sub_080003F0
_080387D0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080387DC
	b _0803895A
_080387DC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080387CC
	bl sub_0805EFBC
	b _0803895A
_080387EA:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0803884A
	b _080387F8
_080387F4:
	bl sub_080003F0
_080387F8:
	bl sub_0805F184
	cmp r0, #0
	bne _080387F4
	b _08038806
_08038802:
	bl sub_080003F0
_08038806:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038802
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038828
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038830
_08038828: .4byte 0x0014011A
_0803882C:
	bl sub_080003F0
_08038830:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803883C
	b _0803895A
_0803883C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803882C
	bl sub_0805EFBC
	b _0803895A
_0803884A:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080388A8
	b _08038858
_08038854:
	bl sub_080003F0
_08038858:
	bl sub_0805F184
	cmp r0, #0
	bne _08038854
	b _08038866
_08038862:
	bl sub_080003F0
_08038866:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038862
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038888
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038890
_08038888: .4byte 0x00140119
_0803888C:
	bl sub_080003F0
_08038890:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803895A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803888C
	bl sub_0805EFBC
	b _0803895A
_080388A8:
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _0803890C
	b _080388B6
_080388B2:
	bl sub_080003F0
_080388B6:
	bl sub_0805F184
	cmp r0, #0
	bne _080388B2
	b _080388C4
_080388C0:
	bl sub_080003F0
_080388C4:
	bl sub_0805EF90
	cmp r0, #0
	bne _080388C0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080388E8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080388F0
	.2byte 0x0000
_080388E8: .4byte 0x00140118
_080388EC:
	bl sub_080003F0
_080388F0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803895A
	bl sub_0800CDF8
	cmp r0, #0
	beq _080388EC
	bl sub_0805EFBC
	b _0803895A
_08038908:
	bl sub_080003F0
_0803890C:
	bl sub_0805F184
	cmp r0, #0
	bne _08038908
	b _0803891A
_08038916:
	bl sub_080003F0
_0803891A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038916
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803893C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038944
_0803893C: .4byte 0x00140117
_08038940:
	bl sub_080003F0
_08038944:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803895A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08038940
	bl sub_0805EFBC
_0803895A:
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08038988
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
	.2byte 0x0000
_08038988: .4byte gUnk_03003CE0
	thumb_func_end sub_080384D4
