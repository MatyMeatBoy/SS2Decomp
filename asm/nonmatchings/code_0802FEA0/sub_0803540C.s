	thumb_func_start sub_0803540C
sub_0803540C: @ 0x0803540C
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803543C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _08035444
	ldr r0, _08035440
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x7c]
	b _0803544A
_0803543C: .4byte gUnk_03003CE0
_08035440: .4byte gUnk_03005CF4
_08035444:
	ldr r0, _0803545C
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x74]
_0803544A:
	bl sub_0800CE30
	cmp r0, #0
	beq _08035460
	ldr r0, _0803545C
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _08035468
_0803545C: .4byte gUnk_03005CF4
_08035460:
	ldr r0, _08035478
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_08035468:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080354D2
	b _08035480
_08035478: .4byte gUnk_03005CF4
_0803547C:
	bl sub_080003F0
_08035480:
	bl sub_0805F184
	cmp r0, #0
	bne _0803547C
	b _0803548E
_0803548A:
	bl sub_080003F0
_0803548E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803548A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080354B0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080354B8
_080354B0: .4byte 0x001401B5
_080354B4:
	bl sub_080003F0
_080354B8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080354C4
	b _080358EA
_080354C4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080354B4
	bl sub_0805EFBC
	b _080358EA
_080354D2:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08035536
	b _080354E2
_080354DE:
	bl sub_080003F0
_080354E2:
	bl sub_0805F184
	cmp r0, #0
	bne _080354DE
	b _080354F0
_080354EC:
	bl sub_080003F0
_080354F0:
	bl sub_0805EF90
	cmp r0, #0
	bne _080354EC
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035514
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803551C
	.2byte 0x0000
_08035514: .4byte 0x001401B4
_08035518:
	bl sub_080003F0
_0803551C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08035528
	b _080358EA
_08035528:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08035518
	bl sub_0805EFBC
	b _080358EA
_08035536:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0803559A
	b _08035546
_08035542:
	bl sub_080003F0
_08035546:
	bl sub_0805F184
	cmp r0, #0
	bne _08035542
	b _08035554
_08035550:
	bl sub_080003F0
_08035554:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035550
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035578
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035580
	.2byte 0x0000
_08035578: .4byte 0x001401B3
_0803557C:
	bl sub_080003F0
_08035580:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803558C
	b _080358EA
_0803558C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803557C
	bl sub_0805EFBC
	b _080358EA
_0803559A:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _080355FA
	b _080355A8
_080355A4:
	bl sub_080003F0
_080355A8:
	bl sub_0805F184
	cmp r0, #0
	bne _080355A4
	b _080355B6
_080355B2:
	bl sub_080003F0
_080355B6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080355B2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080355D8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080355E0
_080355D8: .4byte 0x001401B2
_080355DC:
	bl sub_080003F0
_080355E0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080355EC
	b _080358EA
_080355EC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080355DC
	bl sub_0805EFBC
	b _080358EA
_080355FA:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0803565A
	b _08035608
_08035604:
	bl sub_080003F0
_08035608:
	bl sub_0805F184
	cmp r0, #0
	bne _08035604
	b _08035616
_08035612:
	bl sub_080003F0
_08035616:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035612
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035638
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035640
_08035638: .4byte 0x001401B1
_0803563C:
	bl sub_080003F0
_08035640:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803564C
	b _080358EA
_0803564C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803563C
	bl sub_0805EFBC
	b _080358EA
_0803565A:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _080356BA
	b _08035668
_08035664:
	bl sub_080003F0
_08035668:
	bl sub_0805F184
	cmp r0, #0
	bne _08035664
	b _08035676
_08035672:
	bl sub_080003F0
_08035676:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035672
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035698
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080356A0
_08035698: .4byte 0x001401B0
_0803569C:
	bl sub_080003F0
_080356A0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080356AC
	b _080358EA
_080356AC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803569C
	bl sub_0805EFBC
	b _080358EA
_080356BA:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _0803571A
	b _080356C8
_080356C4:
	bl sub_080003F0
_080356C8:
	bl sub_0805F184
	cmp r0, #0
	bne _080356C4
	b _080356D6
_080356D2:
	bl sub_080003F0
_080356D6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080356D2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080356F8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035700
_080356F8: .4byte 0x001401AF
_080356FC:
	bl sub_080003F0
_08035700:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803570C
	b _080358EA
_0803570C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080356FC
	bl sub_0805EFBC
	b _080358EA
_0803571A:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _0803577A
	b _08035728
_08035724:
	bl sub_080003F0
_08035728:
	bl sub_0805F184
	cmp r0, #0
	bne _08035724
	b _08035736
_08035732:
	bl sub_080003F0
_08035736:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035732
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035758
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035760
_08035758: .4byte 0x001401AE
_0803575C:
	bl sub_080003F0
_08035760:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803576C
	b _080358EA
_0803576C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803575C
	bl sub_0805EFBC
	b _080358EA
_0803577A:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _080357DA
	b _08035788
_08035784:
	bl sub_080003F0
_08035788:
	bl sub_0805F184
	cmp r0, #0
	bne _08035784
	b _08035796
_08035792:
	bl sub_080003F0
_08035796:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035792
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080357B8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080357C0
_080357B8: .4byte 0x001401AD
_080357BC:
	bl sub_080003F0
_080357C0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080357CC
	b _080358EA
_080357CC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080357BC
	bl sub_0805EFBC
	b _080358EA
_080357DA:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08035838
	b _080357E8
_080357E4:
	bl sub_080003F0
_080357E8:
	bl sub_0805F184
	cmp r0, #0
	bne _080357E4
	b _080357F6
_080357F2:
	bl sub_080003F0
_080357F6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080357F2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035818
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035820
_08035818: .4byte 0x001401AC
_0803581C:
	bl sub_080003F0
_08035820:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080358EA
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803581C
	bl sub_0805EFBC
	b _080358EA
_08035838:
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _0803589C
	b _08035846
_08035842:
	bl sub_080003F0
_08035846:
	bl sub_0805F184
	cmp r0, #0
	bne _08035842
	b _08035854
_08035850:
	bl sub_080003F0
_08035854:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035850
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035878
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035880
	.2byte 0x0000
_08035878: .4byte 0x001401AB
_0803587C:
	bl sub_080003F0
_08035880:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080358EA
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803587C
	bl sub_0805EFBC
	b _080358EA
_08035898:
	bl sub_080003F0
_0803589C:
	bl sub_0805F184
	cmp r0, #0
	bne _08035898
	b _080358AA
_080358A6:
	bl sub_080003F0
_080358AA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080358A6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080358CC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080358D4
_080358CC: .4byte 0x001401AA
_080358D0:
	bl sub_080003F0
_080358D4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080358EA
	bl sub_0800CDF8
	cmp r0, #0
	beq _080358D0
	bl sub_0805EFBC
_080358EA:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08035910
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08035910: .4byte gUnk_03003CE0
	thumb_func_end sub_0803540C
