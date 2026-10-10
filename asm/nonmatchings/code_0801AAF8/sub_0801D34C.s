	thumb_func_start sub_0801D34C
sub_0801D34C: @ 0x0801D34C
	push {r4, r5, lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0801D384
	adds r4, r1, r0
	bl sub_0805AD18
	adds r5, r0, #0
	ldr r0, _0801D388
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xa]
	cmp r0, #8
	bne _0801D36E
	movs r0, #6
_0801D36E:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0801D378
	b _0801D7A4
_0801D378:
	lsls r0, r0, #2
	ldr r1, _0801D38C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0801D384: .4byte gUnk_03003CE0
_0801D388: .4byte gUnk_030034E0
_0801D38C: .4byte _0801D390
_0801D390:
	.4byte _0801D3B0
_0801D394: .4byte _0801D468
_0801D398: .4byte _0801D3D0
_0801D39C: .4byte _0801D458
_0801D3A0: .4byte _0801D620
_0801D3A4: .4byte _0801D6E4
_0801D3A8: .4byte _0801D560
_0801D3AC: .4byte _0801D6F0
_0801D3B0:
	ldrh r1, [r4, #0x10]
	cmp r1, #2
	bne _0801D3B8
	b _0801D714
_0801D3B8:
	cmp r1, #2
	bgt _0801D3BE
	b _0801D6FA
_0801D3BE:
	cmp r1, #3
	beq _0801D3C4
	b _0801D7A4
_0801D3C4:
	ldr r0, _0801D3CC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x3c]
	b _0801D7A6
