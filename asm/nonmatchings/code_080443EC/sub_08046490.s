	thumb_func_start sub_08046490
sub_08046490: @ 0x08046490
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _080464D4
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	muls r0, r5, r0
	adds r4, #0x8c
	adds r0, r0, r4
	ldr r0, [r0, #0]
	asrs r6, r0, #8
	ldr r0, _080464D8
	cmp r6, r0
	ble _080464DC
	adds r0, r7, #0
	movs r1, #6
	bl sub_08029174
	b _080464E4
_080464D4: .4byte gUnk_03003CE0
_080464D8: .4byte 0x000001CD
_080464DC:
	adds r0, r7, #0
	movs r1, #2
	bl sub_08029174
_080464E4:
	bl sub_0800CE30
	cmp r0, #0
	beq _08046500
	ldr r0, _080464F8
	ldr r0, [r0, #0]
	ldr r1, _080464FC
	adds r0, r0, r1
	b _08046508
	.2byte 0x0000
_080464F8: .4byte gUnk_03005CF4
_080464FC: .4byte 0x000001C7
_08046500:
	ldr r0, _08046524
	ldr r0, [r0, #0]
	ldr r3, _08046528
	adds r0, r0, r3
_08046508:
	ldrb r0, [r0, #0]
	asrs r6, r0, #2
	movs r0, #1
	ands r6, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08046530
	ldr r0, _08046524
	ldr r0, [r0, #0]
	ldr r4, _0804652C
	adds r0, r0, r4
	b _08046538
	.2byte 0x0000
_08046524: .4byte gUnk_03005CF4
_08046528: .4byte 0x000001BB
_0804652C: .4byte 0x000001C7
_08046530:
	ldr r0, _08046554
	ldr r0, [r0, #0]
	ldr r1, _08046558
	adds r0, r0, r1
_08046538:
	ldrb r0, [r0, #0]
	asrs r5, r0, #3
	movs r0, #1
	ands r5, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08046560
	ldr r0, _08046554
	ldr r0, [r0, #0]
	ldr r3, _0804655C
	adds r0, r0, r3
	b _08046568
	.2byte 0x0000
_08046554: .4byte gUnk_03005CF4
_08046558: .4byte 0x000001BB
_0804655C: .4byte 0x000001C7
_08046560:
	ldr r0, _08046584
	ldr r0, [r0, #0]
	ldr r4, _08046588
	adds r0, r0, r4
_08046568:
	ldrb r0, [r0, #0]
	asrs r4, r0, #4
	movs r0, #1
	ands r4, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08046590
	ldr r0, _08046584
	ldr r0, [r0, #0]
	ldr r1, _0804658C
	adds r0, r0, r1
	b _08046598
	.2byte 0x0000
_08046584: .4byte gUnk_03005CF4
_08046588: .4byte 0x000001BB
_0804658C: .4byte 0x000001C7
_08046590:
	ldr r0, _080465B4
	ldr r0, [r0, #0]
	ldr r3, _080465B8
	adds r0, r0, r3
_08046598:
	ldrb r0, [r0, #0]
	asrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	cmp r6, #0
	beq _08046612
	cmp r5, #0
	beq _08046676
	cmp r4, #0
	beq _08046612
	cmp r1, #0
	beq _08046612
	b _080465C0
	.2byte 0x0000
_080465B4: .4byte gUnk_03005CF4
_080465B8: .4byte 0x000001BB
_080465BC:
	bl sub_080003F0
_080465C0:
	bl sub_0805F184
	cmp r0, #0
	bne _080465BC
	b _080465CE
_080465CA:
	bl sub_080003F0
_080465CE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080465CA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080465F0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080465F8
_080465F0: .4byte 0x001402B2
_080465F4:
	bl sub_080003F0
_080465F8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08046604
	b _080469A6
_08046604:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080465F4
	bl sub_0805EFBC
	b _080469A6
_08046612:
	cmp r5, #0
	beq _08046676
	b _0804661C
_08046618:
	bl sub_080003F0
_0804661C:
	bl sub_0805F184
	cmp r0, #0
	bne _08046618
	b _0804662A
_08046626:
	bl sub_080003F0
_0804662A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08046626
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0804664C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046654
_0804664C: .4byte 0x001402B1
_08046650:
	bl sub_080003F0
_08046654:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08046660
	b _080469A6
_08046660:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08046650
	bl sub_0805EFBC
	b _080469A6
_0804666E:
	adds r0, r1, #0
	b _08046728
_08046672:
	bl sub_080003F0
_08046676:
	bl sub_0805F184
	cmp r0, #0
	bne _08046672
	b _08046684
_08046680:
	bl sub_080003F0
_08046684:
	bl sub_0805EF90
	cmp r0, #0
	bne _08046680
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080466A8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080466B0
	.2byte 0x0000
_080466A8: .4byte 0x001402AA
_080466AC:
	bl sub_080003F0
_080466B0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080466C6
	bl sub_0800CDF8
	cmp r0, #0
	beq _080466AC
	bl sub_0805EFBC
_080466C6:
	movs r3, #0
	movs r2, #0
	ldr r0, _08046734
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_080466D4:
	ldrh r0, [r1, #0]
	cmp r0, #3
	bne _080466E2
	ldrh r0, [r1, #2]
	cmp r0, #0x15
	bne _080466E2
	adds r3, #1
_080466E2:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _080466D4
	adds r6, r3, #0
	bl sub_080020F4
	adds r5, r0, #0
	cmp r6, #0
	bne _080466F8
	b _080469A6
_080466F8:
	cmp r5, #0
	beq _080466FE
	b _080469A6
_080466FE:
	adds r2, r7, #0
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r7, r0
	bls _08046740
	ldr r0, _08046738
	ldr r0, [r0, #0]
	ldr r3, _0804673C
	adds r1, r0, r3
	movs r3, #0
_08046714:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _0804666E
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _08046714
	bl sub_080003F0
	movs r0, #0
_08046728:
	cmp r0, #0
	beq _08046788
	adds r0, #0x42
	strh r4, [r0, #0]
	b _08046788
	.2byte 0x0000
_08046734: .4byte gUnk_030034E0
_08046738: .4byte gUnk_03005CF4
_0804673C: .4byte 0x000007A4
_08046740:
	cmp r7, #0
	beq _08046768
	subs r2, r7, #1
	cmp r2, #4
	bhi _08046788
	ldr r1, _08046764
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
	b _08046788
_08046764: .4byte gUnk_030056F4
_08046768:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08046780
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r4, [r0, #0]
	b _08046788
_08046780: .4byte gUnk_03003CE0
_08046784:
	bl sub_080003F0
_08046788:
	bl sub_0805F184
	cmp r0, #0
	bne _08046784
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080467AC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080467B4
	.2byte 0x0000
_080467AC: .4byte 0x001402AB
_080467B0:
	bl sub_080003F0
_080467B4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080467B0
	adds r0, r4, #0
	bl sub_0805EF14
	adds r4, r0, #0
	cmp r4, #0
	bne _080467CC
	b _08046958
_080467CC:
	add r3, sp, #0xc
	mov r8, r3
	b _080467D6
_080467D2:
	bl sub_080003F0
_080467D6:
	bl sub_0805F184
	cmp r0, #0
	bne _080467D2
	b _080467E4
_080467E0:
	bl sub_080003F0
_080467E4:
	bl sub_0805EF90
	cmp r0, #0
	bne _080467E0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046808
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046810
	.2byte 0x0000
_08046808: .4byte 0x001402AD
_0804680C:
	bl sub_080003F0
_08046810:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08046826
	bl sub_0800CDF8
	cmp r0, #0
	beq _0804680C
	bl sub_0805EFBC
_08046826:
	movs r4, #1
	movs r3, #0
	ldr r6, _080468A0
	movs r5, #0
_0804682E:
	ldr r0, [r6, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #3
	bne _08046856
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x15
	bne _08046856
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _0804685C
_08046856:
	adds r3, #1
	cmp r3, #0x18
	bls _0804682E
_0804685C:
	movs r1, #1
	movs r2, #0x1e
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	mov r1, r8
	movs r2, #0
_0804686C:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _0804686C
	movs r4, #0
_08046878:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08046878
	ldr r0, _080468A4
	movs r1, #0x23
	bl sub_08068070
	ldr r0, _080468A8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080468B0
	movs r0, #0x33
	bl sub_08006D08
	b _080468B0
_080468A0: .4byte gUnk_030034E0
_080468A4: .4byte sub_0805990C
_080468A8: .4byte gUnk_030027D0
_080468AC:
	bl sub_080003F0
_080468B0:
	bl sub_0805F184
	cmp r0, #0
	bne _080468AC
	b _080468BE
_080468BA:
	bl sub_080003F0
_080468BE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080468BA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080468E0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080468E8
_080468E0: .4byte 0x001402AE
_080468E4:
	bl sub_080003F0
_080468E8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08046904
	bl sub_0800CDF8
	cmp r0, #0
	beq _080468E4
	bl sub_0805EFBC
	b _08046904
_08046900:
	bl sub_080003F0
_08046904:
	bl sub_0805F184
	cmp r0, #0
	bne _08046900
	b _08046912
_0804690E:
	bl sub_080003F0
_08046912:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804690E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046934
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804693C
_08046934: .4byte 0x001402AF
_08046938:
	bl sub_080003F0
_0804693C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080469A6
	bl sub_0800CDF8
	cmp r0, #0
	beq _08046938
	bl sub_0805EFBC
	b _080469A6
_08046954:
	bl sub_080003F0
_08046958:
	bl sub_0805F184
	cmp r0, #0
	bne _08046954
	b _08046966
_08046962:
	bl sub_080003F0
_08046966:
	bl sub_0805EF90
	cmp r0, #0
	bne _08046962
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046988
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046990
_08046988: .4byte 0x001402AC
_0804698C:
	bl sub_080003F0
_08046990:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080469A6
	bl sub_0800CDF8
	cmp r0, #0
	beq _0804698C
	bl sub_0805EFBC
_080469A6:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0802939C
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080469D8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080469D8: .4byte gUnk_03003CE0
	thumb_func_end sub_08046490
