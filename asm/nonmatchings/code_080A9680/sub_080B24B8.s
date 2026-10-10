	thumb_func_start sub_080B24B8
sub_080B24B8: @ 0x080B24B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	bl sub_0806849C
	bl sub_080684F4
	ldr r0, _080B2588
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, _080B258C
	strb r1, [r0, #0]
	ldr r4, _080B2590
	movs r0, #0x28
	bl sub_08001494
	str r0, [r4, #0]
	movs r1, #0x40
	str r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	mov r8, r0
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	ldr r6, _080B2594
	adds r0, r0, r6
	str r0, [r1, #0x10]
	ldr r0, _080B2598
	str r0, [r1, #0xc]
	movs r5, #0
	str r5, [r1, #0x24]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000274
	ldr r4, _080B259C
	movs r0, #0x28
	bl sub_08001494
	str r0, [r4, #0]
	movs r1, #0x41
	str r1, [r0, #8]
	mov r0, r8
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	adds r0, r0, r6
	str r0, [r1, #0x10]
	ldr r0, _080B25A0
	str r0, [r1, #0xc]
	str r5, [r1, #0x24]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000274
	ldr r1, _080B25A4
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [r1, #0]
	movs r0, #0x88
	lsls r0, r0, #8
	str r0, [r1, #4]
	ldr r4, _080B25A8
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0, #0]
	ldr r2, _080B25AC
	adds r1, r7, r2
	ldrh r1, [r1, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080B25B0
	cmp r1, r0
	bne _080B25C4
	ldr r4, _080B25B4
	adds r5, r1, #0
_080B2564:
	movs r0, #0xb
	strh r0, [r7, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _080B2578
	bl sub_08056E90
	cmp r0, #0
	beq _080B25B8
_080B2578:
	movs r1, #1
	ldrh r7, [r7, #0]
	lsls r1, r7
	ldr r0, [r4, #0]
	bics r0, r1
	str r0, [r4, #0]
	b _080B2774
	.2byte 0x0000
_080B2588: .4byte gUnk_030007CC
_080B258C: .4byte gUnk_030007CB
_080B2590: .4byte gUnk_030007B0
_080B2594: .4byte 0x000007FC
_080B2598: .4byte sub_080B280C
_080B259C: .4byte gUnk_030007B4
_080B25A0: .4byte sub_080B3648
_080B25A4: .4byte gUnk_030007C0
_080B25A8: .4byte gUnk_030007C8
_080B25AC: .4byte 0x000002DA
_080B25B0: .4byte 0x0000FFFF
_080B25B4: .4byte gUnk_030056FC
_080B25B8:
	bl sub_080003F0
	ldr r0, _080B2608
	ldrh r0, [r0, #0]
	cmp r0, r5
	beq _080B2564
_080B25C4:
	movs r0, #0
	movs r6, #0xa6
	lsls r6, r6, #1
	ldr r5, _080B260C
	movs r4, #0
_080B25CE:
	movs r1, #0
	adds r3, r0, #1
	adds r2, r0, #0
	muls r2, r6, r2
_080B25D6:
	lsls r0, r1, #2
	adds r0, r0, r2
	adds r0, r0, r5
	str r4, [r0, #0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _080B25D6
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080B25CE
	bl sub_08097FE4
	bl sub_08097A4C
	bl sub_08097C4C
	bl sub_080B4B48
	bl sub_08067C18
	b _080B2614
	.2byte 0x0000
_080B2608: .4byte gUnk_030007C8
_080B260C: .4byte gUnk_03003DC4
_080B2610:
	bl sub_080003F0
_080B2614:
	bl sub_08067C08
	cmp r0, #0
	beq _080B2610
	bl sub_08067BF8
	ldr r0, _080B262C
	bl sub_0805865C
	ldr r4, _080B2630
	b _080B26D8
	.2byte 0x0000
_080B262C: .4byte 0x00000197
_080B2630: .4byte gUnk_030007C0
_080B2634:
	bl sub_08058DB0
	cmp r0, #0
	bne _080B26B8
	movs r0, #0
	bl sub_08096594
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080B2678
	adds r2, r1, r0
	ldr r0, _080B267C
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080B2684
	ldr r0, [r4, #0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r2, r2, r3
	ldr r3, [r2, #0]
	ldrh r2, [r3, #0]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	bl sub_08095FC8
	ldr r1, _080B2680
	strb r0, [r1, #0]
	b _080B26B8
_080B2678: .4byte gUnk_03003CE0
_080B267C: .4byte gUnk_030007CB
_080B2680: .4byte gUnk_030007CA
_080B2684:
	ldr r0, _080B26FC
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080B26B8
	ldr r0, [r4, #0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r2, r2, r3
	ldr r3, [r2, #0]
	ldrh r2, [r3, #0]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	bl sub_08095FC8
	ldr r1, _080B2700
	strb r0, [r1, #0]
	ldrb r2, [r1, #0]
	movs r0, #0x60
	adds r1, r4, #0
	bl sub_08097BA4
_080B26B8:
	bl sub_080003F0
	ldr r0, _080B2704
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080B26D8
	ldr r0, _080B2708
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080B26E8
_080B26D8:
	bl sub_0800CB78
	cmp r0, #0
	bne _080B26E8
	bl sub_08056E90
	cmp r0, #0
	beq _080B2634
_080B26E8:
	bl sub_080B4B7C
	bl sub_08097C6C
	bl sub_080683CC
	ldr r0, _080B270C
	bl sub_08068330
	b _080B2714
_080B26FC: .4byte gUnk_030007CC
_080B2700: .4byte gUnk_030007CA
_080B2704: .4byte gUnk_030007B8
_080B2708: .4byte gUnk_030007BC
_080B270C: .4byte 0xDEADFACE
_080B2710:
	bl sub_080003F0
_080B2714:
	ldr r0, _080B2728
	bl sub_080682B8
	cmp r0, #0
	beq _080B2710
	ldr r0, _080B2728
	bl sub_08065E38
	b _080B2730
	.2byte 0x0000
_080B2728: .4byte 0xDEADFACE
_080B272C:
	bl sub_080003F0
_080B2730:
	bl sub_08058DB0
	cmp r0, #0
	bne _080B272C
	movs r0, #0
	bl sub_080586B4
	movs r4, #0x6f
	movs r5, #1
	negs r5, r5
_080B2744:
	bl sub_080003F0
	lsls r0, r4, #0x10
	ldr r3, _080B275C
	adds r0, r0, r3
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080B2744
	bl sub_08067C18
	b _080B2764
_080B275C: .4byte 0xFFFF0000
_080B2760:
	bl sub_080003F0
_080B2764:
	bl sub_08067C08
	cmp r0, #0
	beq _080B2760
	bl sub_08067BF8
	bl sub_08056E24
_080B2774:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080B24B8