_0801D3CC: .4byte gUnk_030034E0
_0801D3D0:
	ldrh r1, [r4, #0x10]
	cmp r1, #7
	bne _0801D3D8
	b _0801D706
_0801D3D8:
	cmp r1, #7
	bgt _0801D3E4
	cmp r1, #3
	bne _0801D3E2
	b _0801D714
_0801D3E2:
	b _0801D7A4
_0801D3E4:
	cmp r1, #9
	beq _0801D3EA
	b _0801D7A4
_0801D3EA:
	ldr r0, _0801D408
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801D40C
	movs r1, #0
	b _0801D41E
	.2byte 0x0000
_0801D408: .4byte gUnk_030034E0
_0801D40C:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801D41E:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801D430
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801D432
_0801D430:
	movs r0, #0
_0801D432:
	cmp r0, #7
	beq _0801D438
	b _0801D7A4
_0801D438:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D454
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #0x48
_0801D444:
	ldrh r0, [r2, #0]
	ldrh r3, [r1, #0]
	cmp r0, r3
	bhs _0801D44E
	b _0801D7A6
_0801D44E:
	ldrh r0, [r1, #0]
	b _0801D7A6
	.2byte 0x0000
_0801D454: .4byte gUnk_030034E0
_0801D458:
	ldrh r1, [r4, #0x10]
	cmp r1, #2
	bne _0801D460
	b _0801D706
_0801D460:
	cmp r1, #4
	beq _0801D466
	b _0801D7A4
_0801D466:
	b _0801D714
_0801D468:
	ldrh r1, [r4, #0x10]
	cmp r1, #5
	bne _0801D470
	b _0801D706
_0801D470:
	cmp r1, #9
	beq _0801D476
	b _0801D7A4
_0801D476:
	ldr r0, _0801D494
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801D498
	movs r1, #0
	b _0801D4AA
	.2byte 0x0000
_0801D494: .4byte gUnk_030034E0
_0801D498:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801D4AA:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801D4BC
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801D4BE
_0801D4BC:
	movs r0, #0
_0801D4BE:
	subs r0, #1
	cmp r0, #5
	bls _0801D4C6
	b _0801D7A4
_0801D4C6:
	lsls r0, r0, #2
	ldr r1, _0801D4D0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801D4D0: .4byte _0801D4D4
_0801D4D4:
	.4byte _0801D4EC
_0801D4D8: .4byte _0801D508
_0801D4DC: .4byte _0801D524
_0801D4E0: .4byte _0801D538
_0801D4E4: .4byte _0801D438
_0801D4E8: .4byte _0801D54C
_0801D4EC:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D504
	ldr r1, [r0, #0]
	ldrh r0, [r2, #0]
	ldrh r3, [r1, #0x38]
	cmp r0, r3
	bhs _0801D4FE
	b _0801D7A6
_0801D4FE:
	ldrh r0, [r1, #0x38]
	b _0801D7A6
	.2byte 0x0000
_0801D504: .4byte gUnk_030034E0
_0801D508:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D520
	ldr r1, [r0, #0]
	ldrh r0, [r2, #0]
	ldrh r3, [r1, #0x3c]
	cmp r0, r3
	bhs _0801D51A
	b _0801D7A6
_0801D51A:
	ldrh r0, [r1, #0x3c]
	b _0801D7A6
	.2byte 0x0000
_0801D520: .4byte gUnk_030034E0
_0801D524:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D534
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #0x40
	b _0801D444
	.2byte 0x0000
_0801D534: .4byte gUnk_030034E0
_0801D538:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D548
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #0x44
	b _0801D444
	.2byte 0x0000
_0801D548: .4byte gUnk_030034E0
_0801D54C:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D55C
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #0x4c
	b _0801D444
	.2byte 0x0000
_0801D55C: .4byte gUnk_030034E0
_0801D560:
	ldrh r1, [r4, #0x10]
	cmp r1, #5
	bne _0801D568
	b _0801D706
_0801D568:
	cmp r1, #9
	beq _0801D56E
	b _0801D7A4
_0801D56E:
	ldr r0, _0801D58C
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801D590
	movs r1, #0
	b _0801D5A2
	.2byte 0x0000
_0801D58C: .4byte gUnk_030034E0
_0801D590:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801D5A2:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801D5B4
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801D5B6
_0801D5B4:
	movs r0, #0
_0801D5B6:
	subs r0, #0xd
	cmp r0, #5
	bls _0801D5BE
	b _0801D7A4
_0801D5BE:
	lsls r0, r0, #2
	ldr r1, _0801D5C8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801D5C8: .4byte _0801D5CC
_0801D5CC:
	.4byte _0801D4EC
_0801D5D0: .4byte _0801D508
_0801D5D4: .4byte _0801D5E4
_0801D5D8: .4byte _0801D5F8
_0801D5DC: .4byte _0801D438
_0801D5E0: .4byte _0801D60C
_0801D5E4:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D5F4
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #0x40
	b _0801D444
	.2byte 0x0000
_0801D5F4: .4byte gUnk_030034E0
_0801D5F8:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D608
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #0x44
	b _0801D444
	.2byte 0x0000
_0801D608: .4byte gUnk_030034E0
_0801D60C:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D61C
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #0x4c
	b _0801D444
	.2byte 0x0000
_0801D61C: .4byte gUnk_030034E0
_0801D620:
	ldrh r1, [r4, #0x10]
	cmp r1, #5
	beq _0801D706
	cmp r1, #5
	bgt _0801D630
	cmp r1, #4
	beq _0801D714
	b _0801D7A4
_0801D630:
	cmp r1, #9
	beq _0801D636
	b _0801D7A4
_0801D636:
	ldr r0, _0801D654
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801D658
	movs r1, #0
	b _0801D66A
	.2byte 0x0000
_0801D654: .4byte gUnk_030034E0
_0801D658:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801D66A:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801D67C
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801D67E
_0801D67C:
	movs r0, #0
_0801D67E:
	subs r0, #8
	cmp r0, #4
	bls _0801D686
	b _0801D7A4
_0801D686:
	lsls r0, r0, #2
	ldr r1, _0801D690
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801D690: .4byte _0801D694
_0801D694:
	.4byte _0801D508
_0801D698: .4byte _0801D6A8
_0801D69C: .4byte _0801D6BC
_0801D6A0: .4byte _0801D438
_0801D6A4: .4byte _0801D6D0
_0801D6A8:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D6B8
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #0x40
	b _0801D444
	.2byte 0x0000
_0801D6B8: .4byte gUnk_030034E0
_0801D6BC:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D6CC
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #0x44
	b _0801D444
	.2byte 0x0000
_0801D6CC: .4byte gUnk_030034E0
_0801D6D0:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D6E0
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #0x4c
	b _0801D444
	.2byte 0x0000
_0801D6E0: .4byte gUnk_030034E0
_0801D6E4:
	ldrh r1, [r4, #0x10]
	cmp r1, #6
	beq _0801D706
	cmp r1, #8
	bne _0801D7A4
	b _0801D714
_0801D6F0:
	ldrh r1, [r4, #0x10]
	cmp r1, #8
	beq _0801D714
	cmp r1, #8
	bgt _0801D700
_0801D6FA:
	cmp r1, #1
	beq _0801D706
	b _0801D7A4
_0801D700:
	cmp r1, #9
	beq _0801D720
	b _0801D7A4
_0801D706:
	ldr r0, _0801D710
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x34]
	b _0801D7A6
	.2byte 0x0000
_0801D710: .4byte gUnk_030034E0
_0801D714:
	ldr r0, _0801D71C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x38]
	b _0801D7A6
_0801D71C: .4byte gUnk_030034E0
_0801D720:
	ldr r0, _0801D73C
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801D740
	movs r1, #0
	b _0801D752
_0801D73C: .4byte gUnk_030034E0
_0801D740:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801D752:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801D764
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801D766
_0801D764:
	movs r0, #0
_0801D766:
	cmp r0, #0x14
	bne _0801D76C
	b _0801D438
_0801D76C:
	cmp r0, #0x14
	bgt _0801D776
	cmp r0, #0x13
	beq _0801D77C
	b _0801D7A4
_0801D776:
	cmp r0, #0x15
	beq _0801D790
	b _0801D7A4
_0801D77C:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D78C
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #0x40
	b _0801D444
	.2byte 0x0000
_0801D78C: .4byte gUnk_030034E0
_0801D790:
	adds r2, r5, #0
	adds r2, #0xac
	ldr r0, _0801D7A0
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #0x44
	b _0801D444
	.2byte 0x0000
_0801D7A0: .4byte gUnk_030034E0
_0801D7A4:
	movs r0, #0
_0801D7A6:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0801D34C
