	thumb_func_start sub_0806441C
sub_0806441C: @ 0x0806441C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	ldr r0, _0806449C
	mov sl, r0
	bl sub_0800BA6C
	cmp r0, #0
	bne _0806443C
	bl _08064C60
_0806443C:
	bl sub_0805F184
	cmp r0, #0
	beq _08064448
	bl _08064C60
_08064448:
	bl sub_0800CC98
	cmp r0, #0
	beq _08064454
	bl _08064C60
_08064454:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08064460
	bl _08064C60
_08064460:
	bl sub_0800CE68
	cmp r0, #0
	beq _0806446C
	bl _08064C60
_0806446C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08064478
	bl _08064C60
_08064478:
	bl sub_0800D11C
	adds r4, r0, #0
	cmp r4, #0
	beq _08064486
	bl _08064C60
_08064486:
	bl sub_080020F4
	ldr r2, _080644A0
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x68
	strb r4, [r0, #0]
	b _080644A8
	.2byte 0x0000
_0806449C: .4byte gUnk_03005D80
_080644A0: .4byte gUnk_03003CE0
_080644A4:
	bl sub_080003F0
_080644A8:
	bl sub_0801AC78
	cmp r0, #0
	beq _080644A4
	bl sub_0800BB54
	movs r1, #0
	str r1, [sp, #0x7c]
	movs r7, #0
	ldr r2, _080644C4
	mov r8, r2
	add r6, sp, #0x44
	add r5, sp, #0x4c
	b _08064516
_080644C4: .4byte gUnk_03003E28
_080644C8:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r7, r0
	mov r3, r8
	adds r4, r0, r3
	ldr r3, [r4, #0]
	ldrb r0, [r3, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _08064502
	movs r0, #1
	lsls r0, r7
	ldr r1, [sp, #0x7c]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	lsls r1, r7, #1
	adds r2, r6, r1
	ldr r0, [r3, #4]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x18
	strh r0, [r2, #0]
	adds r1, r5, r1
	ldr r0, [r4, #0]
	ldrb r0, [r0, #6]
	lsrs r0, r0, #3
	b _0806450E
_08064502:
	lsls r1, r7, #1
	adds r2, r6, r1
	movs r0, #0
	strh r0, [r2, #0]
	adds r1, r5, r1
	movs r0, #0x64
_0806450E:
	strh r0, [r1, #0]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08064516:
	bl sub_08002164
	cmp r7, r0
	blo _080644C8
	bl sub_0800CD68
	movs r0, #0x3c
	bl sub_0801AC24
	ldr r0, _08064540
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	subs r0, #4
	cmp r0, #9
	bhi _08064616
	lsls r0, r0, #2
	ldr r1, _08064544
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08064540: .4byte gUnk_03003170
_08064544: .4byte _08064548
_08064548:
	.4byte _08064570
_0806454C: .4byte _08064616
_08064550: .4byte _08064586
_08064554: .4byte _08064616
_08064558: .4byte _0806458C
_0806455C: .4byte _0806459A
_08064560: .4byte _080645F6
_08064564: .4byte _08064616
_08064568: .4byte _08064616
_0806456C: .4byte _08064604
_08064570:
	bl sub_0800CDC0
	cmp r0, #0
	beq _08064616
	movs r0, #0x80
	lsls r0, r0, #3
_0806457C:
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	b _08064616
_08064586:
	movs r0, #0x80
	lsls r0, r0, #2
	b _0806457C
_0806458C:
	bl sub_0800CDC0
	cmp r0, #0
	beq _08064616
	movs r0, #0x80
	lsls r0, r0, #2
	b _0806457C
_0806459A:
	ldr r0, _080645B0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	subs r0, #1
	cmp r0, #0xd
	bhi _08064616
	lsls r0, r0, #2
	ldr r1, _080645B4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080645B0: .4byte gUnk_03003170
_080645B4: .4byte _080645B8
_080645B8:
	.4byte _080645F0
_080645BC: .4byte _08064616
_080645C0: .4byte _080645F0
_080645C4: .4byte _08064616
_080645C8: .4byte _080645F0
_080645CC: .4byte _08064616
_080645D0: .4byte _080645F0
_080645D4: .4byte _08064616
_080645D8: .4byte _080645F0
_080645DC: .4byte _08064616
_080645E0: .4byte _080645F0
_080645E4: .4byte _08064616
_080645E8: .4byte _08064616
_080645EC: .4byte _080645F0
_080645F0:
	movs r0, #0x80
	lsls r0, r0, #2
	b _0806457C
_080645F6:
	bl sub_0800CDC0
	cmp r0, #0
	beq _08064616
	movs r0, #0x80
	lsls r0, r0, #2
	b _0806457C
_08064604:
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	b _08064616
_08064612:
	bl sub_080003F0
_08064616:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08064612
	bl sub_08015C14
	bl sub_08015D2C
	bl sub_080003F0
	bl sub_080003F0
	bl sub_08063E30
	bl sub_0800CDF8
	cmp r0, #0
	beq _0806463C
	b _08064DFC
_0806463C:
	bl sub_080021A8
	cmp r0, #0
	beq _08064646
	b _08064DFC
_08064646:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r2, [sp, #0x68]
	ands r0, r2
	lsrs r0, r0, #8
	str r0, [sp, #0x70]
	movs r0, #0xff
	ands r2, r0
	str r2, [sp, #0x68]
	movs r3, #0
	mov sl, r3
	movs r7, #0
	mov r4, sp
	adds r4, #0x54
	str r4, [sp, #0x80]
	b _08064692
_08064666:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r7, r0
	ldr r1, _080647F8
	adds r0, r0, r1
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _0806468C
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0806468C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08064692:
	bl sub_08002164
	cmp r7, r0
	blo _08064666
	ldr r4, _080647FC
	adds r5, r4, #0
	adds r5, #0x7c
	movs r3, #0
	ldrsh r2, [r5, r3]
	mov r9, r2
	adds r4, #0x7e
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r8, r0
	ldr r2, [sp, #0x68]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp, #0x70]
	lsls r1, r3, #0x18
	asrs r1, r1, #0x18
	mov r3, sl
	lsls r2, r3, #0x18
	asrs r2, r2, #0x18
	bl sub_08092348
	ldr r0, _08064800
	bl sub_080003F4
	bl sub_0800CBEC
	movs r0, #0xa
	bl sub_08057624
	ldr r0, _08064804
	bl sub_08000420
	movs r6, #0
	mov r0, r9
	strh r0, [r5, #0]
	mov r1, r8
	strh r1, [r4, #0]
	bl sub_0805F07C
	ldr r3, _08064808
	ldr r2, [r3, #0x14]
	adds r0, r2, #0
	adds r0, #0x10
	lsls r2, r2, #5
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	ldr r2, [r3, #0x18]
	bl sub_08000AF0
	ldr r0, _0806480C
	add r7, sp, #0x10
	movs r1, #1
	negs r1, r1
	ldr r5, _08064810
	str r0, [sp, #0x20]
	str r6, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r5, #0
	bl sub_08006EE0
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x70]
	lsls r2, r2, #2
	mov r9, r2
	cmp r0, #0
	beq _0806475E
	movs r4, #0x8c
	ldr r0, _08064814
	adds r1, r5, #0
	bl sub_08006EE0
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _0806475E
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08006EE0
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _0806475E
	movs r1, #0
	add r2, sp, #0x2c
_08064746:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _08064746
	adds r0, r7, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0806475E:
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
	movs r0, #0
	bl sub_0801A6D4
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	movs r4, #0
	str r4, [sp, #0x54]
	ldr r1, _08064818
	ldr r2, _0806481C
	ldr r0, [sp, #0x80]
	bl sub_080B8578
	ldr r0, _08064820
	strh r4, [r0, #0]
	strh r4, [r0, #2]
	bl sub_080020F4
	ldr r1, _080647F8
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080647B6
	bl sub_0800CF10
	cmp r0, #0
	bne _080647B6
	bl sub_08015D50
	bl sub_08067D74
_080647B6:
	ldr r6, _080647F8
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	bne _080647D8
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xc6
	movs r1, #0
	strh r1, [r0, #0]
_080647D8:
	bl sub_0800CBEC
	bl sub_0800CD78
	movs r4, #0
	bl sub_0800CF10
	cmp r0, #0
	bne _08064828
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	strh r4, [r0, #0x20]
	b _08064828
	.2byte 0x0000
_080647F8: .4byte gUnk_03003CE0
_080647FC: .4byte gUnk_03003170
_08064800: .4byte 0x12001111
_08064804: .4byte 0x000514C8
_08064808: .4byte gUnk_03005D80
_0806480C: .4byte 0x0005008C
_08064810: .4byte gUnk_08518938
_08064814: .4byte 0x0006008C
_08064818: .4byte 0x0600E000
_0806481C: .4byte 0x05000200
_08064820: .4byte gUnk_03001250
_08064824:
	bl sub_080003F0
_08064828:
	ldr r0, _0806483C
	bl sub_08068330
	cmp r0, #0
	beq _08064824
	ldr r5, _0806483C
	movs r6, #0xe1
	lsls r6, r6, #3
	b _08064844
	.2byte 0x0000
_0806483C: .4byte 0x00000586
_08064840:
	bl sub_080003F0
_08064844:
	adds r0, r5, #0
	bl sub_080682B8
	cmp r0, #0
	bne _08064854
	adds r4, #1
	cmp r4, r6
	bls _08064840
_08064854:
	adds r0, r5, #0
	bl sub_08065E38
	b _08064860
_0806485C:
	bl sub_080003F0
_08064860:
	bl sub_0801AC78
	cmp r0, #0
	beq _0806485C
	ldr r0, _08064888
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	movs r1, #0
	movs r2, #1
	bl sub_0800A34C
	mov r3, sl
	cmp r3, #1
	bls _0806491C
	movs r4, #0
	mov r8, r4
	movs r7, #0
	ldr r5, _0806488C
	add r4, sp, #0x44
	b _080648B2
_08064888: .4byte gUnk_03003170
_0806488C: .4byte gUnk_084EBE84
_08064890:
	bl sub_080020F4
	cmp r7, r0
	beq _080648AC
	lsls r0, r7, #1
	adds r0, r4, r0
	ldrh r0, [r0, #0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r0, [r0, #0]
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_080648AC:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080648B2:
	bl sub_08002164
	cmp r7, r0
	blo _08064890
	ldr r1, _080648DC
	add r1, r9
	mov r2, r8
	lsrs r0, r2, #1
	ldrh r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r3, sl
	cmp r3, #3
	beq _080648EC
	cmp r3, #3
	bgt _080648E0
	cmp r3, #2
	beq _080648E8
	b _080648F4
_080648DC: .4byte gUnk_084EBE84
_080648E0:
	mov r4, sl
	cmp r4, #4
	beq _080648F0
	b _080648F4
_080648E8:
	movs r0, #0xf
	b _080648F6
_080648EC:
	movs r0, #0x14
	b _080648F6
_080648F0:
	movs r0, #0x19
	b _080648F6
_080648F4:
	movs r0, #0xa
_080648F6:
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xa
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_080008C8
	movs r1, #0x32
	bl sub_080B95E4
	adds r0, #0x64
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	b _08064930
_0806491C:
	bl sub_080008C8
	ldr r1, _0806494C
	add r1, r9
	ldrh r4, [r1, #0]
	movs r1, #0x32
	bl sub_080B95E4
	adds r0, #0x64
	muls r0, r4, r0
_08064930:
	movs r1, #0x64
	bl sub_080B956C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [sp, #0x68]
	cmp r3, #7
	bhi _080649D6
	lsls r0, r3, #2
	ldr r1, _08064950
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0806494C: .4byte gUnk_084EBE84
_08064950: .4byte _08064954
_08064954:
	.4byte _080649D2
_08064958: .4byte _080649B6
_0806495C: .4byte _080649BA
_08064960: .4byte _080649C0
_08064964: .4byte _080649C6
_08064968: .4byte _080649CC
_0806496C: .4byte _08064974
_08064970: .4byte _08064980
_08064974:
	movs r0, #0x64
	ldr r1, [sp, #0x70]
	adds r4, r1, #0
	muls r4, r0, r4
	mov r8, r4
	b _080649D6
_08064980:
	movs r2, #0
	str r2, [sp, #0x74]
	movs r4, #0
	movs r7, #0
	add r5, sp, #0x4c
	b _080649A2
_0806498C:
	lsls r0, r7, #1
	adds r0, r5, r0
	ldrh r0, [r0, #0]
	cmp r0, #7
	bne _0806499C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0806499C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080649A2:
	bl sub_08002164
	cmp r7, r0
	blo _0806498C
	adds r0, r4, #0
	adds r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x78]
	b _080649D6
_080649B6:
	movs r3, #2
	b _080649D4
_080649BA:
	movs r4, #3
	str r4, [sp, #0x74]
	b _080649D6
_080649C0:
	movs r0, #6
	str r0, [sp, #0x74]
	b _080649D6
_080649C6:
	movs r1, #4
	str r1, [sp, #0x74]
	b _080649D6
_080649CC:
	movs r2, #5
	str r2, [sp, #0x74]
	b _080649D6
_080649D2:
	movs r3, #1
_080649D4:
	str r3, [sp, #0x74]
_080649D6:
	ldr r1, _08064A68
	ldr r0, [sp, #0x5c]
	ands r0, r1
	ldr r1, _08064A6C
	ands r0, r1
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x64]
	ldrh r4, [r0, #0]
	bl sub_080020F4
	cmp r4, r0
	beq _080649F0
	b _08064BA0
_080649F0:
	movs r7, #0
	ldr r1, _08064A70
	mov r9, r1
_080649F6:
	ldr r0, _08064A74
	movs r1, #1
	lsls r1, r7
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _08064A06
	b _08064B8C
_08064A06:
	ldr r1, _08064A78
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #3
	subs r0, r0, r7
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r6, r1, r0
	movs r2, #0xee
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _08064A24
	b _08064B8C
_08064A24:
	ldr r3, [sp, #0x68]
	cmp r3, #6
	beq _08064A7C
	cmp r3, #7
	beq _08064AB2
	movs r0, #0x86
	lsls r0, r0, #2
	adds r4, r6, r0
	add r5, sp, #0x4c
	ldr r1, [sp, #0x64]
	ldrh r0, [r1, #0]
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0, #0]
	lsls r0, r0, #2
	add r0, r9
	ldrh r2, [r0, #0]
	ldrh r0, [r6, #0]
	adds r0, #4
	str r0, [sp, #0]
	add r0, sp, #0x5c
	adds r1, r4, #0
	ldr r3, [sp, #0x74]
	bl sub_08069388
	ldr r0, [sp, #0x74]
	mov r1, r8
	adds r2, r4, #0
	bl sub_08021D00
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08064AD4
	.2byte 0x0000
_08064A68: .4byte 0xFF00FFFF
_08064A6C: .4byte 0x00FFFFFF
_08064A70: .4byte gUnk_084EBE86
_08064A74: .4byte gUnk_030056FC
_08064A78: .4byte gUnk_030056F4
_08064A7C:
	bl sub_080923B0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bne _08064A8C
	movs r0, #0
	b _08064AD2
_08064A8C:
	movs r2, #0x86
	lsls r2, r2, #2
	adds r4, r6, r2
	ldr r3, [sp, #0x64]
	ldrh r0, [r3, #0]
	str r0, [sp, #0]
	add r0, sp, #0x5c
	adds r1, r4, #0
	movs r2, #0x64
	movs r3, #7
	bl sub_08069388
	ldr r0, [sp, #0x74]
	mov r1, r8
	adds r2, r4, #0
	bl sub_08021D00
	lsls r0, r0, #0x10
	b _08064AD0
_08064AB2:
	movs r4, #0xe7
	lsls r4, r4, #1
	adds r0, r6, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r0, r8
	movs r2, #0xc8
	bl sub_08021C74
	ldr r3, [sp, #0x78]
	muls r0, r3, r0
	cmp r0, #0
	bge _08064ACE
	adds r0, #7
_08064ACE:
	lsls r0, r0, #0xd
_08064AD0:
	lsrs r0, r0, #0x10
_08064AD2:
	add r5, sp, #0x4c
_08064AD4:
	add r4, sp, #0x5c
	strh r0, [r4, #4]
	movs r0, #0xa
	strh r0, [r6, #0xc]
	ldrh r0, [r4, #4]
	adds r1, r6, #0
	adds r1, #0x4a
	strh r0, [r1, #0]
	ldrh r0, [r1, #0]
	str r0, [r6, #0x4c]
	ldrb r1, [r4, #2]
	adds r0, r6, #0
	adds r0, #0x7c
	strh r1, [r0, #0]
	movs r0, #3
	ldrsb r0, [r4, r0]
	adds r1, r6, #0
	adds r1, #0x7e
	strh r0, [r1, #0]
	ldr r0, [sp, #0x64]
	ldrh r1, [r0, #0]
	adds r0, r6, #0
	adds r0, #0x58
	strh r1, [r0, #0]
	ldrb r0, [r4, #1]
	adds r1, r6, #0
	adds r1, #0x62
	strh r0, [r1, #0]
	ldrh r1, [r6, #2]
	add r0, sp, #0x5c
	strb r1, [r0, #0]
	ldr r1, _08064B38
	adds r0, r6, r1
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _08064B54
	ldrb r1, [r4, #1]
	adds r0, r6, #0
	bl sub_0801E244
	adds r1, r0, #0
	cmp r1, #0
	beq _08064B3C
	ldrh r0, [r6, #0]
	adds r0, #4
	ldrb r2, [r4, #1]
	bl sub_0801DB94
	b _08064B54
	.2byte 0x0000
_08064B38: .4byte 0x00000226
_08064B3C:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0801E104
	adds r1, r0, #0
	cmp r1, #0
	beq _08064B54
	ldrh r0, [r6, #0]
	adds r0, #4
	ldrb r2, [r4, #1]
	bl sub_0801DB94
_08064B54:
	adds r0, r4, #0
	bl sub_080660EC
	adds r2, r6, #0
	adds r2, #0x5a
	ldrh r1, [r2, #0]
	ldr r0, [sp, #0x7c]
	orrs r0, r1
	strh r0, [r2, #0]
	movs r2, #0x86
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r1, [r4, #4]
	ldr r4, [sp, #0x64]
	ldrh r3, [r4, #0]
	lsls r2, r3, #1
	adds r2, r5, r2
	ldrh r2, [r2, #0]
	lsls r2, r2, #2
	add r2, r9
	ldrh r2, [r2, #0]
	ldrh r4, [r6, #0]
	adds r4, #4
	str r4, [sp, #0]
	ldr r4, [sp, #0x74]
	str r4, [sp, #4]
	bl sub_08069080
_08064B8C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bhi _08064B98
	b _080649F6
_08064B98:
	ldr r3, _08064B9C
	b _08064BDC
_08064B9C: .4byte gUnk_030056FC
_08064BA0:
	movs r7, #0
	ldr r3, _08064C54
	mov r8, r3
	ldr r5, _08064C58
	movs r4, #1
_08064BAA:
	adds r1, r4, #0
	lsls r1, r7
	mov r2, r8
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _08064BD2
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #3
	subs r0, r0, r7
	lsls r0, r0, #5
	ldr r1, [r5, #0]
	adds r6, r1, r0
	adds r2, r6, #0
	adds r2, #0x5a
	ldrh r1, [r2, #0]
	ldr r0, [sp, #0x7c]
	orrs r0, r1
	strh r0, [r2, #0]
_08064BD2:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _08064BAA
_08064BDC:
	ldr r0, [r3, #0]
	cmp r0, #0
	beq _08064BE8
	movs r0, #0x1a
	bl sub_0805865C
_08064BE8:
	movs r0, #0xa
	bl sub_08057624
	bl sub_080020F4
	ldr r5, _08064C5C
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x90
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08064C22
	bl sub_0800CF10
	cmp r0, #0
	bne _08064C22
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x68
	movs r1, #1
	strb r1, [r0, #0]
_08064C22:
	bl sub_0806617C
	bl sub_080020F4
	ldr r1, _08064C5C
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08064C44
	b _08064DFC
_08064C44:
	bl sub_0800D11C
	cmp r0, #0
	beq _08064C4E
	b _08064DFC
_08064C4E:
	bl sub_08015C38
	b _08064DFC
_08064C54: .4byte gUnk_030056FC
_08064C58: .4byte gUnk_030056F4
_08064C5C: .4byte gUnk_03003CE0
_08064C60:
	bl sub_0800CC98
	cmp r0, #0
	bne _08064C6C
	bl sub_08015C14
_08064C6C:
	bl sub_0800CD68
	add r6, sp, #0x58
	movs r4, #0
	movs r3, #0
	mov r9, r3
	strh r4, [r6, #0]
	mov r0, sp
	adds r0, #0x5a
	strh r4, [r0, #0]
	bl sub_080020F4
	ldr r1, _08064CA4
	mov r8, r1
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	add r0, r8
	strh r4, [r0, #0x20]
	bl sub_080020F4
	muls r0, r5, r0
	add r0, r8
	adds r0, #0x68
	mov r2, r9
	strb r2, [r0, #0]
	b _08064CAC
	.2byte 0x0000
_08064CA4: .4byte gUnk_03003CE0
_08064CA8:
	bl sub_080003F0
_08064CAC:
	bl sub_08058DB0
	cmp r0, #0
	beq _08064CA8
	b _08064D32
_08064CB6:
	bl sub_0800CC98
	cmp r0, #0
	bne _08064CC2
	bl sub_08015C14
_08064CC2:
	movs r4, #0
	str r4, [sp, #0x6c]
	movs r7, #0
	ldr r4, _08064CCC
	b _08064CEE
_08064CCC: .4byte gUnk_03003E28
_08064CD0:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r7, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _08064CE8
	movs r0, #1
	str r0, [sp, #0x6c]
_08064CE8:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08064CEE:
	bl sub_08002164
	cmp r7, r0
	blo _08064CD0
	cmp r7, #1
	beq _08064D38
	movs r0, #1
	mov r1, sl
	ldr r3, [r1, #8]
	str r0, [sp, #0]
	movs r0, #0x21
	add r1, sp, #0x58
	mov r2, sp
	adds r2, #0x5a
	bl sub_08008CC4
	ldrh r3, [r6, #0]
	movs r0, #0
	str r0, [sp, #0]
	mov r0, sl
	adds r0, #0x1c
	str r0, [sp, #4]
	mov r2, sl
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [r2, #0]
	str r0, [sp, #0xc]
	movs r0, #0x78
	movs r1, #0x3c
	movs r2, #0x21
	bl sub_08007CF0
	bl sub_080003F0
_08064D32:
	ldr r3, [sp, #0x6c]
	cmp r3, #0
	bne _08064CB6
_08064D38:
	bl sub_0800CF10
	adds r4, r0, #0
	cmp r4, #0
	bne _08064D52
	bl sub_080020F4
	ldr r2, _08064D5C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	strh r4, [r0, #0x20]
_08064D52:
	bl sub_0806617C
	movs r4, #0
	b _08064D64
	.2byte 0x0000
_08064D5C: .4byte gUnk_03003CE0
_08064D60:
	bl sub_080003F0
_08064D64:
	ldr r0, _08064D78
	bl sub_08068330
	cmp r0, #0
	beq _08064D60
	ldr r5, _08064D78
	movs r6, #0xe1
	lsls r6, r6, #3
	b _08064D80
	.2byte 0x0000
_08064D78: .4byte 0x00000586
_08064D7C:
	bl sub_080003F0
_08064D80:
	adds r0, r5, #0
	bl sub_080682B8
	cmp r0, #0
	bne _08064D90
	adds r4, #1
	cmp r4, r6
	bls _08064D7C
_08064D90:
	adds r0, r5, #0
	bl sub_08065E38
	bl sub_080020F4
	ldr r5, _08064E0C
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x90
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08064DCA
	bl sub_0800CF10
	cmp r0, #0
	bne _08064DCA
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x68
	movs r1, #1
	strb r1, [r0, #0]
_08064DCA:
	bl sub_0800CC98
	cmp r0, #0
	bne _08064DF4
	bl sub_0800CF10
	cmp r0, #0
	bne _08064DF4
	bl sub_0805F184
	cmp r0, #0
	bne _08064DF4
	ldr r0, _08064E10
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	movs r1, #0
	movs r2, #1
	bl sub_0800A34C
	bl sub_08015C38
_08064DF4:
	bl sub_0800CBEC
	bl sub_0800CD78
_08064DFC:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08064E0C: .4byte gUnk_03003CE0
_08064E10: .4byte gUnk_03003170
	thumb_func_end sub_0806441C
