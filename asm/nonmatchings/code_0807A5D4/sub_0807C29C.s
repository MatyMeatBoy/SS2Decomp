	thumb_func_start sub_0807C29C
sub_0807C29C: @ 0x0807C29C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	ldr r0, _0807C33C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807C2C6
	ldr r1, _0807C340
	movs r0, #0
	strh r0, [r1, #0]
	ldr r2, _0807C344
	ldrh r1, [r2, #0]
	ldr r0, _0807C348
	ands r0, r1
	strh r0, [r2, #0]
_0807C2C6:
	bl sub_0801AAE0
	adds r1, r0, #0
	cmp r1, #0
	bne _0807C2D4
	ldr r0, _0807C344
	strh r1, [r0, #0]
_0807C2D4:
	bl sub_0800CD8C
	cmp r0, #0
	beq _0807C2EA
	ldr r0, _0807C34C
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, _0807C344
	strh r1, [r0, #0]
	ldr r0, _0807C340
	strh r1, [r0, #0]
_0807C2EA:
	bl sub_0800CF10
	cmp r0, #0
	bne _0807C30A
	bl sub_0805F184
	cmp r0, #0
	bne _0807C30A
	bl sub_0800CDF8
	cmp r0, #0
	bne _0807C30A
	bl sub_0800D060
	cmp r0, #0
	beq _0807C322
_0807C30A:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0807C322
	bl sub_0801AC78
	cmp r0, #0
	beq _0807C322
	ldr r0, _0807C33C
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0x24]
_0807C322:
	ldr r1, _0807C33C
	ldr r0, [r1, #0]
	ldr r0, [r0, #0x18]
	cmp r0, #0x15
	bls _0807C330
	bl _0807FB38
_0807C330:
	lsls r0, r0, #2
	ldr r1, _0807C350
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0807C33C: .4byte gUnk_03006440
_0807C340: .4byte gUnk_03001308
_0807C344: .4byte gUnk_03001324
_0807C348: .4byte 0x0000FFFE
_0807C34C: .4byte gUnk_0300130C
_0807C350: .4byte _0807C354
_0807C354:
	.4byte _0807C3AC
_0807C358: .4byte _0807CFB4
_0807C35C: .4byte _0807D2EC
_0807C360: .4byte _0807D568
_0807C364: .4byte _0807D778
_0807C368: .4byte _0807DA24
_0807C36C: .4byte _0807DC7C
_0807C370: .4byte _0807E058
_0807C374: .4byte _0807E1C4
_0807C378: .4byte _0807E30C
_0807C37C: .4byte _0807E4B4
_0807C380: .4byte _0807E6AC
_0807C384: .4byte _0807E81C
_0807C388: .4byte _0807E88C
_0807C38C: .4byte _0807F0F0
_0807C390: .4byte _0807F208
_0807C394: .4byte _0807F304
_0807C398: .4byte _0807F784
_0807C39C: .4byte _0807F898
_0807C3A0: .4byte _0807F984
_0807C3A4: .4byte _0807F9D4
_0807C3A8: .4byte _0807E684
_0807C3AC:
	ldr r0, _0807C3E0
	ldrh r1, [r0, #0]
	movs r6, #0x10
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0807C3BC
	b _0807C520
_0807C3BC:
	movs r0, #0x62
	bl sub_0805865C
	ldr r7, _0807C3E4
	ldr r4, [r7, #0]
	ldr r5, [r4, #4]
	adds r0, r5, #0
	movs r1, #5
	bl __umodsi3
	cmp r0, #3
	bhi _0807C3E8
	str r5, [r4, #8]
	adds r0, r5, #1
	str r0, [r4, #4]
	bl _0807FB38
	.2byte 0x0000
_0807C3E0: .4byte gUnk_03001308
_0807C3E4: .4byte gUnk_03006440
_0807C3E8:
	ldr r1, [r4, #0x1c]
	cmp r1, #0x16
	beq _0807C4AA
	ldr r0, [r4, #0]
	cmp r0, #3
	beq _0807C458
	cmp r0, #3
	bhi _0807C400
	cmp r0, #2
	beq _0807C40C
	bl _0807FB38
_0807C400:
	cmp r0, #4
	beq _0807C466
	cmp r0, #6
	beq _0807C47A
	bl _0807FB38
_0807C40C:
	adds r0, r4, #0
	adds r0, #0xf4
	ldrh r6, [r0, #0]
	cmp r6, #1
	bne _0807C452
	cmp r5, #0xe
	bhi _0807C444
	adds r0, #2
	ldrh r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r0, #0xa4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0807C434
	bl _0807FB38
_0807C434:
	ldr r0, [r7, #0]
	movs r1, #8
	str r1, [r0, #0x18]
	movs r1, #0
	str r1, [r0, #4]
	str r6, [r0, #8]
	bl _0807FB38
_0807C444:
	movs r0, #0xa
	str r0, [r4, #0x18]
	movs r0, #0
	str r0, [r4, #4]
	str r6, [r4, #8]
	bl _0807FB38
_0807C452:
	movs r0, #0xa
	str r0, [r4, #0x18]
	b _0807C514
_0807C458:
	cmp r1, #0xb
	bne _0807C460
	bl _0807FB38
_0807C460:
	movs r0, #0xc
	str r0, [r4, #0x18]
	b _0807C514
_0807C466:
	movs r0, #0xd
	str r0, [r4, #0x18]
	adds r0, r5, #0
	movs r1, #5
	bl __udivsi3
	lsls r1, r0, #1
	adds r1, r1, r0
	str r1, [r4, #4]
	b _0807C518
_0807C47A:
	adds r1, r4, #0
	adds r1, #0xf4
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	bne _0807C49E
	ldr r0, [r4, #0x28]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0807C492
	bl _0807FB38
_0807C492:
	movs r0, #0x11
	str r0, [r4, #0x18]
	movs r0, #0x64
	str r0, [r4, #4]
	bl _0807FB38
_0807C49E:
	ldrh r0, [r1, #0]
	cmp r0, #9
	beq _0807C4A8
	bl _0807FB38
_0807C4A8:
	b _0807C512
_0807C4AA:
	ldr r0, [r4, #0]
	cmp r0, #3
	beq _0807C4D8
	cmp r0, #3
	bhi _0807C4BC
	cmp r0, #2
	beq _0807C4C8
	bl _0807FB38
_0807C4BC:
	cmp r0, #4
	beq _0807C4FE
	cmp r0, #6
	beq _0807C512
	bl _0807FB38
_0807C4C8:
	cmp r5, #0xe
	bls _0807C4D2
	movs r0, #0xa
	str r0, [r4, #0x18]
	b _0807C514
_0807C4D2:
	movs r0, #8
	str r0, [r4, #0x18]
	b _0807C514
_0807C4D8:
	movs r0, #0xb
	str r0, [r4, #0x18]
	adds r0, r5, #0
	movs r1, #5
	bl __udivsi3
	lsls r1, r0, #1
	adds r1, r1, r0
	str r1, [r4, #4]
	movs r0, #1
	str r0, [r4, #8]
	cmp r1, #0xc
	beq _0807C4F6
	bl _0807FB38
_0807C4F6:
	movs r0, #9
	str r0, [r4, #4]
	bl _0807FB38
_0807C4FE:
	movs r0, #0xd
	str r0, [r4, #0x18]
	adds r0, r5, #0
	movs r1, #5
	bl __udivsi3
	lsls r1, r0, #1
	adds r1, r1, r0
	str r1, [r4, #4]
	b _0807C518
_0807C512:
	str r6, [r4, #0x18]
_0807C514:
	movs r0, #0
	str r0, [r4, #4]
_0807C518:
	movs r0, #1
	str r0, [r4, #8]
	bl _0807FB38
_0807C520:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0807C52A
	b _0807C6A2
_0807C52A:
	movs r0, #0x62
	bl sub_0805865C
	ldr r4, _0807C54C
	ldr r6, [r4, #0]
	ldr r5, [r6, #4]
	adds r0, r5, #0
	movs r1, #5
	bl __umodsi3
	cmp r0, #0
	beq _0807C550
	str r5, [r6, #8]
	subs r0, r5, #1
	str r0, [r6, #4]
	bl _0807FB38
_0807C54C: .4byte gUnk_03006440
_0807C550:
	adds r3, r5, #0
	ldr r0, [r6, #0x1c]
	cmp r0, #0x16
	beq _0807C604
	adds r0, r6, #0
	adds r0, #0xf4
	ldrh r0, [r0, #0]
	subs r0, #1
	cmp r0, #6
	bhi _0807C600
	lsls r0, r0, #2
	ldr r1, _0807C570
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0807C570: .4byte _0807C574
_0807C574:
	.4byte _0807C590
_0807C578: .4byte _0807C5A0
_0807C57C: .4byte _0807C5D0
_0807C580: .4byte _0807C5B0
_0807C584: .4byte _0807C5C0
_0807C588: .4byte _0807C5F0
_0807C58C: .4byte _0807C5E0
_0807C590:
	ldr r2, _0807C59C
	ldr r1, [r2, #0]
	movs r0, #0x64
	str r0, [r1, #4]
	b _0807C604
	.2byte 0x0000
_0807C59C: .4byte gUnk_03006440
_0807C5A0:
	ldr r2, _0807C5AC
	ldr r1, [r2, #0]
	movs r0, #0
	str r0, [r1, #4]
	b _0807C604
	.2byte 0x0000
_0807C5AC: .4byte gUnk_03006440
_0807C5B0:
	ldr r2, _0807C5BC
	ldr r1, [r2, #0]
	movs r0, #5
	str r0, [r1, #4]
	b _0807C604
	.2byte 0x0000
_0807C5BC: .4byte gUnk_03006440
_0807C5C0:
	ldr r2, _0807C5CC
	ldr r1, [r2, #0]
	movs r0, #0x14
	str r0, [r1, #4]
	b _0807C604
	.2byte 0x0000
_0807C5CC: .4byte gUnk_03006440
_0807C5D0:
	ldr r2, _0807C5DC
	ldr r1, [r2, #0]
	movs r0, #0xa
	str r0, [r1, #4]
	b _0807C604
	.2byte 0x0000
_0807C5DC: .4byte gUnk_03006440
_0807C5E0:
	ldr r2, _0807C5EC
	ldr r1, [r2, #0]
	movs r0, #0x65
	str r0, [r1, #4]
	b _0807C604
	.2byte 0x0000
_0807C5EC: .4byte gUnk_03006440
_0807C5F0:
	ldr r2, _0807C5FC
	ldr r1, [r2, #0]
	movs r0, #0x66
	str r0, [r1, #4]
	b _0807C604
	.2byte 0x0000
_0807C5FC: .4byte gUnk_03006440
_0807C600:
	movs r0, #0x67
	str r0, [r6, #4]
_0807C604:
	ldr r0, _0807C630
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #5
	bne _0807C612
	movs r0, #0x67
	str r0, [r1, #4]
_0807C612:
	ldr r2, _0807C630
	ldr r1, [r2, #0]
	ldr r5, [r1, #4]
	cmp r5, #0x14
	beq _0807C680
	cmp r5, #0x14
	bhi _0807C640
	cmp r5, #5
	beq _0807C66E
	cmp r5, #5
	bhi _0807C634
	cmp r5, #0
	beq _0807C65C
	bl _0807FB38
_0807C630: .4byte gUnk_03006440
_0807C634:
	cmp r5, #0xa
	beq _0807C672
	cmp r5, #0xf
	beq _0807C672
	bl _0807FB38
_0807C640:
	cmp r5, #0x66
	beq _0807C68C
	cmp r5, #0x66
	bhi _0807C654
	cmp r5, #0x64
	beq _0807C684
	cmp r5, #0x65
	beq _0807C688
	bl _0807FB38
_0807C654:
	cmp r5, #0x67
	beq _0807C69C
	bl _0807FB38
_0807C65C:
	movs r0, #1
	str r0, [r1, #0x18]
	str r5, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FB38
_0807C66E:
	movs r0, #2
	b _0807C68E
_0807C672:
	ldr r0, _0807C67C
	ldr r1, [r0, #0]
	movs r0, #4
	b _0807C68E
	.2byte 0x0000
_0807C67C: .4byte gUnk_03006440
_0807C680:
	movs r0, #3
	b _0807C68E
_0807C684:
	movs r0, #9
	b _0807C68E
_0807C688:
	movs r0, #5
	b _0807C68E
_0807C68C:
	movs r0, #6
_0807C68E:
	str r0, [r1, #0x18]
	movs r0, #0
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	bl _0807FB38
_0807C69C:
	str r3, [r1, #4]
	bl _0807FB38
_0807C6A2:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807C6C8
	ldr r0, _0807C6C4
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #4
	bhi _0807C6B8
	bl _0807FB38
_0807C6B8:
	str r0, [r1, #8]
	subs r0, #5
	str r0, [r1, #4]
	bl _0807FAC4
	.2byte 0x0000
_0807C6C4: .4byte gUnk_03006440
_0807C6C8:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	cmp r0, #0
	beq _0807C726
	ldr r0, _0807C6EC
	ldr r1, [r0, #0]
	ldr r2, [r1, #4]
	cmp r2, #0x13
	bhi _0807C6F0
	str r2, [r1, #8]
	adds r0, r2, #5
	str r0, [r1, #4]
	bl _0807FAC4
	.2byte 0x0000
_0807C6EC: .4byte gUnk_03006440
_0807C6F0:
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807C6FA
	bl _0807FB38
_0807C6FA:
	movs r0, #0x14
	str r0, [r1, #8]
	movs r0, #7
	str r0, [r1, #0x18]
	cmp r2, #0x14
	bhs _0807C70A
	bl _0807FB38
_0807C70A:
	cmp r2, #0x15
	bhi _0807C716
	movs r0, #1
	str r0, [r1, #4]
	bl _0807FAC4
_0807C716:
	cmp r2, #0x18
	bls _0807C71E
	bl _0807FB38
_0807C71E:
	movs r0, #2
	str r0, [r1, #4]
	bl _0807FAC4
_0807C726:
	ldr r0, _0807C78C
	ldrh r1, [r0, #0]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	cmp r2, #0
	bne _0807C738
	bl _0807CF6C
_0807C738:
	ldr r3, _0807C790
	ldr r5, [r3, #0]
	adds r0, r5, #0
	adds r0, #0x6a
	movs r4, #0
	mov r8, r4
	movs r7, #0x64
	strh r7, [r0, #0]
	ldr r0, [r5, #0]
	cmp r0, #5
	bne _0807C750
	b _0807CEF0
_0807C750:
	ldr r6, [r5, #0x1c]
	cmp r6, #0x16
	bne _0807C7FC
	ldr r0, _0807C794
	ldr r1, [r0, #0]
	ldr r3, [r5, #4]
	lsls r0, r3, #4
	adds r0, r1, r0
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r4, r0, r6
	ldrh r2, [r4, #0]
	cmp r2, #0
	bne _0807C770
	bl _0807FB38
_0807C770:
	cmp r2, #0xa
	beq _0807C798
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	str r3, [r5, #0x20]
	adds r1, r5, #0
	adds r1, #0xf4
	adds r0, r4, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	bl _0807F3E0
_0807C78C: .4byte gUnk_03001324
_0807C790: .4byte gUnk_03006440
_0807C794: .4byte gUnk_030034E0
_0807C798:
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	str r3, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0xf4
	strh r2, [r0, #0]
	adds r2, r5, #0
	adds r2, #0xf8
	ldr r0, [r5, #4]
	lsls r0, r0, #4
	movs r4, #0xaa
	lsls r4, r4, #1
	adds r1, r1, r4
	adds r0, r1, r0
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	movs r0, #0x14
	str r0, [r5, #0x18]
	ldr r6, [sp, #0x30]
	str r6, [r5, #0xc]
	ldr r0, [r5, #4]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r1, [r1, #0]
	movs r3, #6
	movs r2, #4
	ldr r4, _0807C7F4
	ldr r0, [r4, #0x10]
	cmp r0, r1
	bls _0807C7E6
	adds r4, #0x10
_0807C7D6:
	adds r4, #4
	adds r2, #1
	subs r3, #1
	cmp r2, #9
	bhi _0807C7E6
	ldr r0, [r4, #0]
	cmp r0, r1
	bhi _0807C7D6
_0807C7E6:
	ldr r0, _0807C7F8
	ldr r1, [r0, #0]
	str r3, [r1, #0x14]
	subs r0, r3, #1
	str r0, [r1, #0x10]
	bl _0807F3E0
_0807C7F4: .4byte gUnk_084EBD4C
_0807C7F8: .4byte gUnk_03006440
_0807C7FC:
	adds r0, r5, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	mov r9, r0
	cmp r0, #0
	beq _0807C80C
	b _0807C9A0
_0807C80C:
	adds r1, r5, #0
	adds r1, #0xf4
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	beq _0807C8B4
	cmp r6, #0xb
	beq _0807C858
	ldr r1, [r5, #0x20]
	adds r0, r6, #0
	bl sub_0807BD78
	ldr r7, _0807C850
	ldr r2, [r7, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0
	bl sub_0807BEA0
	add r0, sp, #0x14
	mov r1, r9
	str r1, [sp, #0x14]
	ldr r1, [r7, #0]
	adds r1, #0xf4
	ldr r2, _0807C854
	bl CpuSet
	ldr r1, [r7, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	mov r2, r9
	str r2, [r1, #0x20]
	bl _0807F774
	.2byte 0x0000
_0807C850: .4byte gUnk_03006440
_0807C854: .4byte 0x05000004
_0807C858:
	adds r0, r1, #0
	bl sub_0805AE94
	bl sub_0807C014
	ldr r3, _0807C8AC
	ldr r2, [r3, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0
	bl sub_0807BEA0
	ldr r4, _0807C8AC
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x20]
	cmp r1, #8
	bls _0807C880
	ldr r0, [r0, #0x1c]
	bl sub_0807BD78
_0807C880:
	ldr r5, _0807C8AC
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x20]
	str r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #8]
	ldr r0, [r1, #0x1c]
	str r0, [r1, #0x18]
	add r0, sp, #0x14
	mov r6, r9
	str r6, [sp, #0x14]
	adds r1, #0xf4
	ldr r2, _0807C8B0
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r6, [r1, #0x20]
	bl _0807F946
	.2byte 0x0000
_0807C8AC: .4byte gUnk_03006440
_0807C8B0: .4byte 0x05000004
_0807C8B4:
	cmp r6, #0
	beq _0807C8C0
	cmp r6, #0xd
	beq _0807C93C
	bl _0807FB38
_0807C8C0:
	ldr r4, _0807C930
	ldr r3, [r4, #0]
	ldr r2, [r5, #0x20]
	lsls r2, r2, #4
	movs r7, #0xaa
	lsls r7, r7, #1
	adds r3, r3, r7
	adds r2, r3, r2
	adds r1, r5, #0
	adds r1, #0xf8
	ldr r0, [r2, #0]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	str r0, [r2, #0]
	ldr r0, [r5, #0x20]
	lsls r0, r0, #4
	adds r1, r3, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	bge _0807C8EA
	str r6, [r1, #0]
_0807C8EA:
	ldr r1, [r4, #0]
	ldr r2, _0807C934
	ldr r0, [r2, #0]
	ldr r0, [r0, #0x20]
	lsls r3, r0, #4
	adds r0, r1, r7
	adds r0, r0, r3
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0807C908
	adds r0, r1, r3
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r0, r0, r3
	strh r6, [r0, #0]
_0807C908:
	ldr r4, _0807C934
	ldr r2, [r4, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0
	bl sub_0807BEA0
	add r0, sp, #0x14
	str r6, [sp, #0x14]
	ldr r1, [r4, #0]
	adds r1, #0xf4
	ldr r2, _0807C938
	bl CpuSet
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r6, [r1, #0x20]
	bl _0807F774
_0807C930: .4byte gUnk_030034E0
_0807C934: .4byte gUnk_03006440
_0807C938: .4byte 0x05000004
_0807C93C:
	ldr r2, [r5, #0x20]
	lsls r2, r2, #4
	movs r6, #0x84
	lsls r6, r6, #1
	adds r3, r5, r6
	adds r2, r3, r2
	adds r1, r5, #0
	adds r1, #0xf8
	ldr r0, [r2, #0]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	str r0, [r2, #0]
	ldr r0, [r5, #0x20]
	lsls r1, r0, #4
	adds r3, r3, r1
	ldr r0, [r3, #0]
	cmp r0, #0
	bne _0807C96C
	adds r0, r5, r1
	movs r7, #0x82
	lsls r7, r7, #1
	adds r0, r0, r7
	mov r1, r9
	strh r1, [r0, #0]
_0807C96C:
	ldr r3, _0807C998
	ldr r2, [r3, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0
	bl sub_0807BEA0
	add r0, sp, #0x14
	mov r4, r9
	str r4, [sp, #0x14]
	ldr r5, _0807C998
	ldr r1, [r5, #0]
	adds r1, #0xf4
	ldr r2, _0807C99C
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	bl _0807F774
_0807C998: .4byte gUnk_03006440
_0807C99C: .4byte 0x05000004
_0807C9A0:
	adds r0, r5, #0
	adds r0, #0xf4
	str r0, [sp, #0x34]
	ldrh r0, [r0, #0]
	cmp r0, #0xa
	bne _0807C9AE
	b _0807CC90
_0807C9AE:
	cmp r6, #0xb
	bne _0807C9B6
	bl _0807FB38
_0807C9B6:
	ldr r2, [sp, #0x34]
	ldr r1, [r2, #0]
	ldr r0, _0807CA18
	cmp r1, r0
	bne _0807CAA0
	ldr r2, _0807CA1C
	ldr r1, [r2, #0]
	ldr r0, [r5, #4]
	lsls r0, r0, #4
	adds r1, r1, r0
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r6, r1, r3
	ldrh r0, [r6, #0]
	cmp r0, #5
	bgt _0807CA70
	cmp r0, #2
	blt _0807CA70
	movs r4, #0xac
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _0807CA28
	mov r5, r8
	strb r5, [r1, #0]
	ldr r6, _0807CA20
	ldr r1, [r6, #0]
	adds r0, r1, #0
	adds r0, #0x6a
	strh r7, [r0, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	bl sub_0807BD78
	add r0, sp, #0x14
	ldr r7, [sp, #0x30]
	str r7, [sp, #0x14]
	ldr r1, [r6, #0]
	adds r1, #0xf4
	ldr r2, _0807CA24
	bl CpuSet
	ldr r1, [r6, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r7, [r1, #0x20]
	b _0807CF5A
	.2byte 0x0000
_0807CA18: .4byte 0x000C0001
_0807CA1C: .4byte gUnk_030034E0
_0807CA20: .4byte gUnk_03006440
_0807CA24: .4byte 0x05000004
_0807CA28:
	add r1, sp, #4
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r5, #4]
	movs r0, #0
	ldr r2, [sp, #0x34]
	bl sub_0807BEA0
	ldr r5, _0807CA68
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	ldr r6, [sp, #0x30]
	str r6, [sp, #0x14]
	ldr r1, [r5, #0]
	adds r1, #0xf4
	ldr r2, _0807CA6C
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r6, [r1, #0x20]
	bl _0807F774
_0807CA68: .4byte gUnk_03006440
_0807CA6C: .4byte 0x05000004
_0807CA70:
	ldr r7, _0807CA98
	ldr r1, [r7, #0]
	ldr r4, _0807CA9C
	ldr r2, [r4, #0]
	ldr r0, [r2, #4]
	lsls r0, r0, #4
	adds r1, r1, r0
	add r0, sp, #4
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r1, r1, r3
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0
	bl _0807F74C
_0807CA98: .4byte gUnk_030034E0
_0807CA9C: .4byte gUnk_03006440
_0807CAA0:
	cmp r6, #6
	bne _0807CAA8
	bl _0807FB38
_0807CAA8:
	cmp r6, #6
	bhi _0807CAB2
	cmp r6, #0
	beq _0807CAB6
	b _0807CAE8
_0807CAB2:
	cmp r6, #0xd
	bne _0807CAE8
_0807CAB6:
	ldr r0, _0807CAE0
	ldr r1, [r0, #0]
	ldr r4, _0807CAE4
	ldr r2, [r4, #0]
	ldr r0, [r2, #4]
	lsls r0, r0, #4
	adds r1, r1, r0
	add r0, sp, #4
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r1, r1, r3
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0
	bl _0807F74C
	.2byte 0x0000
_0807CAE0: .4byte gUnk_030034E0
_0807CAE4: .4byte gUnk_03006440
_0807CAE8:
	ldr r1, _0807CB20
	ldr r0, [r1, #0]
	adds r3, r0, #0
	adds r3, #0xf4
	ldr r2, _0807CB24
	ldr r1, [r2, #0]
	ldr r0, [r0, #4]
	lsls r0, r0, #4
	adds r1, r1, r0
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrh r0, [r3, #0]
	ldrh r5, [r1, #0]
	cmp r0, r5
	beq _0807CB0C
	bl _0807F724
_0807CB0C:
	movs r5, #0
	ldrh r0, [r1, #0]
	subs r0, #2
	cmp r0, #5
	bhi _0807CBDA
	lsls r0, r0, #2
	ldr r1, _0807CB28
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0807CB20: .4byte gUnk_03006440
_0807CB24: .4byte gUnk_030034E0
_0807CB28: .4byte _0807CB2C
_0807CB2C:
	.4byte _0807CB44
_0807CB30: .4byte _0807CB8C
_0807CB34: .4byte _0807CBB0
_0807CB38: .4byte _0807CB68
_0807CB3C: .4byte _0807CBD8
_0807CB40: .4byte _0807CBD8
_0807CB44:
	ldr r0, _0807CB60
	ldr r0, [r0, #0]
	ldr r1, [r0, #4]
	lsls r1, r1, #4
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r1, r1, r6
	ldr r7, _0807CB64
	ldr r0, [r7, #0]
	adds r0, r0, r1
	bl sub_0805AE34
	b _0807CBC8
	.2byte 0x0000
_0807CB60: .4byte gUnk_03006440
_0807CB64: .4byte gUnk_030034E0
_0807CB68:
	ldr r0, _0807CB84
	ldr r0, [r0, #0]
	ldr r1, [r0, #4]
	lsls r1, r1, #4
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r2, _0807CB88
	ldr r0, [r2, #0]
	adds r0, r0, r1
	bl sub_0805D2E0
	b _0807CBC8
	.2byte 0x0000
_0807CB84: .4byte gUnk_03006440
_0807CB88: .4byte gUnk_030034E0
_0807CB8C:
	ldr r0, _0807CBA8
	ldr r0, [r0, #0]
	ldr r1, [r0, #4]
	lsls r1, r1, #4
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r1, r1, r3
	ldr r4, _0807CBAC
	ldr r0, [r4, #0]
	adds r0, r0, r1
	bl sub_0805D278
	b _0807CBC8
	.2byte 0x0000
_0807CBA8: .4byte gUnk_03006440
_0807CBAC: .4byte gUnk_030034E0
_0807CBB0:
	ldr r0, _0807CBD0
	ldr r0, [r0, #0]
	ldr r1, [r0, #4]
	lsls r1, r1, #4
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r1, r1, r6
	ldr r7, _0807CBD4
	ldr r0, [r7, #0]
	adds r0, r0, r1
	bl sub_0805D210
_0807CBC8:
	cmp r0, #0
	beq _0807CBDA
	b _0807CBE2
	.2byte 0x0000
_0807CBD0: .4byte gUnk_03006440
_0807CBD4: .4byte gUnk_030034E0
_0807CBD8:
	movs r5, #1
_0807CBDA:
	cmp r5, #0
	bne _0807CBE2
	bl _0807F724
_0807CBE2:
	ldr r0, _0807CC2C
	ldr r1, [r0, #0]
	ldr r4, _0807CC30
	ldr r2, [r4, #0]
	ldr r0, [r2, #4]
	lsls r0, r0, #4
	adds r1, r1, r0
	add r0, sp, #4
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r1, r1, r3
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0
	bl sub_0807BEA0
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #4
	ldrh r0, [r0, #0]
	subs r0, #2
	cmp r0, #5
	bhi _0807CC80
	lsls r0, r0, #2
	ldr r1, _0807CC34
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0807CC2C: .4byte gUnk_030034E0
_0807CC30: .4byte gUnk_03006440
_0807CC34: .4byte _0807CC38
_0807CC38:
	.4byte _0807CC50
_0807CC3C: .4byte _0807CC6A
_0807CC40: .4byte _0807CC70
_0807CC44: .4byte _0807CC64
_0807CC48: .4byte _0807CC76
_0807CC4C: .4byte _0807CC7C
_0807CC50:
	ldr r0, _0807CC60
	ldr r0, [r0, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	bl sub_0805AD78
	b _0807CC80
	.2byte 0x0000
_0807CC60: .4byte gUnk_030034E0
_0807CC64:
	bl sub_0805D13C
	b _0807CC80
_0807CC6A:
	bl sub_0805D0E8
	b _0807CC80
_0807CC70:
	bl sub_0805D094
	b _0807CC80
_0807CC76:
	bl sub_0805D1E0
	b _0807CC80
_0807CC7C:
	bl sub_0805D190
_0807CC80:
	add r0, sp, #0x14
	movs r5, #0
	str r5, [sp, #0x14]
	ldr r4, _0807CC8C
	bl _0807F762
_0807CC8C: .4byte gUnk_03006440
_0807CC90:
	ldr r1, _0807CD08
	ldr r0, [r1, #0]
	mov r8, r0
	ldr r4, [r5, #0x20]
	lsls r0, r4, #4
	movs r2, #0xaa
	lsls r2, r2, #1
	add r2, r8
	mov ip, r2
	add r0, ip
	str r0, [sp, #0x38]
	movs r3, #0xf8
	adds r3, r3, r5
	mov sl, r3
	ldr r7, [r0, #0]
	ldr r2, [r3, #0]
	cmp r7, r2
	beq _0807CCB6
	b _0807CDB0
_0807CCB6:
	ldr r1, [r5, #4]
	lsls r3, r1, #4
	mov r6, r8
	adds r0, r6, r3
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r2, r0, r6
	ldrh r0, [r2, #0]
	cmp r0, #0xa
	bne _0807CD64
	mov r0, ip
	adds r2, r0, r3
	ldr r0, [r2, #0]
	adds r0, r0, r7
	ldr r3, _0807CD0C
	cmp r0, r3
	bhi _0807CD18
	cmp r4, r1
	beq _0807CCE6
	str r0, [r2, #0]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	bl sub_0807BD78
_0807CCE6:
	add r0, sp, #0x14
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r2, _0807CD10
	ldr r1, [r2, #0]
	adds r1, #0xf4
	ldr r2, _0807CD14
	bl CpuSet
	ldr r3, _0807CD10
	ldr r1, [r3, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	movs r4, #0
	str r4, [r1, #0x20]
	bl _0807F774
_0807CD08: .4byte gUnk_030034E0
_0807CD0C: .4byte 0x000186A0
_0807CD10: .4byte gUnk_03006440
_0807CD14: .4byte 0x05000004
_0807CD18:
	cmp r4, r1
	beq _0807CD36
	ldr r6, _0807CD58
	adds r0, r0, r6
	mov r7, sl
	str r0, [r7, #0]
	ldr r0, [r5, #4]
	lsls r0, r0, #4
	add r0, ip
	str r3, [r0, #0]
	ldr r1, [r5, #0x20]
	movs r0, #0
	ldr r2, [sp, #0x34]
	bl sub_0807BEA0
_0807CD36:
	add r0, sp, #0x14
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r2, _0807CD5C
	ldr r1, [r2, #0]
	adds r1, #0xf4
	ldr r2, _0807CD60
	bl CpuSet
	ldr r3, _0807CD5C
	ldr r1, [r3, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	movs r4, #0
	str r4, [r1, #0x20]
	bl _0807F774
_0807CD58: .4byte 0xFFFE7960
_0807CD5C: .4byte gUnk_03006440
_0807CD60: .4byte 0x05000004
_0807CD64:
	add r1, sp, #4
	adds r0, r2, #0
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r5, #4]
	movs r0, #0
	ldr r2, [sp, #0x34]
	bl sub_0807BEA0
	ldr r3, _0807CDA8
	ldr r1, [r3, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x14]
	ldr r5, _0807CDA8
	ldr r1, [r5, #0]
	adds r1, #0xf4
	ldr r2, _0807CDAC
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	bl _0807F774
	.2byte 0x0000
_0807CDA8: .4byte gUnk_03006440
_0807CDAC: .4byte 0x05000004
_0807CDB0:
	mov r0, r9
	cmp r0, #0xa
	beq _0807CDBA
	bl _0807F724
_0807CDBA:
	ldr r3, [r5, #4]
	lsls r0, r3, #4
	add r0, ip
	ldr r0, [r0, #0]
	adds r1, r0, r2
	ldr r0, _0807CDD4
	cmp r1, r0
	bhi _0807CE74
	cmp r6, #0
	beq _0807CDD8
	cmp r6, #0xd
	beq _0807CDFA
	b _0807CE2C
_0807CDD4: .4byte 0x000186A0
_0807CDD8:
	subs r0, r7, r2
	ldr r1, [sp, #0x38]
	str r0, [r1, #0]
	ldr r0, [r5, #0x20]
	lsls r1, r0, #4
	mov r2, ip
	adds r0, r2, r1
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0807CE2C
	mov r3, r8
	adds r0, r3, r1
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r0, r0, r4
	strh r6, [r0, #0]
	b _0807CE2C
_0807CDFA:
	ldr r6, _0807CE68
	ldr r5, [r6, #0]
	ldr r2, [r5, #0x20]
	lsls r2, r2, #4
	movs r7, #0x84
	lsls r7, r7, #1
	adds r3, r5, r7
	adds r2, r3, r2
	adds r1, r5, #0
	adds r1, #0xf8
	ldr r0, [r2, #0]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	str r0, [r2, #0]
	ldr r0, [r5, #0x20]
	lsls r0, r0, #4
	adds r3, r3, r0
	ldr r3, [r3, #0]
	cmp r3, #0
	bne _0807CE2C
	adds r0, r5, r0
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r3, [r0, #0]
_0807CE2C:
	ldr r2, _0807CE6C
	ldr r3, [r2, #0]
	ldr r5, _0807CE68
	ldr r1, [r5, #0]
	ldr r0, [r1, #4]
	lsls r0, r0, #4
	movs r4, #0xaa
	lsls r4, r4, #1
	adds r3, r3, r4
	adds r3, r3, r0
	adds r2, r1, #0
	adds r2, #0xf8
	ldr r0, [r3, #0]
	ldr r2, [r2, #0]
	adds r0, r0, r2
	str r0, [r3, #0]
	add r0, sp, #0x14
	movs r4, #0
	str r4, [sp, #0x14]
	adds r1, #0xf4
	ldr r2, _0807CE70
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	bl _0807F774
	.2byte 0x0000
_0807CE68: .4byte gUnk_03006440
_0807CE6C: .4byte gUnk_030034E0
_0807CE70: .4byte 0x05000004
_0807CE74:
	cmp r4, r3
	beq _0807CED6
	ldr r0, _0807CE88
	adds r5, r1, r0
	cmp r6, #0
	beq _0807CE8C
	cmp r6, #0xd
	beq _0807CE96
	b _0807CEB4
	.2byte 0x0000
_0807CE88: .4byte 0xFFFE7960
_0807CE8C:
	subs r0, r7, r2
	adds r0, r0, r5
	mov r1, sl
	str r0, [r1, #0]
	b _0807CEB4
_0807CE96:
	ldr r2, _0807CEE4
	ldr r0, [r2, #0]
	adds r2, r0, #0
	adds r2, #0xf8
	ldr r1, [r0, #0x20]
	lsls r1, r1, #4
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r1, [r2, #0]
	subs r0, r0, r1
	adds r0, r0, r5
	str r0, [r2, #0]
_0807CEB4:
	ldr r4, _0807CEE8
	ldr r1, [r4, #0]
	ldr r0, _0807CEE4
	ldr r2, [r0, #0]
	ldr r0, [r2, #4]
	lsls r0, r0, #4
	movs r5, #0xaa
	lsls r5, r5, #1
	adds r1, r1, r5
	adds r1, r1, r0
	ldr r0, _0807CEEC
	str r0, [r1, #0]
	ldr r1, [r2, #0x20]
	adds r2, #0xf4
	movs r0, #0
	bl sub_0807BEA0
_0807CED6:
	add r0, sp, #0x14
	movs r5, #0
	str r5, [sp, #0x14]
	ldr r4, _0807CEE4
	bl _0807F762
	.2byte 0x0000
_0807CEE4: .4byte gUnk_03006440
_0807CEE8: .4byte gUnk_030034E0
_0807CEEC: .4byte 0x000186A0
_0807CEF0:
	adds r0, r5, #0
	adds r0, #0xf0
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _0807CF00
	bl _0807FB38
_0807CF00:
	cmp r0, #5
	ble _0807CF08
	bl _0807FB38
_0807CF08:
	cmp r0, #2
	bge _0807CF10
	bl _0807FB38
_0807CF10:
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _0807CF1A
	bl _0807FB38
_0807CF1A:
	bl sub_0805B0F0
	adds r4, r0, #0
	ldr r6, _0807CF68
	ldr r0, [r6, #0]
	adds r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0805B068
	cmp r4, r0
	bhs _0807CF34
	bl _0807F724
_0807CF34:
	ldr r0, [r6, #0]
	adds r0, #0xf0
	ldr r0, [r0, #0]
	mov r1, r8
	strb r1, [r0, #8]
	ldr r2, [r6, #0]
	adds r1, r2, #0
	adds r1, #0x68
	movs r0, #6
	strh r0, [r1, #0]
	adds r0, r2, #0
	adds r0, #0x6a
	strh r7, [r0, #0]
	adds r0, #0x86
	ldr r0, [r0, #0]
	bl sub_0805B068
	bl sub_0807C014
_0807CF5A:
	movs r0, #0xc6
	lsls r0, r0, #1
	bl sub_0805865C
	bl _0807FB38
	.2byte 0x0000
_0807CF68: .4byte gUnk_03006440
_0807CF6C:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807CF7A
	bl _0807FB38
_0807CF7A:
	ldr r0, _0807CFB0
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #2
	bne _0807CF88
	bl _0807FB38
_0807CF88:
	cmp r0, #3
	beq _0807CF90
	bl _0807FB38
_0807CF90:
	ldr r0, [r1, #0x1c]
	cmp r0, #0xb
	bne _0807CF9A
	bl _0807FB38
_0807CF9A:
	cmp r0, #0x16
	bne _0807CFA2
	bl _0807FB38
_0807CFA2:
	movs r0, #0xc
	str r0, [r1, #0x18]
	str r2, [r1, #4]
	str r3, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807CFB0: .4byte gUnk_03006440
_0807CFB4:
	ldr r4, _0807CFE4
	ldr r0, [r4, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r1, r1, r2
	lsrs r5, r1, #0x10
	ldr r6, _0807CFE8
	ldr r1, [r6, #0]
	ldr r0, [r1, #4]
	cmp r3, r0
	blo _0807CFEC
	str r3, [r1, #4]
	b _0807CFF4
_0807CFE4: .4byte gUnk_030034E0
_0807CFE8: .4byte gUnk_03006440
_0807CFEC:
	cmp r5, r0
	bhi _0807CFF4
	subs r0, r5, #1
	str r0, [r1, #4]
_0807CFF4:
	ldr r0, _0807D020
	ldrh r2, [r0, #0]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0807D030
	ldr r0, _0807D024
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, r3
	bne _0807D028
	movs r0, #0
	str r0, [r1, #0x18]
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
	.2byte 0x0000
_0807D020: .4byte gUnk_03001308
_0807D024: .4byte gUnk_03006440
_0807D028:
	subs r0, #1
	str r0, [r1, #4]
	bl _0807FAC4
_0807D030:
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0807D058
	ldr r0, _0807D054
	ldr r3, [r0, #0]
	subs r0, r5, #1
	ldr r2, [r3, #4]
	cmp r2, r0
	blo _0807D04C
	bl _0807FB38
_0807D04C:
	adds r0, r2, #1
	str r0, [r3, #4]
	bl _0807FAC4
_0807D054: .4byte gUnk_03006440
_0807D058:
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _0807D0D6
	ldr r0, _0807D09C
	ldr r4, [r0, #0]
	ldr r0, [r4, #0x1c]
	cmp r0, #0x16
	beq _0807D072
	bl _0807FB38
_0807D072:
	ldr r0, [r4, #0]
	cmp r0, #5
	beq _0807D0C8
	adds r1, r4, #0
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	ldr r0, [r4, #4]
	movs r1, #3
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #1
	beq _0807D0AE
	cmp r1, #1
	blo _0807D0A0
	cmp r1, #2
	beq _0807D0BA
	bl _0807FB38
	.2byte 0x0000
_0807D09C: .4byte gUnk_03006440
_0807D0A0:
	movs r0, #2
	str r0, [r4, #0x18]
	str r6, [r4, #4]
	movs r0, #1
	str r0, [r4, #8]
	bl _0807FAC4
_0807D0AE:
	movs r0, #9
	str r0, [r4, #0x18]
	str r6, [r4, #4]
	str r1, [r4, #8]
	bl _0807FAC4
_0807D0BA:
	movs r0, #5
	str r0, [r4, #0x18]
	str r6, [r4, #4]
	movs r0, #1
	str r0, [r4, #8]
	bl _0807FAC4
_0807D0C8:
	movs r0, #7
	str r0, [r4, #0x18]
	str r6, [r4, #4]
	movs r0, #2
	str r0, [r4, #8]
	bl _0807FAC4
_0807D0D6:
	ldr r0, _0807D130
	ldrh r1, [r0, #0]
	movs r3, #1
	ands r3, r1
	cmp r3, #0
	bne _0807D0E4
	b _0807D2AC
_0807D0E4:
	ldr r6, _0807D134
	ldr r2, [r6, #0]
	ldr r1, [r2, #0x1c]
	cmp r1, #0x16
	bne _0807D13C
	ldr r1, _0807D138
	ldr r0, [r1, #0]
	ldr r3, [r2, #4]
	lsls r1, r3, #4
	adds r0, r0, r1
	adds r5, r0, #0
	adds r5, #0x70
	ldrh r0, [r5, #0]
	cmp r0, #0
	bne _0807D106
	bl _0807FB38
_0807D106:
	ldr r0, [r2, #0x18]
	str r0, [r2, #0x1c]
	str r3, [r2, #0x20]
	adds r1, r2, #0
	adds r1, #0xf4
	adds r0, r5, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [r6, #0]
	adds r0, #0xfd
	strb r7, [r0, #0]
	ldr r5, _0807D138
	ldr r0, [r5, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	bl sub_0805AD78
	bl _0807F3E0
_0807D130: .4byte gUnk_03001324
_0807D134: .4byte gUnk_03006440
_0807D138: .4byte gUnk_030034E0
_0807D13C:
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0807D228
	cmp r1, #0xb
	beq _0807D1B8
	adds r0, r2, #0
	adds r0, #0xf4
	bl sub_0805AE34
	cmp r0, #0
	beq _0807D190
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	bl sub_0807BD78
	ldr r2, [r6, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #1
	bl sub_0807BEA0
	add r0, sp, #0x14
	str r7, [sp, #0x14]
	ldr r1, [r6, #0]
	adds r1, #0xf4
	ldr r2, _0807D18C
	bl CpuSet
	ldr r1, [r6, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r7, [r1, #0x20]
	movs r0, #0x5f
	bl sub_0805865C
	b _0807D196
_0807D18C: .4byte 0x05000004
_0807D190:
	movs r0, #0x61
	bl sub_0805865C
_0807D196:
	ldr r0, _0807D1B0
	ldr r0, [r0, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	bl sub_0805AD78
	ldr r0, _0807D1B4
	ldr r0, [r0, #0]
	adds r0, #0x6a
	movs r1, #0x64
	strh r1, [r0, #0]
	bl _0807FB38
_0807D1B0: .4byte gUnk_030034E0
_0807D1B4: .4byte gUnk_03006440
_0807D1B8:
	adds r1, r2, #0
	adds r1, #0xf4
	ldrh r0, [r1, #0]
	cmp r0, #2
	beq _0807D1C6
	bl _0807FB38
_0807D1C6:
	adds r0, r1, #0
	bl sub_0805AE34
	cmp r0, #0
	bne _0807D1D4
	bl _0807F724
_0807D1D4:
	ldr r0, [r6, #0]
	adds r0, #0xf4
	bl sub_0805AE94
	bl sub_0807C014
	ldr r2, [r6, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #1
	bl sub_0807BEA0
	ldr r0, [r6, #0]
	ldr r1, [r0, #0x20]
	cmp r1, #8
	bls _0807D1FA
	ldr r0, [r0, #0x1c]
	bl sub_0807BD78
_0807D1FA:
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x20]
	str r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #8]
	ldr r0, [r1, #0x1c]
	str r0, [r1, #0x18]
	add r0, sp, #0x14
	str r7, [sp, #0x14]
	adds r1, #0xf4
	ldr r2, _0807D224
	bl CpuSet
	ldr r1, [r6, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r7, [r1, #0x20]
	movs r0, #0x63
	bl sub_0805865C
	b _0807D296
_0807D224: .4byte 0x05000004
_0807D228:
	cmp r1, #0xb
	bne _0807D230
	bl _0807F724
_0807D230:
	adds r0, r2, #0
	adds r0, #0xf4
	bl sub_0805AE34
	cmp r0, #0
	beq _0807D290
	ldr r0, _0807D288
	ldr r0, [r0, #0]
	ldr r2, [r6, #0]
	ldr r1, [r2, #4]
	lsls r1, r1, #4
	adds r0, r0, r1
	add r1, sp, #4
	adds r0, #0x70
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #1
	bl sub_0807BEA0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	str r7, [sp, #0x14]
	ldr r1, [r6, #0]
	adds r1, #0xf4
	ldr r2, _0807D28C
	bl CpuSet
	ldr r1, [r6, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r7, [r1, #0x20]
	movs r0, #0x5f
	bl sub_0805865C
	b _0807D296
_0807D288: .4byte gUnk_030034E0
_0807D28C: .4byte 0x05000004
_0807D290:
	movs r0, #0x61
	bl sub_0805865C
_0807D296:
	ldr r0, _0807D2A8
	ldr r0, [r0, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	bl sub_0805AD78
	bl _0807FB38
	.2byte 0x0000
_0807D2A8: .4byte gUnk_030034E0
_0807D2AC:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807D2BA
	bl _0807FB38
_0807D2BA:
	ldr r0, _0807D2E8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #2
	bne _0807D2C8
	bl _0807FB38
_0807D2C8:
	cmp r0, #3
	beq _0807D2D0
	bl _0807FB38
_0807D2D0:
	ldr r2, [r1, #0x1c]
	cmp r2, #1
	beq _0807D2DA
	bl _0807FB38
_0807D2DA:
	movs r0, #0xc
	str r0, [r1, #0x18]
	str r3, [r1, #4]
	str r2, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807D2E8: .4byte gUnk_03006440
_0807D2EC:
	ldr r0, _0807D320
	ldrh r1, [r0, #0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0807D328
	ldr r0, _0807D324
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x1c]
	cmp r0, #0x16
	beq _0807D30A
	bl _0807FB38
_0807D30A:
	movs r1, #1
	str r1, [r2, #0x18]
	movs r0, #0
	str r0, [r2, #4]
	str r1, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
_0807D320: .4byte gUnk_03001308
_0807D324: .4byte gUnk_03006440
_0807D328:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0807D35C
	ldr r0, _0807D358
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807D342
	bl _0807FB38
_0807D342:
	movs r0, #4
	str r0, [r1, #0x18]
	str r3, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
	.2byte 0x0000
_0807D358: .4byte gUnk_03006440
_0807D35C:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0807D380
	ldr r0, _0807D37C
	ldr r1, [r0, #0]
	str r2, [r1, #0x18]
	movs r0, #5
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807D37C: .4byte gUnk_03006440
_0807D380:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0807D3B4
	ldr r0, _0807D3B0
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807D39A
	bl _0807FB38
_0807D39A:
	movs r0, #9
	str r0, [r1, #0x18]
	str r3, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
	.2byte 0x0000
_0807D3B0: .4byte gUnk_03006440
_0807D3B4:
	ldr r0, _0807D410
	ldrh r1, [r0, #0]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	cmp r2, #0
	bne _0807D3C4
	b _0807D528
_0807D3C4:
	ldr r4, _0807D414
	ldr r1, [r4, #0]
	adds r2, r1, #0
	adds r2, #0x6a
	movs r0, #0x64
	strh r0, [r2, #0]
	ldr r2, [r1, #0x1c]
	cmp r2, #0x16
	bne _0807D41C
	ldr r0, _0807D418
	ldr r0, [r0, #0]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r2, r0, r6
	ldrh r0, [r2, #0]
	cmp r0, #0
	bne _0807D3EA
	bl _0807DFF6
_0807D3EA:
	ldr r0, [r1, #0x18]
	str r0, [r1, #0x1c]
	ldr r0, [r1, #4]
	str r0, [r1, #0x20]
	adds r1, #0xf4
	adds r0, r2, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	adds r0, #0xfd
	movs r1, #0
	strb r1, [r0, #0]
	bl sub_0805D094
	bl _0807DE2A
	.2byte 0x0000
_0807D410: .4byte gUnk_03001324
_0807D414: .4byte gUnk_03006440
_0807D418: .4byte gUnk_030034E0
_0807D41C:
	adds r0, r1, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0807D4BC
	cmp r2, #0xb
	beq _0807D450
	adds r0, r1, #0
	adds r0, #0xf4
	bl sub_0805D210
	cmp r0, #0
	bne _0807D43C
	bl _0807DFE8
_0807D43C:
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	bl sub_0807BD78
	ldr r2, [r4, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #2
	b _0807D4FC
_0807D450:
	adds r1, #0xf4
	ldrh r0, [r1, #0]
	cmp r0, #4
	beq _0807D45C
	bl _0807DFF6
_0807D45C:
	adds r0, r1, #0
	bl sub_0805D210
	cmp r0, #0
	bne _0807D46A
	bl _0807DFE8
_0807D46A:
	ldr r0, [r4, #0]
	adds r0, #0xf4
	bl sub_0805AE94
	bl sub_0807C014
	ldr r2, [r4, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #2
_0807D47E:
	bl sub_0807BEA0
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x20]
	cmp r1, #8
	bls _0807D490
	ldr r0, [r0, #0x1c]
	bl sub_0807BD78
_0807D490:
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x20]
	str r0, [r1, #4]
	ldr r0, [r1, #0x1c]
	str r0, [r1, #0x18]
	add r0, sp, #0x14
	str r5, [sp, #0x14]
	adds r1, #0xf4
	ldr r2, _0807D4B8
	bl CpuSet
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r5, [r1, #0x20]
	movs r0, #0x63
	bl sub_0805865C
	bl _0807DFF6
_0807D4B8: .4byte 0x05000004
_0807D4BC:
	cmp r2, #0xb
	bne _0807D4C4
	bl _0807DFF0
_0807D4C4:
	adds r0, r1, #0
	adds r0, #0xf4
	bl sub_0805D210
	cmp r0, #0
	bne _0807D4D4
	bl _0807DFE8
_0807D4D4:
	ldr r0, _0807D520
	ldr r0, [r0, #0]
	add r1, sp, #4
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r2, [r4, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #2
_0807D4F0:
	bl sub_0807BEA0
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
_0807D4FC:
	bl sub_0807BEA0
	add r0, sp, #0x14
	str r5, [sp, #0x14]
	ldr r1, [r4, #0]
	adds r1, #0xf4
	ldr r2, _0807D524
	bl CpuSet
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r5, [r1, #0x20]
	movs r0, #0x5f
	bl sub_0805865C
	bl _0807DFF6
_0807D520: .4byte gUnk_030034E0
_0807D524: .4byte 0x05000004
_0807D528:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807D536
	bl _0807FB38
_0807D536:
	ldr r0, _0807D564
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #2
	bne _0807D544
	bl _0807FB38
_0807D544:
	cmp r0, #3
	beq _0807D54C
	bl _0807FB38
_0807D54C:
	ldr r0, [r1, #0x1c]
	cmp r0, #2
	beq _0807D556
	bl _0807FB38
_0807D556:
	movs r0, #0xc
	str r0, [r1, #0x18]
	str r2, [r1, #4]
	str r3, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807D564: .4byte gUnk_03006440
_0807D568:
	ldr r0, _0807D5A0
	ldrh r1, [r0, #0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0807D5A8
	ldr r0, _0807D5A4
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x1c]
	cmp r0, #0x16
	beq _0807D586
	bl _0807FB38
_0807D586:
	movs r0, #4
	str r0, [r2, #0x18]
	adds r3, r2, #0
	adds r3, #0x6a
	movs r1, #0
	movs r0, #0x64
	strh r0, [r3, #0]
	str r1, [r2, #4]
	movs r0, #1
	str r0, [r2, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807D5A0: .4byte gUnk_03001308
_0807D5A4: .4byte gUnk_03006440
_0807D5A8:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0807D5DC
	ldr r0, _0807D5D8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807D5C2
	bl _0807FB38
_0807D5C2:
	movs r0, #7
	str r0, [r1, #0x18]
	adds r2, r1, #0
	adds r2, #0x6a
	movs r0, #0x64
	strh r0, [r2, #0]
	str r3, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	bl _0807FAC4
_0807D5D8: .4byte gUnk_03006440
_0807D5DC:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0807D600
	ldr r0, _0807D5FC
	ldr r1, [r0, #0]
	str r2, [r1, #0x18]
	movs r0, #0x14
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807D5FC: .4byte gUnk_03006440
_0807D600:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0807D634
	ldr r0, _0807D630
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807D61A
	bl _0807FB38
_0807D61A:
	movs r0, #6
	str r0, [r1, #0x18]
	str r3, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
	.2byte 0x0000
_0807D630: .4byte gUnk_03006440
_0807D634:
	ldr r0, _0807D68C
	ldrh r1, [r0, #0]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	cmp r2, #0
	beq _0807D738
	ldr r4, _0807D690
	ldr r1, [r4, #0]
	adds r2, r1, #0
	adds r2, #0x6a
	movs r0, #0x64
	strh r0, [r2, #0]
	ldr r2, [r1, #0x1c]
	cmp r2, #0x16
	bne _0807D698
	ldr r0, _0807D694
	ldr r0, [r0, #0]
	movs r5, #0x90
	lsls r5, r5, #1
	adds r2, r0, r5
	ldrh r0, [r2, #0]
	cmp r0, #0
	bne _0807D668
	bl _0807DFF6
_0807D668:
	ldr r0, [r1, #0x18]
	str r0, [r1, #0x1c]
	ldr r0, [r1, #4]
	str r0, [r1, #0x20]
	adds r1, #0xf4
	adds r0, r2, #0
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	adds r0, #0xfd
	movs r1, #0
	strb r1, [r0, #0]
	bl sub_0805D13C
	b _0807DE2A
	.2byte 0x0000
_0807D68C: .4byte gUnk_03001324
_0807D690: .4byte gUnk_03006440
_0807D694: .4byte gUnk_030034E0
_0807D698:
	adds r0, r1, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0807D6FC
	cmp r2, #0xb
	beq _0807D6CC
	adds r0, r1, #0
	adds r0, #0xf4
	bl sub_0805D2E0
	cmp r0, #0
	bne _0807D6B8
	bl _0807DFE8
_0807D6B8:
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	bl sub_0807BD78
	ldr r2, [r4, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #3
	b _0807D4FC
_0807D6CC:
	adds r1, #0xf4
	ldrh r0, [r1, #0]
	cmp r0, #5
	beq _0807D6D8
	bl _0807DFF6
_0807D6D8:
	adds r0, r1, #0
	bl sub_0805D2E0
	cmp r0, #0
	bne _0807D6E6
	bl _0807DFE8
_0807D6E6:
	ldr r0, [r4, #0]
	adds r0, #0xf4
	bl sub_0805AE94
	bl sub_0807C014
	ldr r2, [r4, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #3
	b _0807D47E
_0807D6FC:
	cmp r2, #0xb
	bne _0807D704
	bl _0807DFF0
_0807D704:
	adds r0, r1, #0
	adds r0, #0xf4
	bl sub_0805D2E0
	cmp r0, #0
	bne _0807D714
	bl _0807DFE8
_0807D714:
	ldr r0, _0807D734
	ldr r0, [r0, #0]
	add r1, sp, #4
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r0, r3
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r2, [r4, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #3
	b _0807D4F0
	.2byte 0x0000
_0807D734: .4byte gUnk_030034E0
_0807D738:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807D746
	bl _0807FB38
_0807D746:
	ldr r0, _0807D774
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #2
	bne _0807D754
	bl _0807FB38
_0807D754:
	cmp r0, #3
	beq _0807D75C
	bl _0807FB38
_0807D75C:
	ldr r0, [r1, #0x1c]
	cmp r0, #2
	beq _0807D766
	bl _0807FB38
_0807D766:
	movs r0, #0xc
	str r0, [r1, #0x18]
	str r2, [r1, #4]
	str r3, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807D774: .4byte gUnk_03006440
_0807D778:
	ldr r0, _0807D7A8
	ldrh r1, [r0, #0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807D7B0
	ldr r0, _0807D7AC
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807D792
	bl _0807FB38
_0807D792:
	movs r0, #2
	str r0, [r1, #0x18]
	movs r0, #0
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
_0807D7A8: .4byte gUnk_03001308
_0807D7AC: .4byte gUnk_03006440
_0807D7B0:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0807D7E4
	ldr r0, _0807D7E0
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807D7CA
	bl _0807FB38
_0807D7CA:
	movs r0, #3
	str r0, [r1, #0x18]
	movs r0, #1
	str r0, [r1, #4]
	movs r0, #2
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
_0807D7E0: .4byte gUnk_03006440
_0807D7E4:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0807D808
	ldr r0, _0807D804
	ldr r1, [r0, #0]
	str r2, [r1, #0x18]
	movs r0, #0xa
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807D804: .4byte gUnk_03006440
_0807D808:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0807D83C
	ldr r0, _0807D838
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807D822
	bl _0807FB38
_0807D822:
	movs r0, #9
	str r0, [r1, #0x18]
	str r3, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
	.2byte 0x0000
_0807D838: .4byte gUnk_03006440
_0807D83C:
	ldr r0, _0807D894
	ldrh r1, [r0, #0]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	cmp r2, #0
	bne _0807D84C
	b _0807D9E4
_0807D84C:
	ldr r4, _0807D898
	ldr r1, [r4, #0]
	adds r2, r1, #0
	adds r2, #0x6a
	movs r0, #0x64
	strh r0, [r2, #0]
	ldr r2, [r1, #0x1c]
	cmp r2, #0x16
	bne _0807D8A0
	ldr r0, _0807D89C
	ldr r0, [r0, #0]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrh r0, [r2, #0]
	cmp r0, #0
	bne _0807D870
	b _0807DFF6
_0807D870:
	ldr r0, [r1, #0x18]
	str r0, [r1, #0x1c]
	ldr r0, [r1, #4]
	str r0, [r1, #0x20]
	adds r1, #0xf4
	adds r0, r2, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	adds r0, #0xfd
	movs r1, #0
	strb r1, [r0, #0]
	bl sub_0805D0E8
	b _0807DE2A
	.2byte 0x0000
_0807D894: .4byte gUnk_03001324
_0807D898: .4byte gUnk_03006440
_0807D89C: .4byte gUnk_030034E0
_0807D8A0:
	adds r0, r1, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0807D96C
	cmp r2, #0xb
	beq _0807D8FC
	adds r0, r1, #0
	adds r0, #0xf4
	bl sub_0805D278
	cmp r0, #0
	beq _0807D8F4
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	bl sub_0807BD78
	ldr r2, [r4, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	str r5, [sp, #0x14]
	ldr r1, [r4, #0]
	adds r1, #0xf4
	ldr r2, _0807D8F0
	bl CpuSet
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r5, [r1, #0x20]
	movs r0, #0x5f
	bl sub_0805865C
	b _0807D966
_0807D8F0: .4byte 0x05000004
_0807D8F4:
	movs r0, #0x61
	bl sub_0805865C
	b _0807D966
_0807D8FC:
	adds r1, #0xf4
	ldrh r0, [r1, #0]
	cmp r0, #3
	bne _0807D966
	adds r0, r1, #0
	bl sub_0805D278
	cmp r0, #0
	beq _0807D960
	ldr r0, [r4, #0]
	adds r0, #0xf4
	bl sub_0805AE94
	bl sub_0807C014
	ldr r2, [r4, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #4
	bl sub_0807BEA0
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x20]
	cmp r1, #8
	bls _0807D934
	ldr r0, [r0, #0x1c]
	bl sub_0807BD78
_0807D934:
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x20]
	str r0, [r1, #4]
	ldr r0, [r1, #0x1c]
	str r0, [r1, #0x18]
	add r0, sp, #0x14
	str r5, [sp, #0x14]
	adds r1, #0xf4
	ldr r2, _0807D95C
	bl CpuSet
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r5, [r1, #0x20]
	movs r0, #0x63
	bl sub_0805865C
	b _0807D966
	.2byte 0x0000
_0807D95C: .4byte 0x05000004
_0807D960:
	movs r0, #0x61
	bl sub_0805865C
_0807D966:
	bl sub_0805D0E8
	b _0807DFF6
_0807D96C:
	cmp r2, #0xb
	beq _0807D9D8
	adds r0, r1, #0
	adds r0, #0xf4
	bl sub_0805D278
	cmp r0, #0
	beq _0807D9D0
	ldr r0, _0807D9C8
	ldr r0, [r0, #0]
	add r1, sp, #4
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r0, r2
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r2, [r4, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #4
	bl sub_0807BEA0
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	str r5, [sp, #0x14]
	ldr r1, [r4, #0]
	adds r1, #0xf4
	ldr r2, _0807D9CC
	bl CpuSet
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r5, [r1, #0x20]
	movs r0, #0x5f
	bl sub_0805865C
	b _0807D9DE
	.2byte 0x0000
_0807D9C8: .4byte gUnk_030034E0
_0807D9CC: .4byte 0x05000004
_0807D9D0:
	movs r0, #0x61
	bl sub_0805865C
	b _0807D9DE
_0807D9D8:
	movs r0, #0x61
	bl sub_0805865C
_0807D9DE:
	bl sub_0805D0E8
	b _0807DFF6
_0807D9E4:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807D9F2
	bl _0807FB38
_0807D9F2:
	ldr r0, _0807DA20
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #2
	bne _0807DA00
	bl _0807FB38
_0807DA00:
	cmp r0, #3
	beq _0807DA08
	bl _0807FB38
_0807DA08:
	ldr r0, [r1, #0x1c]
	cmp r0, #4
	beq _0807DA12
	bl _0807FB38
_0807DA12:
	movs r0, #0xc
	str r0, [r1, #0x18]
	str r2, [r1, #4]
	str r3, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807DA20: .4byte gUnk_03006440
_0807DA24:
	ldr r0, _0807DA50
	ldrh r1, [r0, #0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0807DA58
	ldr r0, _0807DA54
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x1c]
	cmp r0, #0x16
	beq _0807DA42
	bl _0807FB38
_0807DA42:
	movs r1, #1
	str r1, [r2, #0x18]
	movs r0, #2
	str r0, [r2, #4]
	str r1, [r2, #8]
	bl _0807FAC4
_0807DA50: .4byte gUnk_03001308
_0807DA54: .4byte gUnk_03006440
_0807DA58:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0807DA8C
	ldr r0, _0807DA88
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807DA72
	bl _0807FB38
_0807DA72:
	movs r0, #6
	str r0, [r1, #0x18]
	str r3, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
	.2byte 0x0000
_0807DA88: .4byte gUnk_03006440
_0807DA8C:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0807DACA
	ldr r0, _0807DAB8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	bne _0807DABC
	movs r0, #9
	str r0, [r1, #0x18]
	str r2, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
	.2byte 0x0000
_0807DAB8: .4byte gUnk_03006440
_0807DABC:
	str r2, [r1, #0x18]
	movs r0, #0xa
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	bl _0807FAC4
_0807DACA:
	ldr r0, _0807DB28
	ldrh r1, [r0, #0]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	cmp r2, #0
	bne _0807DADA
	b _0807DC3C
_0807DADA:
	ldr r5, _0807DB2C
	ldr r2, [r5, #0]
	adds r1, r2, #0
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	ldr r3, [r2, #0x1c]
	cmp r3, #0x16
	bne _0807DB34
	ldr r0, _0807DB30
	ldr r0, [r0, #0]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r3, r0, r1
	ldrh r0, [r3, #0]
	cmp r0, #0
	bne _0807DB00
	bl _0807FB38
_0807DB00:
	ldr r0, [r2, #0x18]
	str r0, [r2, #0x1c]
	ldr r0, [r2, #4]
	str r0, [r2, #0x20]
	adds r1, r2, #0
	adds r1, #0xf4
	adds r0, r3, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [r5, #0]
	adds r0, #0xfd
	movs r1, #0
	strb r1, [r0, #0]
	bl sub_0805D190
	bl _0807F3E0
	.2byte 0x0000
_0807DB28: .4byte gUnk_03001324
_0807DB2C: .4byte gUnk_03006440
_0807DB30: .4byte gUnk_030034E0
_0807DB34:
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0807DBC8
	cmp r3, #0xb
	beq _0807DB60
	ldr r1, [r2, #0x20]
	adds r0, r3, #0
	bl sub_0807BD78
	ldr r2, [r5, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #5
	bl sub_0807BEA0
	add r0, sp, #0x14
	str r4, [sp, #0x14]
	ldr r1, [r5, #0]
	b _0807DB94
_0807DB60:
	adds r0, r2, #0
	adds r0, #0xf4
	bl sub_0805AE94
	bl sub_0807C014
	ldr r2, [r5, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #5
	bl sub_0807BEA0
	ldr r0, [r5, #0]
	ldr r1, [r0, #0x20]
	cmp r1, #8
	bls _0807DB86
	ldr r0, [r0, #0x1c]
	bl sub_0807BD78
_0807DB86:
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x20]
	str r0, [r1, #4]
	ldr r0, [r1, #0x1c]
	str r0, [r1, #0x18]
	add r0, sp, #0x14
	str r4, [sp, #0x14]
_0807DB94:
	adds r1, #0xf4
	ldr r2, _0807DBC0
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	bl sub_080020F4
	ldr r2, _0807DBC4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xc6
	movs r1, #0
	strh r1, [r0, #0]
	bl sub_0805D190
	bl _0807F774
_0807DBC0: .4byte 0x05000004
_0807DBC4: .4byte gUnk_03003CE0
_0807DBC8:
	cmp r3, #0xb
	bne _0807DBD0
	bl _0807F724
_0807DBD0:
	ldr r0, _0807DC30
	ldr r0, [r0, #0]
	add r1, sp, #4
	movs r6, #0x98
	lsls r6, r6, #1
	adds r0, r0, r6
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #5
	bl sub_0807BEA0
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	str r4, [sp, #0x14]
	ldr r1, [r5, #0]
	adds r1, #0xf4
	ldr r2, _0807DC34
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	movs r0, #0x5f
	bl sub_0805865C
	bl sub_0805D190
	bl sub_080020F4
	ldr r2, _0807DC38
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xc6
	strh r4, [r0, #0]
	bl _0807FB38
_0807DC30: .4byte gUnk_030034E0
_0807DC34: .4byte 0x05000004
_0807DC38: .4byte gUnk_03003CE0
_0807DC3C:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807DC4A
	bl _0807FB38
_0807DC4A:
	ldr r0, _0807DC78
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #2
	bne _0807DC58
	bl _0807FB38
_0807DC58:
	cmp r0, #3
	beq _0807DC60
	bl _0807FB38
_0807DC60:
	ldr r0, [r1, #0x1c]
	cmp r0, #5
	beq _0807DC6A
	bl _0807FB38
_0807DC6A:
	movs r0, #0xc
	str r0, [r1, #0x18]
	str r2, [r1, #4]
	str r3, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807DC78: .4byte gUnk_03006440
_0807DC7C:
	ldr r0, _0807DCB0
	ldrh r1, [r0, #0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0807DCB8
	ldr r0, _0807DCB4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807DC9A
	bl _0807FB38
_0807DC9A:
	movs r0, #5
	str r0, [r1, #0x18]
	movs r0, #0
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
_0807DCB0: .4byte gUnk_03001308
_0807DCB4: .4byte gUnk_03006440
_0807DCB8:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0807DCEC
	ldr r0, _0807DCE8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807DCD2
	bl _0807FB38
_0807DCD2:
	movs r0, #7
	str r0, [r1, #0x18]
	str r3, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
	.2byte 0x0000
_0807DCE8: .4byte gUnk_03006440
_0807DCEC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807DD22
	ldr r0, _0807DD10
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	bne _0807DD14
	movs r0, #3
	str r0, [r1, #0x18]
	str r2, [r1, #4]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
	.2byte 0x0000
_0807DD10: .4byte gUnk_03006440
_0807DD14:
	str r2, [r1, #0x18]
	movs r0, #0x14
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	bl _0807FAC4
_0807DD22:
	ldr r0, _0807DDA4
	ldrh r1, [r0, #0]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	cmp r2, #0
	bne _0807DD32
	b _0807E018
_0807DD32:
	ldr r7, _0807DDA8
	ldr r1, [r7, #0]
	adds r2, r1, #0
	adds r2, #0x6a
	movs r0, #0x64
	strh r0, [r2, #0]
	ldr r2, [r1, #0x1c]
	cmp r2, #0x16
	bne _0807DE3C
	ldr r7, _0807DDAC
	ldr r0, [r7, #0]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0807DD56
	b _0807DFF6
_0807DD56:
	movs r6, #0
	ldr r5, _0807DDB0
	bl sub_080020F4
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x77
	ldrb r0, [r0, #0]
	cmp r0, #3
	bls _0807DDB4
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x77
	ldrb r2, [r0, #0]
	movs r5, #3
	cmp r5, r2
	bhs _0807DDFA
	ldr r0, [r7, #0]
	adds r0, #0xa0
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0807DD8C
	b _0807DFE8
_0807DD8C:
	adds r5, #1
	cmp r5, r2
	bhs _0807DDFA
	ldr r0, _0807DDAC
	ldr r0, [r0, #0]
	lsls r1, r5, #4
	adds r0, r0, r1
	adds r0, #0x70
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0807DD8C
	b _0807DDF8
_0807DDA4: .4byte gUnk_03001324
_0807DDA8: .4byte gUnk_03006440
_0807DDAC: .4byte gUnk_030034E0
_0807DDB0: .4byte gUnk_03003CE0
_0807DDB4:
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x78
	ldrb r0, [r0, #0]
	cmp r0, #3
	bls _0807DDFA
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x78
	ldrb r2, [r0, #0]
	movs r5, #3
	cmp r5, r2
	bhs _0807DDFA
	ldr r0, [r7, #0]
	adds r0, #0x5c
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0807DDE2
	b _0807DFE8
_0807DDE2:
	adds r5, #1
	cmp r5, r2
	bhs _0807DDFA
	ldr r0, _0807DE34
	ldr r0, [r0, #0]
	lsls r1, r5, #1
	adds r0, #0x56
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0807DDE2
_0807DDF8:
	adds r6, #1
_0807DDFA:
	cmp r6, #0
	beq _0807DE00
	b _0807DFE8
_0807DE00:
	ldr r2, _0807DE38
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x18]
	str r0, [r1, #0x1c]
	ldr r0, [r1, #4]
	str r0, [r1, #0x20]
	ldr r0, _0807DE34
	ldr r0, [r0, #0]
	adds r1, #0xf4
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r0, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [r2, #0]
	adds r0, #0xfd
	strb r6, [r0, #0]
	bl sub_0805D1E0
_0807DE2A:
	movs r0, #0x5e
	bl sub_0805865C
	b _0807DFF6
	.2byte 0x0000
_0807DE34: .4byte gUnk_030034E0
_0807DE38: .4byte gUnk_03006440
_0807DE3C:
	adds r0, r1, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r4, [r0, #0]
	cmp r4, #0
	bne _0807DEE4
	cmp r2, #0xb
	beq _0807DE88
	ldr r1, [r1, #0x20]
	adds r0, r2, #0
	bl sub_0807BD78
	ldr r0, _0807DE80
	ldr r2, [r0, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #6
	bl sub_0807BEA0
	add r0, sp, #0x14
	str r4, [sp, #0x14]
	ldr r2, _0807DE80
	ldr r1, [r2, #0]
	adds r1, #0xf4
	ldr r2, _0807DE84
	bl CpuSet
	ldr r3, _0807DE80
	ldr r1, [r3, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	b _0807DFCE
	.2byte 0x0000
_0807DE80: .4byte gUnk_03006440
_0807DE84: .4byte 0x05000004
_0807DE88:
	adds r1, #0xf4
	ldrh r0, [r1, #0]
	cmp r0, #6
	beq _0807DE92
	b _0807DFF6
_0807DE92:
	adds r0, r1, #0
	bl sub_0805AE94
	bl sub_0807C014
	ldr r5, _0807DEDC
	ldr r2, [r5, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #6
	bl sub_0807BEA0
	ldr r0, [r5, #0]
	ldr r1, [r0, #0x20]
	cmp r1, #8
	bls _0807DEB8
	ldr r0, [r0, #0x1c]
	bl sub_0807BD78
_0807DEB8:
	ldr r6, _0807DEDC
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x20]
	str r0, [r1, #4]
	ldr r0, [r1, #0x1c]
	str r0, [r1, #0x18]
	add r0, sp, #0x14
	str r4, [sp, #0x14]
	adds r1, #0xf4
	ldr r2, _0807DEE0
	bl CpuSet
	ldr r1, [r6, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	movs r0, #0x63
	b _0807DFD0
_0807DEDC: .4byte gUnk_03006440
_0807DEE0: .4byte 0x05000004
_0807DEE4:
	cmp r2, #0xb
	bne _0807DEEA
	b _0807DFF0
_0807DEEA:
	movs r7, #0
	ldr r5, _0807DF38
	bl sub_080020F4
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x77
	ldrb r0, [r0, #0]
	cmp r0, #3
	bls _0807DF40
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x77
	ldrb r6, [r0, #0]
	movs r5, #3
	cmp r5, r6
	bhs _0807DF86
	ldr r0, _0807DF3C
	ldr r1, [r0, #0]
	adds r1, #0xa0
	ldrh r1, [r1, #0]
	cmp r1, #2
	beq _0807DFE8
_0807DF20:
	adds r5, #1
	cmp r5, r6
	bhs _0807DF86
	ldr r1, _0807DF3C
	ldr r0, [r1, #0]
	lsls r1, r5, #4
	adds r0, r0, r1
	adds r0, #0x70
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0807DF20
	b _0807DF84
_0807DF38: .4byte gUnk_03003CE0
_0807DF3C: .4byte gUnk_030034E0
_0807DF40:
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x78
	ldrb r0, [r0, #0]
	cmp r0, #3
	bls _0807DF86
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x78
	ldrb r6, [r0, #0]
	movs r5, #3
	cmp r5, r6
	bhs _0807DF86
	ldr r0, _0807DFDC
	ldr r1, [r0, #0]
	adds r1, #0x5c
	ldrh r1, [r1, #0]
	cmp r1, #0
	bne _0807DFE8
_0807DF6E:
	adds r5, #1
	cmp r5, r6
	bhs _0807DF86
	ldr r2, _0807DFDC
	ldr r0, [r2, #0]
	lsls r1, r5, #1
	adds r0, #0x56
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0807DF6E
_0807DF84:
	adds r7, #1
_0807DF86:
	cmp r7, #0
	bne _0807DFE8
	ldr r0, _0807DFDC
	ldr r0, [r0, #0]
	add r1, sp, #4
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r0, r3
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r4, _0807DFE0
	ldr r2, [r4, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #6
	bl sub_0807BEA0
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	str r7, [sp, #0x14]
	ldr r1, [r4, #0]
	adds r1, #0xf4
	ldr r2, _0807DFE4
	bl CpuSet
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r7, [r1, #0x20]
_0807DFCE:
	movs r0, #0x5f
_0807DFD0:
	bl sub_0805865C
	bl sub_0805D1E0
	b _0807DFF6
	.2byte 0x0000
_0807DFDC: .4byte gUnk_030034E0
_0807DFE0: .4byte gUnk_03006440
_0807DFE4: .4byte 0x05000004
_0807DFE8:
	movs r0, #0x61
	bl sub_0805865C
	b _0807DFF6
_0807DFF0:
	movs r0, #0x61
	bl sub_0805865C
_0807DFF6:
	ldr r0, _0807E014
	ldr r0, [r0, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	bl sub_0805AD78
	bl sub_0805D094
	bl sub_0805D0E8
	bl sub_0805D13C
	bl _0807FB38
	.2byte 0x0000
_0807E014: .4byte gUnk_030034E0
_0807E018:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807E026
	bl _0807FB38
_0807E026:
	ldr r0, _0807E054
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #2
	bne _0807E034
	bl _0807FB38
_0807E034:
	cmp r0, #3
	beq _0807E03C
	bl _0807FB38
_0807E03C:
	ldr r0, [r1, #0x1c]
	cmp r0, #6
	beq _0807E046
	bl _0807FB38
_0807E046:
	movs r0, #0xc
	str r0, [r1, #0x18]
	str r2, [r1, #4]
	str r3, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807E054: .4byte gUnk_03006440
_0807E058:
	ldr r0, _0807E080
	ldrh r1, [r0, #0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807E088
	ldr r0, _0807E084
	ldr r2, [r0, #0]
	ldr r1, [r2, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bls _0807E076
	bl _0807FB38
_0807E076:
	str r1, [r2, #8]
	adds r0, r1, #1
	str r0, [r2, #4]
	bl _0807FAC4
_0807E080: .4byte gUnk_03001308
_0807E084: .4byte gUnk_03006440
_0807E088:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0807E0B4
	ldr r0, _0807E0B0
	ldr r2, [r0, #0]
	ldr r1, [r2, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807E0A6
	bl _0807FB38
_0807E0A6:
	str r1, [r2, #8]
	subs r0, r1, #1
	str r0, [r2, #4]
	bl _0807FAC4
_0807E0B0: .4byte gUnk_03006440
_0807E0B4:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807E19C
	ldr r0, _0807E0D0
	ldr r1, [r0, #0]
	ldr r2, [r1, #4]
	cmp r2, #3
	bls _0807E0D4
	str r2, [r1, #8]
	subs r0, r2, #4
	str r0, [r1, #4]
	bl _0807FAC4
_0807E0D0: .4byte gUnk_03006440
_0807E0D4:
	cmp r2, #1
	beq _0807E106
	cmp r2, #1
	blo _0807E0E8
	cmp r2, #2
	beq _0807E118
	cmp r2, #3
	beq _0807E12C
	bl _0807FB38
_0807E0E8:
	ldr r0, [r1, #0]
	cmp r0, #5
	bne _0807E0F2
	bl _0807FB38
_0807E0F2:
	movs r0, #6
	str r0, [r1, #0x18]
	str r3, [r1, #4]
	movs r0, #2
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
_0807E106:
	str r3, [r1, #0x18]
	movs r0, #0x14
	str r0, [r1, #4]
	str r2, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
_0807E118:
	str r3, [r1, #0x18]
	movs r0, #0x18
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
_0807E12C:
	ldr r2, [r1, #0]
	cmp r2, #3
	beq _0807E15E
	cmp r2, #3
	bhi _0807E13E
	cmp r2, #2
	beq _0807E14A
	bl _0807FB38
_0807E13E:
	cmp r2, #4
	beq _0807E188
	cmp r2, #5
	beq _0807E172
	bl _0807FB38
_0807E14A:
	movs r0, #8
	str r0, [r1, #0x18]
	str r2, [r1, #4]
	movs r0, #0
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
_0807E15E:
	movs r0, #0xb
	str r0, [r1, #0x18]
	movs r0, #0xa
	str r0, [r1, #4]
	str r3, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
_0807E172:
	ldr r1, [r0, #0]
	movs r2, #0
	str r2, [r1, #0x18]
	movs r0, #0x18
	str r0, [r1, #4]
	str r2, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
_0807E188:
	movs r0, #0xd
	str r0, [r1, #0x18]
	str r0, [r1, #4]
	movs r0, #0
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
_0807E19C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807E1A8
	bl _0807FB38
_0807E1A8:
	ldr r0, _0807E1C0
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #7
	bls _0807E1B6
	bl _0807FB38
_0807E1B6:
	str r0, [r1, #8]
	adds r0, #4
	str r0, [r1, #4]
	bl _0807FAC4
_0807E1C0: .4byte gUnk_03006440
_0807E1C4:
	ldr r4, _0807E1F4
	ldr r0, [r4, #0]
	adds r0, #0x54
	ldrh r0, [r0, #0]
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r7, #0xc0
	lsls r7, r7, #0xa
	adds r1, r1, r7
	lsrs r5, r1, #0x10
	ldr r0, _0807E1F8
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r3, r0
	blo _0807E1FC
	str r3, [r1, #4]
	b _0807E204
_0807E1F4: .4byte gUnk_030034E0
_0807E1F8: .4byte gUnk_03006440
_0807E1FC:
	cmp r5, r0
	bhi _0807E204
	subs r0, r5, #1
	str r0, [r1, #4]
_0807E204:
	ldr r0, _0807E22C
	ldrh r2, [r0, #0]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0807E23C
	ldr r0, _0807E230
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, r3
	bne _0807E234
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #4
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807E22C: .4byte gUnk_03001308
_0807E230: .4byte gUnk_03006440
_0807E234:
	subs r0, #1
	str r0, [r1, #4]
	bl _0807FAC4
_0807E23C:
	movs r0, #0x10
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0807E264
	ldr r0, _0807E260
	ldr r3, [r0, #0]
	subs r0, r5, #1
	ldr r2, [r3, #4]
	cmp r2, r0
	blo _0807E258
	bl _0807FB38
_0807E258:
	adds r0, r2, #1
	str r0, [r3, #4]
	bl _0807FAC4
_0807E260: .4byte gUnk_03006440
_0807E264:
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0807E288
	ldr r0, _0807E284
	ldr r1, [r0, #0]
	movs r0, #0xa
	str r0, [r1, #0x18]
	str r3, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807E284: .4byte gUnk_03006440
_0807E288:
	ldr r0, _0807E2C0
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807E298
	bl _0807FB38
_0807E298:
	ldr r7, _0807E2C4
	ldr r5, [r7, #0]
	ldr r6, [r5, #0x1c]
	cmp r6, #0x16
	bne _0807E2CC
	ldr r1, _0807E2C8
	ldr r0, [r1, #0]
	ldr r1, [r5, #4]
	lsls r1, r1, #1
	adds r0, #0x56
	adds r1, r0, r1
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _0807E2B8
	bl _0807FB38
_0807E2B8:
	strh r2, [r1, #0]
	bl _0807F724
	.2byte 0x0000
_0807E2C0: .4byte gUnk_03001324
_0807E2C4: .4byte gUnk_03006440
_0807E2C8: .4byte gUnk_030034E0
_0807E2CC:
	cmp r6, #0
	beq _0807E2D4
	bl _0807FB38
_0807E2D4:
	ldr r2, _0807E304
	ldr r1, [r2, #0]
	ldr r0, [r5, #4]
	lsls r0, r0, #1
	adds r1, #0x56
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0xf6
	ldrh r0, [r0, #0]
	adds r0, #1
	strh r0, [r1, #0]
	add r0, sp, #0x14
	str r6, [sp, #0x14]
	adds r1, r5, #0
	adds r1, #0xf4
	ldr r2, _0807E308
	bl CpuSet
	ldr r1, [r7, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r6, [r1, #0x20]
	bl _0807F774
_0807E304: .4byte gUnk_030034E0
_0807E308: .4byte 0x05000004
_0807E30C:
	ldr r0, _0807E33C
	ldrh r1, [r0, #0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807E344
	ldr r0, _0807E340
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807E326
	bl _0807FB38
_0807E326:
	movs r0, #1
	str r0, [r1, #0x18]
	str r0, [r1, #4]
	movs r0, #2
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
	.2byte 0x0000
_0807E33C: .4byte gUnk_03001308
_0807E340: .4byte gUnk_03006440
_0807E344:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0807E378
	ldr r0, _0807E374
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807E35E
	bl _0807FB38
_0807E35E:
	movs r0, #6
	str r0, [r1, #0x18]
	movs r0, #1
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
	.2byte 0x0000
_0807E374: .4byte gUnk_03006440
_0807E378:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0807E3B6
	ldr r0, _0807E3A4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	bne _0807E3A8
	movs r0, #4
	str r0, [r1, #0x18]
	str r2, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
	.2byte 0x0000
_0807E3A4: .4byte gUnk_03006440
_0807E3A8:
	str r2, [r1, #0x18]
	movs r0, #0xa
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	bl _0807FAC4
_0807E3B6:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807E3E4
	ldr r0, _0807E3E0
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807E3CC
	bl _0807FB38
_0807E3CC:
	movs r0, #5
	str r0, [r1, #0x18]
	str r3, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	bl _0807FAC4
_0807E3E0: .4byte gUnk_03006440
_0807E3E4:
	ldr r0, _0807E420
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807E3F4
	bl _0807FB38
_0807E3F4:
	ldr r0, _0807E424
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x1c]
	cmp r0, #0x16
	bne _0807E402
	bl _0807FB38
_0807E402:
	bl sub_0801DE60
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807E42C
	ldr r0, _0807E428
	ldr r0, [r0, #0]
	adds r0, #0x30
	movs r1, #5
	bl sub_0801E0AC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _0807E42E
	.2byte 0x0000
_0807E420: .4byte gUnk_03001324
_0807E424: .4byte gUnk_03006440
_0807E428: .4byte gUnk_030034E0
_0807E42C:
	movs r1, #0
_0807E42E:
	ldr r4, _0807E478
	ldr r0, [r4, #0]
	adds r0, #0xf4
	bl sub_0805BD5C
	cmp r0, #0
	bne _0807E440
	bl _0807FB38
_0807E440:
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0xf4
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _0807E450
	bl _0807FB38
_0807E450:
	adds r0, r1, #0
	adds r0, #0xf6
	ldrh r0, [r0, #0]
	cmp r0, #6
	bne _0807E45E
	movs r0, #0
	str r0, [r1, #0x24]
_0807E45E:
	ldr r0, [r4, #0]
	ldr r2, [r0, #0x1c]
	cmp r2, #0xb
	beq _0807E47C
	ldr r1, [r0, #0x20]
	adds r0, r2, #0
	bl sub_0807BD78
	movs r0, #0x5f
	bl sub_0805865C
	b _0807E48C
	.2byte 0x0000
_0807E478: .4byte gUnk_03006440
_0807E47C:
	adds r0, #0xf4
	bl sub_0805AE94
	bl sub_0807C014
	movs r0, #0x63
	bl sub_0805865C
_0807E48C:
	add r0, sp, #0x14
	movs r5, #0
	str r5, [sp, #0x14]
	ldr r4, _0807E4AC
	ldr r1, [r4, #0]
	adds r1, #0xf4
	ldr r2, _0807E4B0
	bl CpuSet
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r5, [r1, #0x20]
	bl _0807FB38
	.2byte 0x0000
_0807E4AC: .4byte gUnk_03006440
_0807E4B0: .4byte 0x05000004
_0807E4B4:
	ldr r0, _0807E4DC
	ldrh r1, [r0, #0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807E524
	ldr r5, _0807E4E0
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	bne _0807E4E4
	movs r0, #8
	str r0, [r1, #0x18]
	movs r0, #0
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807E4DC: .4byte gUnk_03001308
_0807E4E0: .4byte gUnk_03006440
_0807E4E4:
	adds r0, r1, #0
	adds r0, #0xf4
	ldrh r4, [r0, #0]
	cmp r4, #0xa
	bne _0807E4F2
	bl _0807FB38
_0807E4F2:
	cmp r4, #1
	beq _0807E4FA
	bl _0807FB38
_0807E4FA:
	adds r0, #2
	ldrh r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r0, #0xa4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0807E514
	bl _0807FB38
_0807E514:
	ldr r0, [r5, #0]
	movs r1, #8
	str r1, [r0, #0x18]
	movs r1, #0
	str r1, [r0, #4]
	str r4, [r0, #8]
	bl _0807FAC4
_0807E524:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0807E554
	ldr r0, _0807E550
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807E53E
	bl _0807FB38
_0807E53E:
	movs r0, #7
	str r0, [r1, #0x18]
	movs r0, #3
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807E550: .4byte gUnk_03006440
_0807E554:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807E574
	ldr r0, _0807E570
	ldr r1, [r0, #0]
	str r2, [r1, #0x18]
	movs r0, #0x18
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807E570: .4byte gUnk_03006440
_0807E574:
	ldr r0, _0807E638
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807E584
	bl _0807FB38
_0807E584:
	ldr r6, _0807E63C
	ldr r0, [r6, #0]
	adds r2, r0, #0
	adds r2, #0x6a
	movs r1, #0x64
	strh r1, [r2, #0]
	ldr r0, [r0, #0x1c]
	cmp r0, #0x16
	bne _0807E59A
	bl _0807FB38
_0807E59A:
	ldr r4, _0807E640
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	movs r3, #0x8c
	adds r3, r3, r4
	mov r8, r3
	add r0, r8
	ldr r0, [r0, #0]
	str r0, [sp, #0x28]
	bl sub_080020F4
	muls r0, r5, r0
	adds r7, r4, #0
	adds r7, #0x90
	adds r0, r0, r7
	ldr r0, [r0, #0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x28
	add r1, sp, #0x2c
	bl sub_0805B4CC
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _0807E5D4
	bl _0807F724
_0807E5D4:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _0807E5DE
	bl _0807F724
_0807E5DE:
	bl sub_080020F4
	muls r0, r5, r0
	add r0, r8
	ldr r4, [r0, #0]
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r7
	ldr r1, [r0, #0]
	ldr r2, [r6, #0]
	adds r2, #0xf4
	adds r0, r4, #0
	bl sub_08066490
	ldr r4, [r6, #0]
	adds r0, r4, #0
	adds r0, #0xf4
	ldrh r0, [r0, #0]
	cmp r0, #0xa
	bne _0807E648
	ldr r0, _0807E644
	ldr r3, [r0, #0]
	ldr r2, [r4, #0x20]
	lsls r2, r2, #4
	adds r5, #8
	adds r3, r3, r5
	adds r2, r3, r2
	adds r1, r4, #0
	adds r1, #0xf8
	ldr r0, [r2, #0]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	str r0, [r2, #0]
	ldr r1, [r4, #0x20]
	lsls r0, r1, #4
	adds r3, r3, r0
	ldr r0, [r3, #0]
	cmp r0, #0
	bne _0807E650
	ldr r0, [r4, #0x1c]
	bl sub_0807BD78
	b _0807E650
	.2byte 0x0000
_0807E638: .4byte gUnk_03001324
_0807E63C: .4byte gUnk_03006440
_0807E640: .4byte gUnk_03003CE0
_0807E644: .4byte gUnk_030034E0
_0807E648:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	bl sub_0807BD78
_0807E650:
	add r0, sp, #0x14
	movs r5, #0
	str r5, [sp, #0x14]
	ldr r4, _0807E67C
	ldr r1, [r4, #0]
	adds r1, #0xf4
	ldr r2, _0807E680
	bl CpuSet
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r5, [r1, #0x20]
	movs r0, #0x60
	bl sub_0805865C
	ldr r1, [r4, #0]
	str r5, [r1, #0x70]
	movs r0, #0x15
	str r0, [r1, #0x18]
	bl _0807FB38
_0807E67C: .4byte gUnk_03006440
_0807E680: .4byte 0x05000004
_0807E684:
	ldr r0, _0807E6A8
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x70]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r2, #0x70]
	cmp r1, #0x28
	bhi _0807E698
	bl _0807FB38
_0807E698:
	movs r0, #0xa
	str r0, [r2, #0x18]
	movs r0, #0
	str r0, [r2, #4]
	movs r0, #1
	str r0, [r2, #8]
	bl _0807FB38
_0807E6A8: .4byte gUnk_03006440
_0807E6AC:
	ldr r0, _0807E6D8
	ldrh r1, [r0, #0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807E6E0
	ldr r0, _0807E6DC
	ldr r5, [r0, #0]
	ldr r4, [r5, #4]
	adds r0, r4, #0
	movs r1, #3
	bl __umodsi3
	cmp r0, #1
	bls _0807E6CE
	bl _0807FB38
_0807E6CE:
	adds r0, r4, #1
	str r0, [r5, #4]
	bl _0807FAC4
	.2byte 0x0000
_0807E6D8: .4byte gUnk_03001308
_0807E6DC: .4byte gUnk_03006440
_0807E6E0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807E71E
	ldr r0, _0807E704
	ldr r5, [r0, #0]
	ldr r4, [r5, #4]
	adds r0, r4, #0
	movs r1, #3
	bl __umodsi3
	adds r6, r0, #0
	cmp r6, #0
	beq _0807E708
	subs r0, r4, #1
	str r0, [r5, #4]
	bl _0807FAC4
_0807E704: .4byte gUnk_03006440
_0807E708:
	adds r0, r4, #0
	movs r1, #3
	bl __udivsi3
	lsls r1, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #4]
	str r6, [r5, #0x18]
	bl _0807FAC4
_0807E71E:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807E740
	ldr r0, _0807E73C
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #2
	bhi _0807E734
	bl _0807FB38
_0807E734:
	subs r0, #3
	str r0, [r1, #4]
	bl _0807FAC4
_0807E73C: .4byte gUnk_03006440
_0807E740:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _0807E768
	ldr r0, _0807E764
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #8
	bls _0807E75A
	bl _0807FB38
_0807E75A:
	adds r0, #3
	str r0, [r1, #4]
	bl _0807FAC4
	.2byte 0x0000
_0807E764: .4byte gUnk_03006440
_0807E768:
	ldr r0, _0807E7D4
	ldrh r1, [r0, #0]
	movs r5, #1
	ands r5, r1
	cmp r5, #0
	beq _0807E7DC
	ldr r5, _0807E7D8
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	beq _0807E782
	bl _0807FB38
_0807E782:
	ldr r0, [r1, #4]
	lsls r2, r0, #4
	adds r0, r1, r2
	movs r6, #0x82
	lsls r6, r6, #1
	adds r0, r0, r6
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0807E798
	bl _0807FB38
_0807E798:
	adds r0, r2, r6
	adds r0, r1, r0
	bl sub_0805AE94
	adds r4, r0, #0
	bl sub_0805B0F0
	cmp r4, r0
	bls _0807E7AE
	bl _0807F724
_0807E7AE:
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x18]
	str r0, [r1, #0x1c]
	ldr r0, [r1, #4]
	str r0, [r1, #0x20]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, #0xf4
	adds r0, r0, r6
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [r5, #0]
	adds r0, #0xfd
	strb r7, [r0, #0]
	bl _0807F3E0
	.2byte 0x0000
_0807E7D4: .4byte gUnk_03001324
_0807E7D8: .4byte gUnk_03006440
_0807E7DC:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807E7EA
	bl _0807FB38
_0807E7EA:
	ldr r4, _0807E818
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	bne _0807E7F8
	bl _0807FB38
_0807E7F8:
	str r5, [r1, #0x18]
	bl sub_0805CFA0
	ldr r2, [r4, #0]
	str r0, [r2, #4]
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	bne _0807E80C
	str r5, [r2, #4]
_0807E80C:
	ldr r1, [r4, #0]
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #8]
	bl _0807FAC4
_0807E818: .4byte gUnk_03006440
_0807E81C:
	ldr r0, _0807E838
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807E840
	ldr r0, _0807E83C
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #0x18
	str r0, [r1, #4]
	bl _0807FAC4
_0807E838: .4byte gUnk_03001308
_0807E83C: .4byte gUnk_03006440
_0807E840:
	ldr r0, _0807E884
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807E850
	bl _0807FB38
_0807E850:
	ldr r0, _0807E888
	ldr r1, [r0, #0]
	adds r2, r1, #0
	adds r2, #0x6a
	movs r0, #0x64
	strh r0, [r2, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	bne _0807E866
	bl _0807FB38
_0807E866:
	adds r0, r1, #0
	adds r0, #0xf4
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0807E874
	bl _0807FB38
_0807E874:
	cmp r0, #0xa
	bne _0807E87C
	bl _0807FB38
_0807E87C:
	bl sub_0807C114
	bl _0807FB38
_0807E884: .4byte gUnk_03001324
_0807E888: .4byte gUnk_03006440
_0807E88C:
	ldr r0, _0807E8B4
	ldrh r1, [r0, #0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807E8E8
	ldr r0, _0807E8B8
	ldr r4, [r0, #0]
	ldr r5, [r4, #4]
	adds r0, r5, #0
	movs r1, #3
	bl __umodsi3
	cmp r0, #1
	bhi _0807E8BC
	str r5, [r4, #8]
	adds r0, r5, #1
	str r0, [r4, #4]
	bl _0807FAC4
_0807E8B4: .4byte gUnk_03001308
_0807E8B8: .4byte gUnk_03006440
_0807E8BC:
	ldr r0, [r4, #0x1c]
	cmp r0, #0x16
	beq _0807E8C6
	bl _0807FB38
_0807E8C6:
	movs r0, #5
	str r0, [r4, #8]
	adds r0, r5, #0
	movs r1, #3
	bl __udivsi3
	str r0, [r4, #4]
	movs r1, #0xe
	str r1, [r4, #0x18]
	ldr r1, [r4, #0x48]
	cmp r0, r1
	bhi _0807E8E2
	bl _0807FB38
_0807E8E2:
	str r1, [r4, #4]
	bl _0807FB38
_0807E8E8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807E92C
	ldr r0, _0807E910
	ldr r5, [r0, #0]
	ldr r4, [r5, #4]
	adds r0, r4, #0
	movs r1, #3
	bl __umodsi3
	adds r6, r0, #0
	cmp r6, #0
	beq _0807E914
	str r4, [r5, #8]
	subs r0, r4, #1
	str r0, [r5, #4]
	bl _0807FAC4
	.2byte 0x0000
_0807E910: .4byte gUnk_03006440
_0807E914:
	str r4, [r5, #8]
	adds r0, r4, #0
	movs r1, #3
	bl __udivsi3
	lsls r1, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #4]
	str r6, [r5, #0x18]
	bl _0807FAC4
_0807E92C:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807E950
	ldr r0, _0807E94C
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #2
	bhi _0807E942
	bl _0807FB38
_0807E942:
	str r0, [r1, #8]
	subs r0, #3
	str r0, [r1, #4]
	bl _0807FAC4
_0807E94C: .4byte gUnk_03006440
_0807E950:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807E992
	ldr r0, _0807E974
	ldr r4, [r0, #0]
	ldr r5, [r4, #4]
	adds r0, r5, #0
	movs r1, #0xf
	bl __umodsi3
	cmp r0, #0xb
	bhi _0807E978
	str r5, [r4, #8]
	adds r0, r5, #3
	str r0, [r4, #4]
	bl _0807FAC4
_0807E974: .4byte gUnk_03006440
_0807E978:
	ldr r0, [r4, #0x1c]
	cmp r0, #0x16
	beq _0807E982
	bl _0807FB38
_0807E982:
	movs r0, #0x14
	str r0, [r4, #8]
	movs r0, #7
	str r0, [r4, #0x18]
	movs r0, #3
	str r0, [r4, #4]
	bl _0807FAC4
_0807E992:
	ldr r0, _0807E9F0
	ldrh r1, [r0, #0]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	cmp r2, #0
	bne _0807E9A2
	b _0807F0A8
_0807E9A2:
	ldr r5, _0807E9F4
	ldr r4, [r5, #0]
	adds r1, r4, #0
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	ldr r6, [r4, #0x1c]
	cmp r6, #0x16
	bne _0807EA5C
	ldr r1, [r4, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [r4, #4]
	adds r1, r1, r0
	lsls r0, r1, #4
	adds r0, r4, r0
	movs r6, #0x82
	lsls r6, r6, #1
	adds r3, r0, r6
	ldrh r2, [r3, #0]
	cmp r2, #0
	bne _0807E9D2
	bl _0807FB38
_0807E9D2:
	cmp r2, #0xa
	beq _0807E9F8
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0xf4
	adds r0, r3, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	bl _0807F3E0
	.2byte 0x0000
_0807E9F0: .4byte gUnk_03001324
_0807E9F4: .4byte gUnk_03006440
_0807E9F8:
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0xf4
	strh r2, [r0, #0]
	adds r2, r4, #0
	adds r2, #0xf8
	ldr r0, [r4, #0x20]
	lsls r0, r0, #4
	movs r5, #0x84
	lsls r5, r5, #1
	adds r1, r4, r5
	adds r0, r1, r0
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	movs r0, #0x14
	str r0, [r4, #0x18]
	movs r6, #0
	str r6, [r4, #0xc]
	ldr r0, [r4, #0x20]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r1, [r1, #0]
	movs r3, #6
	movs r2, #4
	ldr r4, _0807EA54
	ldr r0, [r4, #0x10]
	cmp r0, r1
	bls _0807EA46
	adds r4, #0x10
_0807EA36:
	adds r4, #4
	adds r2, #1
	subs r3, #1
	cmp r2, #9
	bhi _0807EA46
	ldr r0, [r4, #0]
	cmp r0, r1
	bhi _0807EA36
_0807EA46:
	ldr r0, _0807EA58
	ldr r1, [r0, #0]
	str r3, [r1, #0x14]
	subs r0, r3, #1
	str r0, [r1, #0x10]
	bl _0807F3E0
_0807EA54: .4byte gUnk_084EBD4C
_0807EA58: .4byte gUnk_03006440
_0807EA5C:
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0]
	cmp r1, #0
	bne _0807EB48
	adds r0, r4, #0
	adds r0, #0xf4
	ldrh r0, [r0, #0]
	cmp r0, #0xa
	beq _0807EAB8
	ldr r1, [r4, #0x20]
	adds r0, r6, #0
	bl sub_0807BD78
	ldr r7, _0807EAB0
	ldr r2, [r7, #0]
	ldr r1, [r2, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [r2, #4]
	adds r1, r1, r0
	adds r2, #0xf4
	movs r0, #0xd
	bl sub_0807BEA0
	add r0, sp, #0x14
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r1, [r7, #0]
	adds r1, #0xf4
	ldr r2, _0807EAB4
	bl CpuSet
	ldr r1, [r7, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	movs r2, #0
	str r2, [r1, #0x20]
	bl _0807F774
	.2byte 0x0000
_0807EAB0: .4byte gUnk_03006440
_0807EAB4: .4byte 0x05000004
_0807EAB8:
	cmp r6, #0
	beq _0807EAC2
	cmp r6, #0xd
	beq _0807EAFC
	b _0807EB2C
_0807EAC2:
	ldr r0, _0807EAF8
	ldr r5, [r0, #0]
	ldr r2, [r4, #0x20]
	lsls r2, r2, #4
	movs r7, #0xaa
	lsls r7, r7, #1
	adds r3, r5, r7
	adds r2, r3, r2
	adds r1, r4, #0
	adds r1, #0xf8
	ldr r0, [r2, #0]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	str r0, [r2, #0]
	ldr r0, [r4, #0x20]
	lsls r1, r0, #4
	adds r3, r3, r1
	ldr r0, [r3, #0]
	cmp r0, #0
	bne _0807EB2C
	adds r0, r5, r1
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r6, [r0, #0]
	b _0807EB2C
	.2byte 0x0000
_0807EAF8: .4byte gUnk_030034E0
_0807EAFC:
	ldr r2, [r4, #0x20]
	lsls r2, r2, #4
	movs r5, #0x84
	lsls r5, r5, #1
	adds r3, r4, r5
	adds r2, r3, r2
	adds r1, r4, #0
	adds r1, #0xf8
	ldr r0, [r2, #0]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	str r0, [r2, #0]
	ldr r0, [r4, #0x20]
	lsls r1, r0, #4
	adds r3, r3, r1
	ldr r0, [r3, #0]
	cmp r0, #0
	bne _0807EB2C
	adds r0, r4, r1
	movs r6, #0x82
	lsls r6, r6, #1
	adds r0, r0, r6
	movs r7, #0
	strh r7, [r0, #0]
_0807EB2C:
	ldr r4, _0807EB44
	ldr r2, [r4, #0]
	ldr r1, [r2, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [r2, #4]
	adds r1, r1, r0
	adds r2, #0xf4
	movs r0, #0xd
	bl _0807F758
	.2byte 0x0000
_0807EB44: .4byte gUnk_03006440
_0807EB48:
	movs r0, #0xf4
	adds r0, r0, r4
	mov r9, r0
	ldrh r2, [r0, #0]
	cmp r2, #0xa
	bne _0807EB56
	b _0807ED74
_0807EB56:
	cmp r6, #0xb
	bne _0807EB5E
	bl _0807FB38
_0807EB5E:
	ldr r1, [r0, #0]
	ldr r0, _0807EBA4
	cmp r1, r0
	beq _0807EB68
	b _0807EC60
_0807EB68:
	ldr r0, [r4, #0x44]
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r0, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r3, #0x82
	lsls r3, r3, #1
	adds r2, r1, r3
	ldrh r0, [r2, #0]
	cmp r0, #5
	bgt _0807EBFC
	cmp r0, #2
	blt _0807EBFC
	movs r5, #0x86
	lsls r5, r5, #1
	adds r1, r1, r5
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _0807EBAC
	movs r0, #0
	strb r0, [r1, #0]
	ldr r6, _0807EBA8
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	bl sub_0807BD78
	b _0807EBD8
_0807EBA4: .4byte 0x000C0001
_0807EBA8: .4byte gUnk_03006440
_0807EBAC:
	add r1, sp, #4
	adds r0, r2, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r4, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [r4, #4]
	adds r1, r1, r0
	movs r0, #0xd
	mov r2, r9
	bl sub_0807BEA0
	ldr r6, _0807EBF4
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
_0807EBD8:
	add r0, sp, #0x14
	movs r7, #0
	str r7, [sp, #0x14]
	ldr r1, [r6, #0]
	adds r1, #0xf4
	ldr r2, _0807EBF8
	bl CpuSet
	ldr r1, [r6, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r7, [r1, #0x20]
	bl _0807FB38
_0807EBF4: .4byte gUnk_03006440
_0807EBF8: .4byte 0x05000004
_0807EBFC:
	ldr r5, _0807EC58
	ldr r2, [r5, #0]
	ldr r0, [r2, #0x44]
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r0, [r2, #4]
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r2, r0
	add r1, sp, #4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r0, r3
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r2, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [r2, #4]
	adds r1, r1, r0
	adds r2, #0xf4
	movs r0, #0xd
	bl sub_0807BEA0
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	movs r4, #0
	str r4, [sp, #0x14]
	ldr r1, [r5, #0]
	adds r1, #0xf4
	ldr r2, _0807EC5C
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	bl _0807F774
_0807EC58: .4byte gUnk_03006440
_0807EC5C: .4byte 0x05000004
_0807EC60:
	cmp r6, #0
	beq _0807ECCC
	cmp r6, #0xd
	bne _0807ED30
	ldr r0, [r4, #0x44]
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r0, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	add r1, sp, #4
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r0, r2
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r4, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [r4, #4]
	adds r1, r1, r0
	movs r0, #0xd
	mov r2, r9
	bl sub_0807BEA0
	ldr r7, _0807ECC4
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r1, [r7, #0]
	adds r1, #0xf4
	ldr r2, _0807ECC8
	bl CpuSet
	ldr r1, [r7, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	movs r2, #0
	str r2, [r1, #0x20]
	bl _0807F774
_0807ECC4: .4byte gUnk_03006440
_0807ECC8: .4byte 0x05000004
_0807ECCC:
	ldr r0, [r4, #0x44]
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r0, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	add r1, sp, #4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r0, r3
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r4, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [r4, #4]
	adds r1, r1, r0
	movs r0, #0xd
	mov r2, r9
	bl sub_0807BEA0
	ldr r3, _0807ED28
	ldr r1, [r3, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	str r6, [sp, #0x14]
	ldr r4, _0807ED28
	ldr r1, [r4, #0]
	adds r1, #0xf4
	ldr r2, _0807ED2C
	bl CpuSet
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r6, [r1, #0x20]
	bl _0807F774
	.2byte 0x0000
_0807ED28: .4byte gUnk_03006440
_0807ED2C: .4byte 0x05000004
_0807ED30:
	ldr r0, [r4, #0x44]
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r0, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r5, #0x82
	lsls r5, r5, #1
	adds r0, r0, r5
	ldrh r6, [r0, #0]
	cmp r2, r6
	beq _0807ED4E
	bl _0807FB38
_0807ED4E:
	add r1, sp, #4
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r4, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [r4, #4]
	adds r1, r1, r0
	movs r0, #0xd
	mov r2, r9
	bl sub_0807BEA0
	ldr r4, _0807ED70
	bl _0807F750
_0807ED70: .4byte gUnk_03006440
_0807ED74:
	cmp r6, #0
	bne _0807ED7A
	b _0807EF58
_0807ED7A:
	cmp r6, #0xd
	beq _0807ED82
	bl _0807FB38
_0807ED82:
	ldr r7, [r4, #0x20]
	lsls r0, r7, #4
	movs r6, #0x84
	lsls r6, r6, #1
	adds r2, r4, r6
	adds r0, r0, r2
	mov ip, r0
	movs r0, #0xf8
	adds r0, r0, r4
	mov r8, r0
	mov r3, ip
	ldr r6, [r3, #0]
	ldr r3, [r0, #0]
	cmp r6, r3
	bne _0807EE94
	ldr r1, [r4, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [r4, #4]
	adds r1, r1, r0
	lsls r5, r1, #4
	mov sl, r5
	adds r0, r4, r5
	movs r5, #0x82
	lsls r5, r5, #1
	adds r3, r0, r5
	ldrh r0, [r3, #0]
	cmp r0, #0xa
	bne _0807EE3C
	mov r0, sl
	adds r3, r2, r0
	ldr r0, [r3, #0]
	adds r0, r0, r6
	ldr r5, _0807EDDC
	cmp r0, r5
	bhi _0807EDE0
	cmp r7, r1
	beq _0807EE06
	str r0, [r3, #0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	bl sub_0807BD78
	b _0807EE06
	.2byte 0x0000
_0807EDDC: .4byte 0x000186A0
_0807EDE0:
	cmp r7, r1
	beq _0807EE06
	ldr r6, _0807EE30
	adds r0, r0, r6
	mov r7, r8
	str r0, [r7, #0]
	ldr r0, [r4, #0x44]
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r0, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r2, r0
	str r5, [r0, #0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mov r2, r9
	bl sub_0807BEA0
_0807EE06:
	add r0, sp, #0x14
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r2, _0807EE34
	ldr r1, [r2, #0]
	adds r1, #0xf4
	ldr r2, _0807EE38
	bl CpuSet
	ldr r3, _0807EE34
	ldr r1, [r3, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	movs r4, #0
	str r4, [r1, #0x20]
	movs r0, #0x5f
	bl sub_0805865C
	bl _0807F774
	.2byte 0x0000
_0807EE30: .4byte 0xFFFE7960
_0807EE34: .4byte gUnk_03006440
_0807EE38: .4byte 0x05000004
_0807EE3C:
	add r1, sp, #4
	adds r0, r3, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r4, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [r4, #4]
	adds r1, r1, r0
	movs r0, #0xd
	mov r2, r9
	bl sub_0807BEA0
	ldr r0, _0807EE8C
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r2, _0807EE8C
	ldr r1, [r2, #0]
	adds r1, #0xf4
	ldr r2, _0807EE90
	bl CpuSet
	ldr r3, _0807EE8C
	ldr r1, [r3, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	movs r4, #0
	str r4, [r1, #0x20]
	bl _0807F774
	.2byte 0x0000
_0807EE8C: .4byte gUnk_03006440
_0807EE90: .4byte 0x05000004
_0807EE94:
	cmp r1, #0xa
	beq _0807EE9C
	bl _0807F724
_0807EE9C:
	ldr r1, [r4, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, [r4, #4]
	adds r1, r1, r0
	lsls r0, r1, #4
	adds r0, r2, r0
	ldr r0, [r0, #0]
	adds r0, r0, r3
	ldr r5, _0807EEF4
	mov sl, r5
	cmp r0, sl
	bhi _0807EF00
	subs r0, r6, r3
	mov r6, ip
	str r0, [r6, #0]
	ldr r0, [r4, #0x44]
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r0, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r2, r0
	ldr r1, [r0, #0]
	mov r7, r8
	ldr r2, [r7, #0]
	adds r1, r1, r2
	str r1, [r0, #0]
	add r0, sp, #0x14
	movs r1, #0
	str r1, [sp, #0x14]
	mov r1, r9
	ldr r2, _0807EEF8
	bl CpuSet
	ldr r2, _0807EEFC
	ldr r1, [r2, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	movs r3, #0
	str r3, [r1, #0x20]
	bl _0807F774
	.2byte 0x0000
_0807EEF4: .4byte 0x000186A0
_0807EEF8: .4byte 0x05000004
_0807EEFC: .4byte gUnk_03006440
_0807EF00:
	cmp r7, r1
	beq _0807EF28
	ldr r5, _0807EF4C
	adds r0, r0, r5
	mov r6, r8
	str r0, [r6, #0]
	ldr r0, [r4, #0x44]
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r0, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r2, r0
	mov r7, sl
	str r7, [r0, #0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mov r2, r9
	bl sub_0807BEA0
_0807EF28:
	add r0, sp, #0x14
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r2, _0807EF50
	ldr r1, [r2, #0]
	adds r1, #0xf4
	ldr r2, _0807EF54
	bl CpuSet
	ldr r3, _0807EF50
	ldr r1, [r3, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	movs r4, #0
	str r4, [r1, #0x20]
	bl _0807F774
	.2byte 0x0000
_0807EF4C: .4byte 0xFFFE7960
_0807EF50: .4byte gUnk_03006440
_0807EF54: .4byte 0x05000004
_0807EF58:
	ldr r0, [r4, #0x44]
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r0, [r4, #4]
	adds r0, r0, r1
	lsls r7, r0, #4
	adds r0, r4, r7
	movs r5, #0x82
	lsls r5, r5, #1
	adds r0, r0, r5
	ldrh r0, [r0, #0]
	cmp r0, #0xa
	beq _0807EF76
	bl _0807F724
_0807EF76:
	ldr r0, _0807EFB4
	ldr r1, [r0, #0]
	ldr r0, [r4, #0x20]
	lsls r0, r0, #4
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r1, r1, r0
	movs r3, #0xf8
	adds r3, r3, r4
	mov ip, r3
	ldr r5, [r1, #0]
	ldr r3, [r3, #0]
	cmp r5, r3
	bne _0807F008
	movs r0, #0x84
	lsls r0, r0, #1
	adds r2, r4, r0
	adds r1, r2, r7
	ldr r0, [r1, #0]
	adds r0, r0, r5
	ldr r3, _0807EFB8
	cmp r0, r3
	bhi _0807EFBC
	str r0, [r1, #0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	bl sub_0807BD78
	b _0807EFDE
	.2byte 0x0000
_0807EFB4: .4byte gUnk_030034E0
_0807EFB8: .4byte 0x000186A0
_0807EFBC:
	ldr r5, _0807EFFC
	adds r0, r0, r5
	mov r7, ip
	str r0, [r7, #0]
	ldr r0, [r4, #0x44]
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r0, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r2, r0
	str r3, [r0, #0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mov r2, r9
	bl sub_0807BEA0
_0807EFDE:
	add r0, sp, #0x14
	str r6, [sp, #0x14]
	ldr r2, _0807F000
	ldr r1, [r2, #0]
	adds r1, #0xf4
	ldr r2, _0807F004
	bl CpuSet
	ldr r3, _0807F000
	ldr r1, [r3, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r6, [r1, #0x20]
	b _0807F774
	.2byte 0x0000
_0807EFFC: .4byte 0xFFFE7960
_0807F000: .4byte gUnk_03006440
_0807F004: .4byte 0x05000004
_0807F008:
	movs r0, #0x84
	lsls r0, r0, #1
	adds r2, r4, r0
	adds r0, r2, r7
	ldr r0, [r0, #0]
	adds r0, r0, r3
	ldr r7, _0807F050
	cmp r0, r7
	bhi _0807F05C
	subs r0, r5, r3
	str r0, [r1, #0]
	ldr r0, [r4, #0x44]
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r0, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r2, r0
	ldr r1, [r0, #0]
	mov r3, ip
	ldr r2, [r3, #0]
	adds r1, r1, r2
	str r1, [r0, #0]
	add r0, sp, #0x14
	str r6, [sp, #0x14]
	mov r1, r9
	ldr r2, _0807F054
	bl CpuSet
	ldr r4, _0807F058
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r6, [r1, #0x20]
	b _0807F774
	.2byte 0x0000
_0807F050: .4byte 0x000186A0
_0807F054: .4byte 0x05000004
_0807F058: .4byte gUnk_03006440
_0807F05C:
	ldr r5, _0807F09C
	adds r0, r0, r5
	mov r1, ip
	str r0, [r1, #0]
	ldr r0, [r4, #0x44]
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r0, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r2, r0
	str r7, [r0, #0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mov r2, r9
	bl sub_0807BEA0
	add r0, sp, #0x14
	str r6, [sp, #0x14]
	ldr r2, _0807F0A0
	ldr r1, [r2, #0]
	adds r1, #0xf4
	ldr r2, _0807F0A4
	bl CpuSet
	ldr r3, _0807F0A0
	ldr r1, [r3, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r6, [r1, #0x20]
	b _0807F774
	.2byte 0x0000
_0807F09C: .4byte 0xFFFE7960
_0807F0A0: .4byte gUnk_03006440
_0807F0A4: .4byte 0x05000004
_0807F0A8:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807F0B6
	bl _0807FB38
_0807F0B6:
	ldr r0, _0807F0EC
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #2
	bne _0807F0C4
	bl _0807FB38
_0807F0C4:
	cmp r0, #3
	beq _0807F0CC
	bl _0807FB38
_0807F0CC:
	ldr r0, [r1, #0x1c]
	cmp r0, #0xb
	bne _0807F0D6
	bl _0807FB38
_0807F0D6:
	cmp r0, #0x16
	bne _0807F0DE
	bl _0807FB38
_0807F0DE:
	movs r0, #0xc
	str r0, [r1, #0x18]
	str r2, [r1, #4]
	str r3, [r1, #8]
	bl _0807FAC4
	.2byte 0x0000
_0807F0EC: .4byte gUnk_03006440
_0807F0F0:
	ldr r0, _0807F10C
	ldrh r1, [r0, #0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807F114
	ldr r0, _0807F110
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0807F1A0
	subs r0, #1
	str r0, [r1, #4]
	b _0807F160
_0807F10C: .4byte gUnk_03001308
_0807F110: .4byte gUnk_03006440
_0807F114:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807F138
	ldr r0, _0807F134
	ldr r2, [r0, #0]
	ldr r1, [r2, #4]
	ldr r0, [r2, #0x48]
	cmp r1, r0
	bhs _0807F1A0
	cmp r1, #3
	bhi _0807F1A0
	adds r0, r1, #1
	str r0, [r2, #4]
	b _0807F160
	.2byte 0x0000
_0807F134: .4byte gUnk_03006440
_0807F138:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0807F16C
	ldr r0, _0807F168
	ldr r1, [r0, #0]
	movs r0, #0xd
	str r0, [r1, #0x18]
	ldr r2, [r1, #4]
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r0, #2
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
_0807F160:
	movs r0, #0x62
	bl sub_0805865C
	b _0807F1A0
_0807F168: .4byte gUnk_03006440
_0807F16C:
	ldr r0, _0807F190
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807F1A0
	ldr r0, _0807F194
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	ldr r2, [r1, #0x48]
	cmp r0, r2
	blo _0807F198
	cmp r2, #4
	bhi _0807F198
	str r3, [r1, #4]
	movs r0, #0xf
	str r0, [r1, #0x18]
	b _0807F19A
_0807F190: .4byte gUnk_03001324
_0807F194: .4byte gUnk_03006440
_0807F198:
	str r0, [r1, #0x44]
_0807F19A:
	movs r0, #0xf
	bl sub_0805865C
_0807F1A0:
	ldr r4, _0807F200
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x18]
	cmp r0, #0xe
	beq _0807F1AE
	bl _0807FB38
_0807F1AE:
	ldr r2, [r1, #4]
	ldr r0, [r1, #0x48]
	cmp r2, r0
	beq _0807F1BA
	bl _0807FB38
_0807F1BA:
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	subs r0, #0x18
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #0x10
	ldr r3, _0807F204
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2, #0]
	movs r3, #9
	str r3, [sp, #0]
	movs r3, #0
	bl sub_08065424
	ldr r2, [r4, #0]
	movs r4, #0xb7
	lsls r4, r4, #3
	adds r0, r2, r4
	adds r1, r2, #0
	adds r1, #0xe8
	ldr r1, [r1, #0]
	subs r1, #0x20
	adds r2, #0xec
	ldr r2, [r2, #0]
	subs r2, #0x10
	movs r3, #0
	str r3, [sp, #0]
	movs r3, #0xa
	bl sub_08065230
	bl _0807FB38
	.2byte 0x0000
_0807F200: .4byte gUnk_03006440
_0807F204: .4byte gUnk_084ECBC8
_0807F208:
	ldr r0, _0807F230
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807F238
	ldr r4, _0807F234
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _0807F224
	movs r0, #0xc6
	bl sub_0805865C
_0807F224:
	ldr r1, [r4, #0]
	movs r0, #0
	str r0, [r1, #4]
	bl _0807FB38
	.2byte 0x0000
_0807F230: .4byte gUnk_03001308
_0807F234: .4byte gUnk_03006440
_0807F238:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807F260
	ldr r4, _0807F25C
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0807F250
	movs r0, #0xc7
	bl sub_0805865C
_0807F250:
	ldr r1, [r4, #0]
	movs r0, #1
	str r0, [r1, #4]
	bl _0807FB38
	.2byte 0x0000
_0807F25C: .4byte gUnk_03006440
_0807F260:
	ldr r3, _0807F2B8
	ldrh r2, [r3, #0]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0807F2DC
	ldr r4, _0807F2BC
	ldr r1, [r4, #0]
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0807F2C8
	bl sub_0808543C
	ldr r2, _0807F2C0
	ldr r1, [r4, #0]
	ldr r1, [r1, #0x48]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0]
	cmp r0, r1
	blo _0807F2A8
	adds r0, r1, #0
	bl sub_0807C014
	ldr r0, _0807F2C4
	ldr r1, [r0, #0]
	adds r1, #0x6a
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	ldr r2, [r4, #0]
	ldrh r0, [r1, #0]
	str r0, [r2, #0x48]
	movs r0, #0x63
	bl sub_0805865C
_0807F2A8:
	ldr r1, [r4, #0]
	movs r0, #0xe
	str r0, [r1, #0x18]
	ldr r0, [r1, #0x48]
	subs r0, #1
	str r0, [r1, #4]
	bl _0807FB38
_0807F2B8: .4byte gUnk_03001324
_0807F2BC: .4byte gUnk_03006440
_0807F2C0: .4byte gUnk_084ECBC8
_0807F2C4: .4byte gUnk_030034E0
_0807F2C8:
	movs r0, #0xe
	str r0, [r1, #0x18]
	ldr r0, [r1, #0x48]
	str r0, [r1, #4]
	ldr r0, _0807F2D8
	ands r0, r2
	strh r0, [r3, #0]
	b _0807F976
_0807F2D8: .4byte 0x0000FFFD
_0807F2DC:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0807F2E8
	bl _0807FB38
_0807F2E8:
	ldr r0, _0807F2FC
	ldr r0, [r0, #0]
	movs r1, #0xe
	str r1, [r0, #0x18]
	ldr r1, [r0, #0x48]
	str r1, [r0, #4]
	ldr r0, _0807F300
	ands r0, r2
	strh r0, [r3, #0]
	b _0807F976
_0807F2FC: .4byte gUnk_03006440
_0807F300: .4byte 0x0000FFFD
_0807F304:
	ldr r0, _0807F320
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807F330
	ldr r0, _0807F324
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0807F328
	subs r0, #1
	str r0, [r1, #4]
	b _0807FAC4
_0807F320: .4byte gUnk_03001308
_0807F324: .4byte gUnk_03006440
_0807F328:
	str r0, [r1, #0x18]
	movs r0, #9
	str r0, [r1, #4]
	b _0807FAC4
_0807F330:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0807F354
	ldr r0, _0807F350
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #1
	bls _0807F34A
	bl _0807FB38
_0807F34A:
	adds r0, #1
	str r0, [r1, #4]
	b _0807FAC4
_0807F350: .4byte gUnk_03006440
_0807F354:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0807F390
	ldr r0, _0807F38C
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x28]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0807F372
	bl _0807FB38
_0807F372:
	adds r0, r2, #0
	adds r0, #0xf4
	ldrh r0, [r0, #0]
	cmp r0, #0xa
	beq _0807F380
	bl _0807FB38
_0807F380:
	movs r0, #0x11
	str r0, [r2, #0x18]
	str r3, [r2, #4]
	movs r0, #0x64
	str r0, [r2, #8]
	b _0807FAC4
_0807F38C: .4byte gUnk_03006440
_0807F390:
	ldr r0, _0807F3E8
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807F39E
	b _0807FB38
_0807F39E:
	ldr r5, _0807F3EC
	ldr r1, [r5, #0]
	ldr r2, [r1, #0x1c]
	cmp r2, #0x16
	bne _0807F3F0
	ldr r3, [r1, #4]
	lsls r0, r3, #4
	adds r0, r1, r0
	movs r6, #0x82
	lsls r6, r6, #1
	adds r2, r0, r6
	ldrh r0, [r2, #0]
	cmp r0, #0
	bne _0807F3BC
	b _0807FB38
_0807F3BC:
	ldr r0, [r1, #0x18]
	str r0, [r1, #0x1c]
	str r3, [r1, #0x20]
	adds r1, #0xf4
	adds r0, r2, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [r5, #0]
	adds r0, #0xfd
	strb r4, [r0, #0]
	ldr r2, [r5, #0]
	ldr r0, [r2, #0x28]
	movs r1, #5
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x28]
_0807F3E0:
	movs r0, #0x5e
	bl sub_0805865C
	b _0807FB38
_0807F3E8: .4byte gUnk_03001324
_0807F3EC: .4byte gUnk_03006440
_0807F3F0:
	adds r0, r1, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r4, [r0, #0]
	cmp r4, #0
	bne _0807F468
	ldr r1, [r1, #0x20]
	adds r0, r2, #0
	bl sub_0807BD78
	ldr r5, _0807F460
	ldr r2, [r5, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0x10
	bl sub_0807BEA0
	add r0, sp, #0x14
	str r4, [sp, #0x14]
	ldr r1, [r5, #0]
	adds r1, #0xf4
	ldr r2, _0807F464
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	movs r0, #0x5f
	bl sub_0805865C
	movs r2, #0
	movs r5, #0
	ldr r6, _0807F460
	ldr r0, [r6, #0]
	movs r7, #0x82
	lsls r7, r7, #1
	adds r1, r0, r7
_0807F43C:
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0807F444
	adds r2, #1
_0807F444:
	adds r1, #0x10
	adds r5, #1
	cmp r5, #2
	bls _0807F43C
	cmp r2, #3
	beq _0807F452
	b _0807FB38
_0807F452:
	ldr r0, _0807F460
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x28]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #0x28]
	b _0807FB38
_0807F460: .4byte gUnk_03006440
_0807F464: .4byte 0x05000004
_0807F468:
	cmp r2, #0x10
	bls _0807F46E
	b _0807FB38
_0807F46E:
	lsls r0, r2, #2
	ldr r1, _0807F478
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0807F478: .4byte _0807F47C
_0807F47C:
	.4byte _0807F72C
_0807F480: .4byte _0807F4C0
_0807F484: .4byte _0807F530
_0807F488: .4byte _0807F594
_0807F48C: .4byte _0807F5F8
_0807F490: .4byte _0807F65C
_0807F494: .4byte _0807F6C0
_0807F498: .4byte _0807FB38
_0807F49C: .4byte _0807FB38
_0807F4A0: .4byte _0807FB38
_0807F4A4: .4byte _0807FB38
_0807F4A8: .4byte _0807FB38
_0807F4AC: .4byte _0807FB38
_0807F4B0: .4byte _0807FB38
_0807F4B4: .4byte _0807FB38
_0807F4B8: .4byte _0807FB38
_0807F4BC: .4byte _0807F72C
_0807F4C0:
	ldr r5, _0807F524
	ldr r2, [r5, #0]
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #2
	beq _0807F4D2
	b _0807F724
_0807F4D2:
	ldr r0, [r2, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	add r1, sp, #4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r0, r3
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0x10
	bl sub_0807BEA0
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	movs r4, #0
	str r4, [sp, #0x14]
	ldr r1, [r5, #0]
	adds r1, #0xf4
	ldr r2, _0807F528
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	ldr r0, _0807F52C
	ldr r0, [r0, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	bl sub_0805AD78
	b _0807F774
_0807F524: .4byte gUnk_03006440
_0807F528: .4byte 0x05000004
_0807F52C: .4byte gUnk_030034E0
_0807F530:
	ldr r5, _0807F58C
	ldr r2, [r5, #0]
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #4
	beq _0807F542
	b _0807F724
_0807F542:
	ldr r0, [r2, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	add r1, sp, #4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r0, r3
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0x10
	bl sub_0807BEA0
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	movs r4, #0
	str r4, [sp, #0x14]
	ldr r1, [r5, #0]
	adds r1, #0xf4
	ldr r2, _0807F590
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	bl sub_0805D094
	b _0807F774
_0807F58C: .4byte gUnk_03006440
_0807F590: .4byte 0x05000004
_0807F594:
	ldr r5, _0807F5F0
	ldr r2, [r5, #0]
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #5
	beq _0807F5A6
	b _0807F724
_0807F5A6:
	ldr r0, [r2, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	add r1, sp, #4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r0, r3
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0x10
	bl sub_0807BEA0
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	movs r4, #0
	str r4, [sp, #0x14]
	ldr r1, [r5, #0]
	adds r1, #0xf4
	ldr r2, _0807F5F4
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	bl sub_0805D13C
	b _0807F774
_0807F5F0: .4byte gUnk_03006440
_0807F5F4: .4byte 0x05000004
_0807F5F8:
	ldr r5, _0807F654
	ldr r2, [r5, #0]
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #3
	beq _0807F60A
	b _0807F724
_0807F60A:
	ldr r0, [r2, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	add r1, sp, #4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r0, r3
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0x10
	bl sub_0807BEA0
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	movs r4, #0
	str r4, [sp, #0x14]
	ldr r1, [r5, #0]
	adds r1, #0xf4
	ldr r2, _0807F658
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	bl sub_0805D0E8
	b _0807F774
_0807F654: .4byte gUnk_03006440
_0807F658: .4byte 0x05000004
_0807F65C:
	ldr r5, _0807F6B8
	ldr r2, [r5, #0]
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #7
	bne _0807F724
	ldr r0, [r2, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	add r1, sp, #4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r0, r3
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0x10
	bl sub_0807BEA0
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	movs r4, #0
	str r4, [sp, #0x14]
	ldr r1, [r5, #0]
	adds r1, #0xf4
	ldr r2, _0807F6BC
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	bl sub_0805D190
	b _0807F774
	.2byte 0x0000
_0807F6B8: .4byte gUnk_03006440
_0807F6BC: .4byte 0x05000004
_0807F6C0:
	ldr r5, _0807F71C
	ldr r2, [r5, #0]
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #6
	bne _0807F724
	ldr r0, [r2, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	add r1, sp, #4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r0, r3
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0x10
	bl sub_0807BEA0
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	bl sub_0807BEA0
	add r0, sp, #0x14
	movs r4, #0
	str r4, [sp, #0x14]
	ldr r1, [r5, #0]
	adds r1, #0xf4
	ldr r2, _0807F720
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	bl sub_0805D1E0
	b _0807F774
	.2byte 0x0000
_0807F71C: .4byte gUnk_03006440
_0807F720: .4byte 0x05000004
_0807F724:
	movs r0, #0x61
	bl sub_0805865C
	b _0807FB38
_0807F72C:
	ldr r4, _0807F77C
	ldr r2, [r4, #0]
	ldr r0, [r2, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	add r1, sp, #4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r0, r3
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, [r2, #4]
	adds r2, #0xf4
	movs r0, #0x10
_0807F74C:
	bl sub_0807BEA0
_0807F750:
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
_0807F758:
	bl sub_0807BEA0
	add r0, sp, #0x14
	movs r5, #0
	str r5, [sp, #0x14]
_0807F762:
	ldr r1, [r4, #0]
	adds r1, #0xf4
	ldr r2, _0807F780
	bl CpuSet
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r5, [r1, #0x20]
_0807F774:
	movs r0, #0x5f
	bl sub_0805865C
	b _0807FB38
_0807F77C: .4byte gUnk_03006440
_0807F780: .4byte 0x05000004
_0807F784:
	ldr r0, _0807F7A4
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807F7AC
	ldr r0, _0807F7A8
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #0x18
	str r0, [r1, #4]
	movs r0, #0x64
	str r0, [r1, #8]
	b _0807FAC4
	.2byte 0x0000
_0807F7A4: .4byte gUnk_03001308
_0807F7A8: .4byte gUnk_03006440
_0807F7AC:
	ldr r3, _0807F7F4
	ldrh r2, [r3, #0]
	movs r5, #1
	ands r5, r2
	cmp r5, #0
	beq _0807F858
	ldr r2, _0807F7F8
	ldr r0, [r2, #0]
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r1, r0, r3
	adds r0, #0xf4
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, _0807F7FC
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	ldr r4, [r2, #0x20]
	lsls r1, r4, #4
	movs r7, #0xaa
	lsls r7, r7, #1
	adds r0, r0, r7
	adds r3, r0, r1
	adds r0, r2, #0
	adds r0, #0xf8
	ldr r1, [r3, #0]
	ldr r0, [r0, #0]
	cmp r1, r0
	bne _0807F800
	ldr r0, [r2, #0x1c]
	adds r1, r4, #0
	bl sub_0807BD78
	b _0807F804
_0807F7F4: .4byte gUnk_03001324
_0807F7F8: .4byte gUnk_03006440
_0807F7FC: .4byte gUnk_030034E0
_0807F800:
	subs r0, r1, r0
	str r0, [r3, #0]
_0807F804:
	add r0, sp, #0x14
	movs r5, #0
	str r5, [sp, #0x14]
	ldr r4, _0807F84C
	ldr r1, [r4, #0]
	adds r1, #0xf4
	ldr r2, _0807F850
	bl CpuSet
	ldr r4, [r4, #0]
	movs r0, #0x16
	str r0, [r4, #0x1c]
	str r5, [r4, #0x20]
	movs r0, #0x12
	str r0, [r4, #0x18]
	str r5, [r4, #4]
	movs r0, #0x64
	str r0, [r4, #8]
	str r5, [r4, #0x54]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0, #0]
	ldr r1, _0807F854
	bl __udivsi3
	str r0, [r4, #0x58]
	movs r1, #0xb
	subs r1, r1, r0
	str r1, [r4, #0x60]
	str r5, [r4, #0x5c]
	movs r0, #0xbb
	bl sub_0805865C
	b _0807FB38
	.2byte 0x0000
_0807F84C: .4byte gUnk_03006440
_0807F850: .4byte 0x05000004
_0807F854: .4byte 0x00002710
_0807F858:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0807F862
	b _0807FB38
_0807F862:
	ldr r4, _0807F88C
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x1c]
	str r0, [r1, #0x18]
	ldr r0, [r1, #0x20]
	str r0, [r1, #4]
	ldr r0, _0807F890
	ands r0, r2
	strh r0, [r3, #0]
	add r0, sp, #0x14
	str r5, [sp, #0x14]
	adds r1, #0xf4
	ldr r2, _0807F894
	bl CpuSet
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r5, [r1, #0x20]
	b _0807FAC4
	.2byte 0x0000
_0807F88C: .4byte gUnk_03006440
_0807F890: .4byte 0x0000FFFD
_0807F894: .4byte 0x05000004
_0807F898:
	ldr r0, _0807F8BC
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807F8C4
	ldr r0, _0807F8C0
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #1
	beq _0807F8B0
	b _0807FB38
_0807F8B0:
	movs r0, #0
	str r0, [r1, #4]
	movs r0, #0xc6
	bl sub_0805865C
	b _0807FB38
_0807F8BC: .4byte gUnk_03001308
_0807F8C0: .4byte gUnk_03006440
_0807F8C4:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0807F8EC
	ldr r0, _0807F8E8
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0807F8DC
	b _0807FB38
_0807F8DC:
	movs r0, #1
	str r0, [r1, #4]
	movs r0, #0xc7
	bl sub_0805865C
	b _0807FB38
_0807F8E8: .4byte gUnk_03006440
_0807F8EC:
	ldr r7, _0807F91C
	ldrh r1, [r7, #0]
	movs r6, #1
	ands r6, r1
	cmp r6, #0
	beq _0807F94E
	ldr r6, _0807F920
	ldr r2, [r6, #0]
	ldr r0, [r2, #4]
	cmp r0, #1
	bne _0807F924
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r0, r2, r4
	bl sub_0805AB20
	ldr r1, [r6, #0]
	adds r4, r1, r4
	strh r5, [r4, #0]
	str r5, [r1, #0x18]
	str r5, [r1, #4]
	movs r0, #0x64
	str r0, [r1, #8]
	b _0807F976
_0807F91C: .4byte gUnk_03001324
_0807F920: .4byte gUnk_03006440
_0807F924:
	ldr r0, [r2, #0x28]
	movs r1, #5
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x28]
	movs r0, #0x13
	str r0, [r2, #0x18]
	movs r0, #0x10
	movs r1, #3
	bl sub_0807BD78
	ldr r0, [r6, #0]
	str r5, [r0, #0xc]
	str r5, [r0, #0x10]
	movs r1, #0xa0
	str r1, [r0, #0x54]
	str r5, [r0, #0x58]
_0807F946:
	movs r0, #0x63
	bl sub_0805865C
	b _0807FB38
_0807F94E:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0807F958
	b _0807FB38
_0807F958:
	ldr r5, _0807F980
	ldr r0, [r5, #0]
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r0, r0, r4
	bl sub_0805AB20
	ldr r1, [r5, #0]
	adds r4, r1, r4
	strh r6, [r4, #0]
	str r6, [r1, #0x18]
	str r6, [r1, #4]
	movs r0, #0x64
	str r0, [r1, #8]
	strh r6, [r7, #0]
_0807F976:
	movs r0, #0x10
	bl sub_0805865C
	b _0807FB38
	.2byte 0x0000
_0807F980: .4byte gUnk_03006440
_0807F984:
	ldr r5, _0807F9D0
	ldr r1, [r5, #0]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0807F990
	b _0807FB38
_0807F990:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r1, r2
	add r4, sp, #0x18
	adds r1, r4, #0
	bl sub_0808441C
	movs r0, #0x10
	movs r1, #0
	bl sub_0807BD78
	movs r0, #0x10
	movs r1, #1
	bl sub_0807BD78
	movs r0, #0x10
	movs r1, #2
	bl sub_0807BD78
	bl sub_0805CFA0
	ldr r1, [r5, #0]
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_0805AB20
	ldr r1, [r5, #0]
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #0x64
	str r0, [r1, #8]
	b _0807FB38
_0807F9D0: .4byte gUnk_03006440
_0807F9D4:
	ldr r5, _0807F9FC
	ldr r3, [r5, #0]
	ldr r2, [r3, #0xc]
	cmp r2, #0
	beq _0807F9E0
	b _0807FB38
_0807F9E0:
	ldr r0, _0807FA00
	ldrh r1, [r0, #0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807FA04
	ldr r0, [r3, #0x10]
	subs r0, #1
	str r0, [r3, #0x10]
	cmp r0, #0
	bge _0807FAC4
	str r2, [r3, #0x10]
	b _0807FAC4
	.2byte 0x0000
_0807F9FC: .4byte gUnk_03006440
_0807FA00: .4byte gUnk_03001308
_0807FA04:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807FA1E
	ldr r0, [r3, #0x10]
	adds r0, #1
	str r0, [r3, #0x10]
	ldr r1, [r3, #0x14]
	cmp r0, r1
	blo _0807FAC4
	subs r0, r1, #1
	str r0, [r3, #0x10]
	b _0807FAC4
_0807FA1E:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807FA9C
	ldr r0, [r3, #0x1c]
	cmp r0, #0
	beq _0807FA32
	cmp r0, #0xd
	beq _0807FA6C
	b _0807FB38
_0807FA32:
	adds r4, r3, #0
	adds r4, #0xf8
	ldr r2, _0807FA64
	ldr r1, [r3, #0x10]
	movs r0, #9
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	adds r2, r1, r0
	ldr r0, _0807FA68
	ldr r1, [r0, #0]
	ldr r0, [r3, #0x20]
	lsls r0, r0, #4
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r0, [r1, #0]
	cmp r2, r0
	bhi _0807FB38
	str r2, [r4, #0]
	b _0807FAC4
	.2byte 0x0000
_0807FA64: .4byte gUnk_084EBD4C
_0807FA68: .4byte gUnk_030034E0
_0807FA6C:
	adds r4, r3, #0
	adds r4, #0xf8
	ldr r2, _0807FA98
	ldr r1, [r3, #0x10]
	movs r0, #9
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	adds r2, r1, r0
	ldr r1, [r3, #0x20]
	lsls r1, r1, #4
	movs r5, #0x84
	lsls r5, r5, #1
	adds r0, r3, r5
	adds r0, r0, r1
	ldr r0, [r0, #0]
	cmp r2, r0
	bhi _0807FB38
	str r2, [r4, #0]
	b _0807FAC4
_0807FA98: .4byte gUnk_084EBD4C
_0807FA9C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807FAD0
	adds r4, r3, #0
	adds r4, #0xf8
	ldr r2, _0807FACC
	ldr r1, [r3, #0x10]
	movs r0, #9
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	cmp r1, r0
	beq _0807FB38
	subs r0, r1, r0
	cmp r0, #0
	blt _0807FB38
	str r0, [r4, #0]
_0807FAC4:
	movs r0, #0x62
	bl sub_0805865C
	b _0807FB38
_0807FACC: .4byte gUnk_084EBD4C
_0807FAD0:
	ldr r0, _0807FAFC
	ldrh r1, [r0, #0]
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0807FB00
	ldr r0, [r3, #0x1c]
	str r0, [r3, #0x18]
	ldr r2, [r3, #0x20]
	str r2, [r3, #4]
	cmp r0, #0xd
	bne _0807FAF2
	ldr r1, [r3, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	subs r0, r2, r0
	str r0, [r3, #4]
_0807FAF2:
	movs r0, #0xf
	bl sub_0805865C
	b _0807FB38
	.2byte 0x0000
_0807FAFC: .4byte gUnk_03001324
_0807FB00:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807FB38
	ldr r0, [r3, #0x1c]
	str r0, [r3, #0x18]
	ldr r2, [r3, #0x20]
	str r2, [r3, #4]
	cmp r0, #0xd
	bne _0807FB1E
	ldr r1, [r3, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	subs r0, r2, r0
	str r0, [r3, #4]
_0807FB1E:
	add r0, sp, #0x14
	str r4, [sp, #0x14]
	ldr r1, [r5, #0]
	adds r1, #0xf4
	ldr r2, _0807FB70
	bl CpuSet
	ldr r0, [r5, #0]
	str r4, [r0, #0x20]
	str r4, [r0, #0x1c]
	movs r0, #0x10
	bl sub_0805865C
_0807FB38:
	ldr r0, _0807FB74
	ldr r3, [r0, #0]
	ldr r1, [r3, #0]
	ldr r4, _0807FB78
	cmp r1, #6
	bne _0807FB8A
	movs r2, #0
	movs r5, #0
	movs r6, #0x82
	lsls r6, r6, #1
	adds r1, r3, r6
_0807FB4E:
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0807FB56
	adds r2, #1
_0807FB56:
	adds r1, #0x10
	adds r5, #1
	cmp r5, #2
	bls _0807FB4E
	cmp r2, #3
	bne _0807FB7C
	ldr r7, _0807FB74
	ldr r0, [r7, #0]
	ldr r1, [r0, #0x28]
	movs r2, #4
	orrs r1, r2
	b _0807FB88
	.2byte 0x0000
_0807FB70: .4byte 0x05000004
_0807FB74: .4byte gUnk_03006440
_0807FB78: .4byte gUnk_03001324
_0807FB7C:
	ldr r1, _0807FBA4
	ldr r0, [r1, #0]
	ldr r1, [r0, #0x28]
	movs r2, #5
	negs r2, r2
	ands r1, r2
_0807FB88:
	str r1, [r0, #0x28]
_0807FB8A:
	ldrh r0, [r4, #0]
	cmp r0, #8
	bne _0807FBA8
	ldr r0, _0807FBA4
	ldr r2, [r0, #0]
	ldr r1, [r2, #0x28]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0807FBA0
	b _0807FD68
_0807FBA0:
	str r1, [r2, #0x24]
	b _0807FC84
_0807FBA4: .4byte gUnk_03006440
_0807FBA8:
	cmp r0, #2
	bne _0807FC8C
	ldr r3, _0807FBCC
	ldr r2, [r3, #0]
	ldr r1, [r2, #0x28]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807FC7C
	ldr r0, [r2, #0x1c]
	cmp r0, #0x16
	bhi _0807FC6C
	lsls r0, r0, #2
	ldr r1, _0807FBD0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0807FBCC: .4byte gUnk_03006440
_0807FBD0: .4byte _0807FBD4
_0807FBD4:
	.4byte _0807FC3C
_0807FBD8: .4byte _0807FC3C
_0807FBDC: .4byte _0807FC3C
_0807FBE0: .4byte _0807FC3C
_0807FBE4: .4byte _0807FC3C
_0807FBE8: .4byte _0807FC3C
_0807FBEC: .4byte _0807FC3C
_0807FBF0: .4byte _0807FC6C
_0807FBF4: .4byte _0807FC6C
_0807FBF8: .4byte _0807FC6C
_0807FBFC: .4byte _0807FC6C
_0807FC00: .4byte _0807FC3C
_0807FC04: .4byte _0807FC30
_0807FC08: .4byte _0807FC3C
_0807FC0C: .4byte _0807FC6C
_0807FC10: .4byte _0807FC6C
_0807FC14: .4byte _0807FC3C
_0807FC18: .4byte _0807FC6C
_0807FC1C: .4byte _0807FC6C
_0807FC20: .4byte _0807FC6C
_0807FC24: .4byte _0807FC6C
_0807FC28: .4byte _0807FC6C
_0807FC2C: .4byte _0807FC6C
_0807FC30:
	ldr r4, _0807FC60
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x1c]
	str r1, [r0, #0x18]
	ldr r1, [r0, #0x20]
	str r1, [r0, #4]
_0807FC3C:
	ldr r5, _0807FC60
	ldr r1, [r5, #0]
	adds r2, r1, #0
	adds r2, #0x6a
	ldr r0, _0807FC64
	strh r0, [r2, #0]
	add r0, sp, #0x14
	movs r4, #0
	str r4, [sp, #0x14]
	adds r1, #0xf4
	ldr r2, _0807FC68
	bl CpuSet
	ldr r1, [r5, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r4, [r1, #0x20]
	b _0807FC84
_0807FC60: .4byte gUnk_03006440
_0807FC64: .4byte 0x0000FFFF
_0807FC68: .4byte 0x05000004
_0807FC6C:
	ldr r0, _0807FC78
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0x24]
	b _0807FC84
	.2byte 0x0000
_0807FC78: .4byte gUnk_03006440
_0807FC7C:
	movs r0, #2
	negs r0, r0
	ands r1, r0
	str r1, [r2, #0x28]
_0807FC84:
	movs r0, #0x10
	bl sub_0805865C
	b _0807FD68
_0807FC8C:
	cmp r0, #4
	bne _0807FD30
	ldr r0, _0807FCD0
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0807FD30
	ldr r5, _0807FCD4
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x18]
	cmp r0, #0xe
	beq _0807FCE2
	cmp r0, #7
	beq _0807FCE2
	cmp r0, #0xa
	beq _0807FCE2
	adds r0, r1, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0807FCE2
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0807FCE2
	cmp r0, #0xa
	beq _0807FCE2
	ldr r3, [r1, #0x28]
	movs r2, #1
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	bne _0807FCD8
	orrs r3, r2
	str r3, [r1, #0x28]
	b _0807FD06
_0807FCD0: .4byte gUnk_03001308
_0807FCD4: .4byte gUnk_03006440
_0807FCD8:
	movs r0, #2
	negs r0, r0
	ands r3, r0
	str r3, [r1, #0x28]
	b _0807FD28
_0807FCE2:
	ldr r0, _0807FD18
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x18]
	cmp r0, #9
	bne _0807FD68
	ldr r6, _0807FD1C
	adds r0, r2, r6
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0807FD68
	ldr r1, [r2, #0x28]
	movs r3, #1
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _0807FD20
	orrs r1, r3
	str r1, [r2, #0x28]
_0807FD06:
	movs r0, #2
	movs r1, #0x12
	bl sub_0801A664
	movs r0, #0xdc
	bl sub_0805865C
	b _0807FD68
	.2byte 0x0000
_0807FD18: .4byte gUnk_03006440
_0807FD1C: .4byte 0x000005B4
_0807FD20:
	movs r0, #2
	negs r0, r0
	ands r1, r0
	str r1, [r2, #0x28]
_0807FD28:
	movs r0, #0xdd
	bl sub_0805865C
	b _0807FD68
_0807FD30:
	ldr r0, _0807FD80
	ldr r2, [r0, #0]
	ldr r0, [r2, #0]
	cmp r0, #4
	bne _0807FD68
	ldr r0, [r2, #0x18]
	cmp r0, #0x14
	beq _0807FD68
	ldr r3, [r2, #0x28]
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	bne _0807FD68
	ldrh r1, [r4, #0]
	adds r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _0807FD68
	ldr r0, [r2, #0x44]
	adds r0, #1
	str r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	cmp r0, r1
	blo _0807FD62
	str r3, [r2, #0x44]
_0807FD62:
	movs r0, #0xe
	bl sub_0805865C
_0807FD68:
	ldr r1, _0807FD80
	ldr r0, [r1, #0]
	ldr r0, [r0, #0x18]
	cmp r0, #0x14
	bls _0807FD74
	b _08080256
_0807FD74:
	lsls r0, r0, #2
	ldr r1, _0807FD84
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0807FD80: .4byte gUnk_03006440
_0807FD84: .4byte _0807FD88
_0807FD88:
	.4byte _0807FDDC
_0807FD8C: .4byte _0807FE08
_0807FD90: .4byte _0807FE50
_0807FD94: .4byte _0807FE74
_0807FD98: .4byte _0807FE98
_0807FD9C: .4byte _0807FEBC
_0807FDA0: .4byte _0807FEE0
_0807FDA4: .4byte _0807FF1C
_0807FDA8: .4byte _0807FF90
_0807FDAC: .4byte _0807FF04
_0807FDB0: .4byte _0807FF70
_0807FDB4: .4byte _08080004
_0807FDB8: .4byte _0807FFEC
_0807FDBC: .4byte _08080044
_0807FDC0: .4byte _08080080
_0807FDC4: .4byte _080800EC
_0807FDC8: .4byte _080800F8
_0807FDCC: .4byte _0808011C
_0807FDD0: .4byte _0808013C
_0807FDD4: .4byte _080801B4
_0807FDD8: .4byte _0808020C
_0807FDDC:
	ldr r0, _0807FE04
	ldr r5, [r0, #0]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	cmp r1, r0
	bne _0807FDEA
	b _08080256
_0807FDEA:
	adds r4, r5, #0
	adds r4, #0xe8
	adds r0, r1, #0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #4
	adds r0, #0x58
	str r0, [r4, #0]
	adds r4, #4
	ldr r0, [r5, #4]
	movs r1, #5
	b _0808002A
_0807FE04: .4byte gUnk_03006440
_0807FE08:
	ldr r0, _0807FE48
	ldr r4, [r0, #0]
	ldr r6, [r4, #4]
	ldr r0, [r4, #8]
	cmp r6, r0
	bne _0807FE16
	b _08080256
_0807FE16:
	adds r0, r6, #0
	movs r1, #3
	bl __udivsi3
	lsls r1, r0, #1
	adds r5, r1, r0
	adds r2, r4, #0
	adds r2, #0xe8
	ldr r1, _0807FE4C
	subs r0, r6, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r0, #0x38
	str r0, [r2, #0]
	adds r2, #4
	ldr r0, [r4, #4]
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	b _0807FFD4
_0807FE48: .4byte gUnk_03006440
_0807FE4C: .4byte gUnk_084ECBBC
_0807FE50:
	ldr r3, _0807FE70
	ldr r2, [r3, #0]
	ldr r1, [r2, #4]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _0807FE60
	movs r0, #0
	str r0, [r2, #0x6c]
_0807FE60:
	ldr r2, [r3, #0]
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x40
	str r0, [r1, #0]
	adds r1, #4
	movs r0, #0x30
	b _0808012E
_0807FE70: .4byte gUnk_03006440
_0807FE74:
	ldr r3, _0807FE94
	ldr r2, [r3, #0]
	ldr r1, [r2, #4]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _0807FE84
	movs r0, #0
	str r0, [r2, #0x6c]
_0807FE84:
	ldr r2, [r3, #0]
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x3c
	str r0, [r1, #0]
	adds r1, #4
	movs r0, #0x60
	b _0808012E
_0807FE94: .4byte gUnk_03006440
_0807FE98:
	ldr r3, _0807FEB8
	ldr r2, [r3, #0]
	ldr r1, [r2, #4]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _0807FEA8
	movs r0, #0
	str r0, [r2, #0x6c]
_0807FEA8:
	ldr r2, [r3, #0]
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x40
	str r0, [r1, #0]
	adds r1, #4
	movs r0, #0x48
	b _0808012E
_0807FEB8: .4byte gUnk_03006440
_0807FEBC:
	ldr r3, _0807FEDC
	ldr r2, [r3, #0]
	ldr r1, [r2, #4]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _0807FECC
	movs r0, #0
	str r0, [r2, #0x6c]
_0807FECC:
	ldr r2, [r3, #0]
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0xc
	str r0, [r1, #0]
	adds r1, #4
	movs r0, #0x40
	b _0808012E
_0807FEDC: .4byte gUnk_03006440
_0807FEE0:
	ldr r3, _0807FF00
	ldr r2, [r3, #0]
	ldr r1, [r2, #4]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _0807FEF0
	movs r0, #0
	str r0, [r2, #0x6c]
_0807FEF0:
	ldr r2, [r3, #0]
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x10
	str r0, [r1, #0]
	adds r1, #4
	movs r0, #0x60
	b _0808012E
_0807FF00: .4byte gUnk_03006440
_0807FF04:
	ldr r0, _0807FF18
	ldr r2, [r0, #0]
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x24
	str r0, [r1, #0]
	adds r1, #4
	movs r0, #0x48
	b _0807FF80
	.2byte 0x0000
_0807FF18: .4byte gUnk_03006440
_0807FF1C:
	ldr r2, _0807FF40
	ldr r3, [r2, #0]
	ldr r1, [r3, #4]
	ldr r0, [r3, #8]
	cmp r1, r0
	bne _0807FF2A
	b _08080256
_0807FF2A:
	movs r2, #3
	ands r2, r1
	cmp r2, #1
	bhi _0807FF44
	adds r1, r3, #0
	adds r1, #0xe8
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0x10
	b _0807FF50
_0807FF40: .4byte gUnk_03006440
_0807FF44:
	adds r1, r3, #0
	adds r1, #0xe8
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0x24
_0807FF50:
	str r0, [r1, #0]
	adds r1, #4
	ldr r0, [r3, #4]
	lsrs r0, r0, #2
	lsls r0, r0, #3
	adds r0, #0x74
	str r0, [r1, #0]
	ldr r0, _0807FF6C
	ldr r0, [r0, #0]
	ldr r1, [r0, #4]
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x6c]
	b _08080256
_0807FF6C: .4byte gUnk_03006440
_0807FF70:
	ldr r0, _0807FF8C
	ldr r2, [r0, #0]
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0xb4
	str r0, [r1, #0]
	adds r1, #4
	movs r0, #0x60
_0807FF80:
	str r0, [r1, #0]
	ldr r0, [r2, #4]
	str r0, [r2, #8]
	movs r0, #0
	str r0, [r2, #0x6c]
	b _08080256
_0807FF8C: .4byte gUnk_03006440
_0807FF90:
	ldr r0, _0807FFE4
	ldr r4, [r0, #0]
	ldr r6, [r4, #4]
	ldr r0, [r4, #8]
	cmp r6, r0
	bne _0807FF9E
	b _08080256
_0807FF9E:
	adds r0, r6, #0
	movs r1, #3
	bl __udivsi3
	lsls r1, r0, #1
	adds r5, r1, r0
	adds r3, r5, #3
	adds r2, r4, #0
	adds r2, #0xe8
	ldr r1, _0807FFE8
	adds r0, r6, #1
	subs r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r0, #0xb8
	str r0, [r2, #0]
	adds r2, #4
	ldr r0, [r4, #4]
	adds r0, #1
	subs r0, r3, r0
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
_0807FFD4:
	adds r0, #0x10
	str r0, [r2, #0]
	ldr r0, [r4, #4]
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x6c]
	b _08080256
	.2byte 0x0000
_0807FFE4: .4byte gUnk_03006440
_0807FFE8: .4byte gUnk_084ECBB0
_0807FFEC:
	ldr r0, _08080000
	ldr r2, [r0, #0]
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0xbc
	str r0, [r1, #0]
	adds r1, #4
	movs r0, #0x60
	b _0808012E
	.2byte 0x0000
_08080000: .4byte gUnk_03006440
_08080004:
	ldr r0, _08080040
	ldr r5, [r0, #0]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	cmp r1, r0
	bne _08080012
	b _08080256
_08080012:
	adds r4, r5, #0
	adds r4, #0xe8
	adds r0, r1, #0
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #4
	adds r0, #0xb8
	str r0, [r4, #0]
	adds r4, #4
	ldr r0, [r5, #4]
	movs r1, #3
_0808002A:
	bl __udivsi3
	lsls r0, r0, #4
	adds r0, #0x20
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	str r0, [r5, #8]
	movs r0, #0
	str r0, [r5, #0x6c]
	b _08080256
	.2byte 0x0000
_08080040: .4byte gUnk_03006440
_08080044:
	ldr r0, _0808007C
	ldr r5, [r0, #0]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	cmp r1, r0
	bne _08080052
	b _08080256
_08080052:
	adds r4, r5, #0
	adds r4, #0xe8
	adds r0, r1, #0
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #4
	adds r0, #0xb8
	str r0, [r4, #0]
	adds r4, #4
	ldr r0, [r5, #4]
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #4
	adds r0, #0x20
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	str r0, [r5, #8]
	b _08080256
	.2byte 0x0000
_0808007C: .4byte gUnk_03006440
_08080080:
	ldr r3, _080800E4
	ldr r2, [r3, #0]
	ldr r1, [r2, #4]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _080800A2
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0xe8
	str r0, [r1, #0]
	adds r1, #4
	ldr r0, [r2, #4]
	lsls r0, r0, #4
	adds r0, #0x20
	str r0, [r1, #0]
	ldr r0, [r2, #4]
	str r0, [r2, #8]
_080800A2:
	ldr r0, [r3, #0]
	ldr r1, [r0, #4]
	ldr r0, [r0, #0x48]
	cmp r1, r0
	bne _080800D0
	cmp r1, #4
	bhi _080800D0
	ldr r0, _080800E8
	bl sub_08007290
	adds r4, r0, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
_080800D0:
	movs r0, #0xe
	movs r1, #3
	bl sub_0801A664
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
	b _08080256
	.2byte 0x0000
_080800E4: .4byte gUnk_03006440
_080800E8: .4byte 0x00140189
_080800EC:
	bl sub_0807C1D8
	ldr r0, _080800F4
	b _08080188
_080800F4: .4byte 0x0014018A
_080800F8:
	ldr r0, _08080118
	ldr r2, [r0, #0]
	ldr r3, [r2, #4]
	ldr r0, [r2, #8]
	cmp r3, r0
	bne _08080106
	b _08080256
_08080106:
	adds r1, r2, #0
	adds r1, #0xe8
	lsls r0, r3, #4
	adds r0, #0xb8
	str r0, [r1, #0]
	adds r1, #4
	movs r0, #0x30
	b _0808012E
	.2byte 0x0000
_08080118: .4byte gUnk_03006440
_0808011C:
	ldr r0, _08080138
	ldr r2, [r0, #0]
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0xc8
	str r0, [r1, #0]
	adds r1, #4
	ldr r0, [r2, #0x54]
	adds r0, #0x60
_0808012E:
	str r0, [r1, #0]
	ldr r0, [r2, #4]
	str r0, [r2, #8]
	b _08080256
	.2byte 0x0000
_08080138: .4byte gUnk_03006440
_0808013C:
	bl sub_0807C1D8
	ldr r0, _08080160
	ldr r2, [r0, #0]
	ldr r3, [r2, #0x58]
	ldr r1, [r2, #0x54]
	subs r0, r3, r1
	lsrs r0, r0, #1
	adds r1, r1, r0
	str r1, [r2, #0x54]
	subs r0, r1, r3
	cmp r0, #0
	bge _08080158
	negs r0, r0
_08080158:
	cmp r0, #1
	bne _08080164
	str r3, [r2, #0x54]
	b _08080178
_08080160: .4byte gUnk_03006440
_08080164:
	cmp r1, r3
	bne _08080178
	ldr r0, [r2, #0x5c]
	ldr r1, [r2, #0x60]
	adds r0, r0, r1
	str r0, [r2, #0x5c]
	cmp r0, #0xff
	bls _08080178
	movs r0, #0
	str r0, [r2, #0x5c]
_08080178:
	ldr r0, _080801AC
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #0xec
	ldr r0, [r0, #0x54]
	adds r0, #0x60
	str r0, [r1, #0]
	ldr r0, _080801B0
_08080188:
	bl sub_08007290
	adds r4, r0, #2
	adds r0, r4, #0
	bl sub_0801A638
	adds r0, #1
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	b _08080256
	.2byte 0x0000
_080801AC: .4byte gUnk_03006440
_080801B0: .4byte 0x00140186
_080801B4:
	ldr r4, _08080204
	ldr r0, [r4, #0]
	ldr r2, [r0, #0x54]
	ldr r1, [r0, #0x58]
	subs r2, r2, r1
	str r2, [r0, #0x54]
	adds r1, #2
	str r1, [r0, #0x58]
	cmp r2, #0
	bge _080801E6
	movs r0, #0x19
	bl sub_0805865C
	ldr r1, [r4, #0]
	movs r0, #0
	str r0, [r1, #0x54]
	subs r0, #0x14
	str r0, [r1, #0x58]
	ldr r0, [r1, #0x10]
	adds r0, #1
	str r0, [r1, #0x10]
	cmp r0, #3
	bls _080801E6
	movs r0, #1
	str r0, [r1, #0xc]
_080801E6:
	ldr r0, _08080204
	ldr r1, [r0, #0]
	ldr r7, _08080208
	adds r0, r1, r7
	ldr r1, [r1, #0x54]
	movs r2, #0x30
	subs r2, r2, r1
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #0xd2
	movs r3, #1
	bl sub_08065230
	b _08080256
	.2byte 0x0000
_08080204: .4byte gUnk_03006440
_08080208: .4byte 0x000005EC
_0808020C:
	ldr r4, _0808026C
	ldr r2, [r4, #0]
	adds r0, r2, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #8
	adds r1, r2, #0
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #0x10
	adds r2, #0xf8
	ldr r2, [r2, #0]
	movs r3, #9
	str r3, [sp, #0]
	movs r3, #0
	bl sub_08065424
	ldr r3, [r4, #0]
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r3, r1
	adds r1, r3, #0
	adds r1, #0xe8
	ldr r1, [r1, #0]
	adds r2, r3, #0
	adds r2, #0xec
	ldr r2, [r2, #0]
	subs r2, #0x10
	ldr r4, [r3, #0x10]
	movs r3, #6
	subs r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0]
	movs r3, #0xa
	bl sub_08065230
_08080256:
	ldr r1, _0808026C
	ldr r0, [r1, #0]
	ldr r0, [r0, #0x18]
	cmp r0, #0x12
	bls _08080262
	b _0808041E
_08080262:
	lsls r0, r0, #2
	ldr r1, _08080270
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0808026C: .4byte gUnk_03006440
_08080270: .4byte _08080274
_08080274:
	.4byte _080802C0
_08080278: .4byte _080802E0
_0808027C: .4byte _08080300
_08080280: .4byte _0808031C
_08080284: .4byte _08080334
_08080288: .4byte _08080350
_0808028C: .4byte _0808036C
_08080290: .4byte _08080394
_08080294: .4byte _0808039C
_08080298: .4byte _08080388
_0808029C: .4byte _08080394
_080802A0: .4byte _08080408
_080802A4: .4byte _08080394
_080802A8: .4byte _080803E2
_080802AC: .4byte _08080394
_080802B0: .4byte _08080394
_080802B4: .4byte _08080408
_080802B8: .4byte _0808041E
_080802BC: .4byte _08080394
_080802C0:
	ldr r2, _080802D8
	ldr r0, [r2, #0]
	adds r3, r0, #0
	adds r3, #0xf0
	ldr r2, _080802DC
	ldr r1, [r0, #4]
	lsls r1, r1, #4
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r1, r4
	b _080802F0
	.2byte 0x0000
_080802D8: .4byte gUnk_03006440
_080802DC: .4byte gUnk_030034E0
_080802E0:
	ldr r5, _080802F8
	ldr r0, [r5, #0]
	adds r3, r0, #0
	adds r3, #0xf0
	ldr r2, _080802FC
	ldr r1, [r0, #4]
	lsls r1, r1, #4
	adds r1, #0x70
_080802F0:
	ldr r0, [r2, #0]
	adds r0, r0, r1
	str r0, [r3, #0]
	b _0808041E
_080802F8: .4byte gUnk_03006440
_080802FC: .4byte gUnk_030034E0
_08080300:
	ldr r6, _08080314
	ldr r1, [r6, #0]
	adds r1, #0xf0
	ldr r0, _08080318
	ldr r0, [r0, #0]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1, #0]
	b _0808041E
_08080314: .4byte gUnk_03006440
_08080318: .4byte gUnk_030034E0
_0808031C:
	ldr r0, _0808032C
	ldr r1, [r0, #0]
	adds r1, #0xf0
	ldr r0, _08080330
	ldr r0, [r0, #0]
	movs r2, #0x90
	lsls r2, r2, #1
	b _0808037A
_0808032C: .4byte gUnk_03006440
_08080330: .4byte gUnk_030034E0
_08080334:
	ldr r3, _08080348
	ldr r1, [r3, #0]
	adds r1, #0xf0
	ldr r0, _0808034C
	ldr r0, [r0, #0]
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r1, #0]
	b _0808041E
_08080348: .4byte gUnk_03006440
_0808034C: .4byte gUnk_030034E0
_08080350:
	ldr r5, _08080364
	ldr r1, [r5, #0]
	adds r1, #0xf0
	ldr r0, _08080368
	ldr r0, [r0, #0]
	movs r6, #0x98
	lsls r6, r6, #1
	adds r0, r0, r6
	str r0, [r1, #0]
	b _0808041E
_08080364: .4byte gUnk_03006440
_08080368: .4byte gUnk_030034E0
_0808036C:
	ldr r7, _08080380
	ldr r1, [r7, #0]
	adds r1, #0xf0
	ldr r0, _08080384
	ldr r0, [r0, #0]
	movs r2, #0xa0
	lsls r2, r2, #1
_0808037A:
	adds r0, r0, r2
	str r0, [r1, #0]
	b _0808041E
_08080380: .4byte gUnk_03006440
_08080384: .4byte gUnk_030034E0
_08080388:
	ldr r3, _08080390
	ldr r0, [r3, #0]
	b _080803DA
	.2byte 0x0000
_08080390: .4byte gUnk_03006440
_08080394:
	ldr r4, _08080398
	b _080803D8
_08080398: .4byte gUnk_03006440
_0808039C:
	ldr r6, _080803D0
	ldr r1, [r6, #0]
	ldr r4, _080803D4
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	lsls r0, r0, #1
	adds r1, #0x56
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	subs r0, #1
	bl sub_0805D548
	adds r5, r0, #0
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	beq _080803D8
	ldr r2, [r4, #0]
	adds r2, #0xf0
	lsls r1, r5, #4
	movs r5, #0xa8
	lsls r5, r5, #1
	adds r1, r1, r5
	ldr r0, [r6, #0]
	b _0808041A
	.2byte 0x0000
_080803D0: .4byte gUnk_030034E0
_080803D4: .4byte gUnk_03006440
_080803D8:
	ldr r0, [r4, #0]
_080803DA:
	adds r0, #0xf0
	movs r1, #0
	str r1, [r0, #0]
	b _0808041E
_080803E2:
	ldr r6, _08080404
	ldr r2, [r6, #0]
	adds r3, r2, #0
	adds r3, #0xf0
	ldr r0, [r2, #0x44]
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r0, [r2, #4]
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r7, #0x82
	lsls r7, r7, #1
	adds r0, r0, r7
	adds r2, r2, r0
	str r2, [r3, #0]
	b _0808041E
	.2byte 0x0000
_08080404: .4byte gUnk_03006440
_08080408:
	ldr r1, _08080494
	ldr r0, [r1, #0]
	adds r2, r0, #0
	adds r2, #0xf0
	ldr r1, [r0, #4]
	lsls r1, r1, #4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r1, r1, r3
_0808041A:
	adds r0, r0, r1
	str r0, [r2, #0]
_0808041E:
	ldr r5, _08080494
	ldr r4, [r5, #0]
	adds r3, r4, #0
	adds r3, #0xe0
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	ldr r2, [r3, #0]
	subs r0, r0, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r2, r2, r0
	str r2, [r3, #0]
	adds r3, #4
	adds r0, r4, #0
	adds r0, #0xec
	ldr r0, [r0, #0]
	ldr r2, [r3, #0]
	subs r0, r0, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r2, r2, r0
	str r2, [r3, #0]
	ldr r6, _08080498
	adds r0, r4, r6
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _080804BC
	movs r5, #0
	movs r6, #0x80
	lsls r6, r6, #8
_08080460:
	ldr r7, _08080494
	ldr r2, [r7, #0]
	ldr r1, _08080498
	adds r0, r2, r1
	ldr r0, [r0, #0]
	lsls r1, r5, #1
	movs r3, #0x9b
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080804B4
	lsls r1, r5, #3
	adds r0, r2, #0
	adds r0, #0x74
	adds r4, r0, r1
	ldr r3, [r4, #0]
	cmp r3, #0
	beq _0808049C
	subs r0, r3, #1
	str r0, [r4, #0]
	b _080804B4
	.2byte 0x0000
_08080494: .4byte gUnk_03006440
_08080498: .4byte 0x000005B4
_0808049C:
	adds r0, r2, #0
	adds r0, #0x78
	adds r2, r0, r1
	ldr r0, [r2, #0]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r2, #0]
	cmp r1, #0x14
	bls _080804B4
	movs r0, #3
	str r0, [r4, #0]
	str r3, [r2, #0]
_080804B4:
	adds r5, #1
	cmp r5, #5
	bls _08080460
	b _080804E2
_080804BC:
	movs r5, #0
_080804BE:
	ldr r6, _08080538
	ldr r4, [r6, #0]
	lsls r2, r5, #3
	adds r0, r4, #0
	adds r0, #0x74
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0, #0]
	adds r4, #0x78
	adds r4, r4, r2
	adds r0, r5, #0
	movs r1, #5
	bl __umodsi3
	str r0, [r4, #0]
	adds r5, #1
	cmp r5, #5
	bls _080804BE
_080804E2:
	ldr r6, _08080538
	ldr r4, [r6, #0]
	bl sub_0805D3D4
	ldr r1, [r4, #0x34]
	cmp r1, r0
	beq _08080540
	ldr r0, [r6, #0]
	ldr r2, [r0, #0x34]
	movs r0, #9
	str r0, [sp, #0]
	movs r0, #0x1c
	movs r1, #0
	movs r3, #0
	bl sub_08065504
	ldr r0, [r6, #0]
	adds r4, r0, #0
	adds r4, #0x34
	ldr r5, [r0, #0x34]
	bl sub_0805D3D4
	adds r2, r0, #0
	ldr r0, [r6, #0]
	ldr r3, [r0, #0x38]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080659F4
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x38]
	adds r0, #0x40
	str r0, [r1, #0x38]
	ldr r1, _0808053C
	cmp r0, r1
	bls _08080554
	bl sub_0805D3D4
	ldr r1, [r6, #0]
	str r0, [r1, #0x34]
	movs r0, #0
	str r0, [r1, #0x38]
	b _08080554
_08080538: .4byte gUnk_03006440
_0808053C: .4byte 0x000003FF
_08080540:
	bl sub_0805D3D4
	adds r2, r0, #0
	movs r0, #9
	str r0, [sp, #0]
	movs r0, #0x1c
	movs r1, #0
	movs r3, #0
	bl sub_08065504
_08080554:
	ldr r6, _080805B0
	ldr r4, [r6, #0]
	ldr r0, [r4, #0]
	cmp r0, #2
	beq _080805CC
	bl sub_08085330
	ldr r1, [r4, #0x3c]
	cmp r1, r0
	beq _080805B8
	ldr r0, [r6, #0]
	ldr r2, [r0, #0x3c]
	movs r0, #9
	str r0, [sp, #0]
	movs r0, #0x1c
	movs r1, #1
	movs r3, #0
	bl sub_08065504
	ldr r0, [r6, #0]
	adds r4, r0, #0
	adds r4, #0x3c
	ldr r5, [r0, #0x3c]
	bl sub_08085330
	adds r2, r0, #0
	ldr r0, [r6, #0]
	ldr r3, [r0, #0x40]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080659F4
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x40]
	adds r0, #0x40
	str r0, [r1, #0x40]
	ldr r1, _080805B4
	cmp r0, r1
	bls _080805CC
	bl sub_08085330
	ldr r1, [r6, #0]
	str r0, [r1, #0x3c]
	movs r0, #0
	str r0, [r1, #0x40]
	b _080805CC
_080805B0: .4byte gUnk_03006440
_080805B4: .4byte 0x000003FF
_080805B8:
	bl sub_08085330
	adds r2, r0, #0
	movs r0, #9
	str r0, [sp, #0]
	movs r0, #0x1c
	movs r1, #1
	movs r3, #0
	bl sub_08065504
_080805CC:
	ldr r5, _0808062C
	ldr r2, [r5, #0]
	ldr r6, [r2, #0x28]
	movs r7, #1
	ands r6, r7
	cmp r6, #0
	beq _080805DC
	b _08080A62
_080805DC:
	ldr r0, [r2, #0x6c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r2, #0x6c]
	cmp r1, #3
	bhi _080805EA
	b _08080A62
_080805EA:
	ldr r4, [r2, #0x18]
	cmp r4, #0x14
	bne _080805F2
	b _08080A62
_080805F2:
	adds r1, r2, #0
	adds r1, #0xf4
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	bne _08080630
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0, #0]
	adds r0, #8
	subs r1, #0x10
	ldr r1, [r1, #0]
	subs r1, #0x10
	adds r2, #0xf8
	ldr r2, [r2, #0]
	movs r3, #9
	str r3, [sp, #0]
	movs r3, #0
	bl sub_08065424
	ldr r2, [r5, #0]
	movs r7, #0xb7
	lsls r7, r7, #3
	adds r0, r2, r7
	adds r1, r2, #0
	adds r1, #0xe0
	ldr r1, [r1, #0]
	adds r2, #0xe4
	b _080809DC
	.2byte 0x0000
_0808062C: .4byte gUnk_03006440
_08080630:
	cmp r0, #0
	beq _08080636
	b _0808099E
_08080636:
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r3, [r0, #0]
	ldrh r0, [r3, #0]
	cmp r0, #0xa
	bne _08080678
	ldr r0, [r2, #0]
	subs r0, #4
	cmp r0, #1
	bhi _0808064C
	b _08080A62
_0808064C:
	cmp r4, #0x12
	bne _08080652
	b _08080A62
_08080652:
	adds r0, r2, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #8
	adds r1, r2, #0
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #0x10
	ldr r2, [r3, #4]
	movs r3, #9
	str r3, [sp, #0]
	movs r3, #0
	bl sub_08065424
	ldr r2, [r5, #0]
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r2, r1
	b _080809D4
_08080678:
	cmp r0, #0
	bne _0808067E
	b _08080A62
_0808067E:
	ldr r0, [r2, #0]
	cmp r0, #3
	beq _08080686
	b _08080934
_08080686:
	cmp r4, #9
	bne _0808068C
	b _08080A62
_0808068C:
	cmp r4, #7
	bne _08080692
	b _08080A62
_08080692:
	cmp r4, #0xb
	bne _080806CE
	adds r0, r3, #0
	bl sub_0805AE94
	adds r2, r0, #0
	ldr r1, [r5, #0]
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #8
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #8
	movs r3, #9
	str r3, [sp, #0]
	movs r3, #0
	bl sub_08065424
	ldr r2, [r5, #0]
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r2, r3
	adds r1, r2, #0
	adds r1, #0xe8
	ldr r1, [r1, #0]
	adds r2, #0xec
	ldr r2, [r2, #0]
	subs r2, #8
	b _080809E0
_080806CE:
	ldrh r0, [r3, #0]
	cmp r0, #5
	bgt _0808079C
	cmp r0, #2
	blt _0808079C
	cmp r4, #1
	bne _08080740
	ldrb r0, [r3, #8]
	cmp r0, #0
	beq _08080700
	adds r0, r2, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #0x10
	adds r1, r2, #0
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #8
	movs r2, #9
	str r2, [sp, #0]
	movs r2, #1
	movs r3, #0
	bl sub_08065424
	b _08080728
_08080700:
	adds r0, r3, #0
	bl sub_0805AE94
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	ldr r1, [r5, #0]
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #0x10
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #8
	movs r3, #9
	str r3, [sp, #0]
	movs r3, #0
	bl sub_08065424
_08080728:
	ldr r0, _0808073C
	ldr r2, [r0, #0]
	movs r4, #0xb7
	lsls r4, r4, #3
	adds r0, r2, r4
	adds r1, r2, #0
	adds r1, #0xe8
	ldr r1, [r1, #0]
	adds r1, #8
	b _0808091C
_0808073C: .4byte gUnk_03006440
_08080740:
	ldrb r0, [r3, #8]
	cmp r0, #0
	beq _08080764
	adds r0, r2, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #8
	adds r1, r2, #0
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #8
	movs r2, #9
	str r2, [sp, #0]
	movs r2, #1
	movs r3, #0
	bl sub_08065424
	b _0808078C
_08080764:
	adds r0, r3, #0
	bl sub_0805AE94
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	ldr r1, [r5, #0]
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #8
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #8
	movs r3, #9
	str r3, [sp, #0]
	movs r3, #0
	bl sub_08065424
_0808078C:
	ldr r0, _08080798
	ldr r2, [r0, #0]
	movs r5, #0xb7
	lsls r5, r5, #3
	adds r0, r2, r5
	b _08080916
_08080798: .4byte gUnk_03006440
_0808079C:
	ldr r4, _080807B0
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x18]
	cmp r1, #6
	beq _080807BA
	cmp r1, #6
	bhi _080807B4
	cmp r1, #5
	beq _08080830
	b _080808A8
_080807B0: .4byte gUnk_03006440
_080807B4:
	cmp r1, #0xc
	bne _080808A8
	b _08080A62
_080807BA:
	adds r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0805AE94
	movs r1, #0xa
	bl __udivsi3
	cmp r0, #0
	bne _080807EA
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #0x10
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #8
	movs r2, #9
	str r2, [sp, #0]
	movs r2, #1
	movs r3, #0
	bl sub_08065424
	b _08080816
_080807EA:
	ldr r0, [r4, #0]
	adds r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0805AE94
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #0x10
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #8
	movs r3, #9
	str r3, [sp, #0]
	movs r3, #0
	bl sub_08065424
_08080816:
	ldr r0, _0808082C
	ldr r2, [r0, #0]
	movs r6, #0xb7
	lsls r6, r6, #3
	adds r0, r2, r6
	adds r1, r2, #0
	adds r1, #0xe8
	ldr r1, [r1, #0]
	adds r1, #8
	b _0808091C
	.2byte 0x0000
_0808082C: .4byte gUnk_03006440
_08080830:
	adds r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0805AE94
	movs r1, #0xa
	bl __udivsi3
	cmp r0, #0
	bne _08080860
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #0x14
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #8
	movs r2, #9
	str r2, [sp, #0]
	movs r2, #1
	movs r3, #0
	bl sub_08065424
	b _0808088E
_08080860:
	ldr r7, _080808A4
	ldr r0, [r7, #0]
	adds r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0805AE94
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	ldr r1, [r7, #0]
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #0x14
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #8
	movs r3, #9
	str r3, [sp, #0]
	movs r3, #0
	bl sub_08065424
_0808088E:
	ldr r0, _080808A4
	ldr r2, [r0, #0]
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r2, r1
	adds r1, r2, #0
	adds r1, #0xe8
	ldr r1, [r1, #0]
	adds r1, #0xc
	b _0808091C
	.2byte 0x0000
_080808A4: .4byte gUnk_03006440
_080808A8:
	ldr r4, _080808DC
	ldr r0, [r4, #0]
	adds r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0805AE94
	movs r1, #0xa
	bl __udivsi3
	cmp r0, #0
	bne _080808E0
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #8
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #8
	movs r2, #9
	str r2, [sp, #0]
	movs r2, #1
	movs r3, #0
	bl sub_08065424
	b _0808090C
_080808DC: .4byte gUnk_03006440
_080808E0:
	ldr r0, [r4, #0]
	adds r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0805AE94
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #8
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #8
	movs r3, #9
	str r3, [sp, #0]
	movs r3, #0
	bl sub_08065424
_0808090C:
	ldr r0, _08080930
	ldr r2, [r0, #0]
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r2, r3
_08080916:
	adds r1, r2, #0
	adds r1, #0xe8
	ldr r1, [r1, #0]
_0808091C:
	adds r2, #0xec
	ldr r2, [r2, #0]
	subs r2, #8
	movs r3, #0
	str r3, [sp, #0]
	movs r3, #0xc
	bl sub_08065230
	b _08080A62
	.2byte 0x0000
_08080930: .4byte gUnk_03006440
_08080934:
	cmp r0, #5
	beq _0808093A
	b _08080A62
_0808093A:
	ldrh r0, [r3, #0]
	cmp r0, #5
	ble _08080942
	b _08080A62
_08080942:
	cmp r0, #2
	bge _08080948
	b _08080A62
_08080948:
	ldrb r0, [r3, #8]
	cmp r0, #0
	bne _08080950
	b _08080A62
_08080950:
	strb r6, [r3, #8]
	ldr r0, [r5, #0]
	adds r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0805B068
	adds r2, r0, #0
	ldr r1, [r5, #0]
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #8
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #8
	movs r3, #9
	str r3, [sp, #0]
	movs r3, #0
	bl sub_08065424
	ldr r2, [r5, #0]
	movs r4, #0xb7
	lsls r4, r4, #3
	adds r0, r2, r4
	adds r1, r2, #0
	adds r1, #0xe8
	ldr r1, [r1, #0]
	adds r2, #0xec
	ldr r2, [r2, #0]
	subs r2, #8
	str r6, [sp, #0]
	movs r3, #0xa
	bl sub_08065230
	ldr r0, [r5, #0]
	adds r0, #0xf0
	ldr r0, [r0, #0]
	strb r7, [r0, #8]
	b _08080A62
_0808099E:
	ldr r0, [r2, #0]
	cmp r0, #3
	bne _08080A62
	ldr r0, [r2, #0x1c]
	cmp r0, #0xb
	bne _080809EA
	adds r0, r1, #0
	bl sub_0805AE94
	adds r2, r0, #0
	ldr r1, [r5, #0]
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #8
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #0x10
	movs r3, #9
	str r3, [sp, #0]
	movs r3, #0
	bl sub_08065424
	ldr r2, [r5, #0]
	movs r5, #0xb7
	lsls r5, r5, #3
	adds r0, r2, r5
_080809D4:
	adds r1, r2, #0
	adds r1, #0xe8
	ldr r1, [r1, #0]
	adds r2, #0xec
_080809DC:
	ldr r2, [r2, #0]
	subs r2, #0x10
_080809E0:
	str r6, [sp, #0]
	movs r3, #0xa
	bl sub_08065230
	b _08080A62
_080809EA:
	adds r0, r1, #0
	bl sub_0805AE94
	movs r1, #0xa
	bl __udivsi3
	cmp r0, #0
	bne _08080A18
	ldr r1, [r5, #0]
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #8
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #0x10
	movs r2, #9
	str r2, [sp, #0]
	movs r2, #1
	movs r3, #0
	bl sub_08065424
	b _08080A42
_08080A18:
	ldr r0, [r5, #0]
	adds r0, #0xf4
	bl sub_0805AE94
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	ldr r1, [r5, #0]
	adds r0, r1, #0
	adds r0, #0xe8
	ldr r0, [r0, #0]
	adds r0, #8
	adds r1, #0xec
	ldr r1, [r1, #0]
	subs r1, #0x10
	movs r3, #9
	str r3, [sp, #0]
	movs r3, #0
	bl sub_08065424
_08080A42:
	ldr r0, _08080A74
	ldr r2, [r0, #0]
	movs r6, #0xb7
	lsls r6, r6, #3
	adds r0, r2, r6
	adds r1, r2, #0
	adds r1, #0xe8
	ldr r1, [r1, #0]
	adds r2, #0xec
	ldr r2, [r2, #0]
	subs r2, #0x10
	movs r3, #0
	str r3, [sp, #0]
	movs r3, #0xc
	bl sub_08065230
_08080A62:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08080A74: .4byte gUnk_03006440
	thumb_func_end sub_0807C29C
