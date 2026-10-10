	thumb_func_start sub_080624D8
sub_080624D8: @ 0x080624D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xbc
	bl sub_0800CD8C
	cmp r0, #0
	beq _080624F0
	bl _08062D84
_080624F0:
	bl sub_0800D11C
	cmp r0, #0
	beq _080624FC
	bl _08062D84
_080624FC:
	bl sub_0805EF90
	cmp r0, #0
	beq _08062508
	bl _08062D84
_08062508:
	ldr r0, _08062528
	ldr r0, [r0, #0]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0xb4]
	add r2, sp, #0x38
	mov sl, r2
	cmp r0, #4
	bls _0806251C
	b _08062786
_0806251C:
	lsls r0, r0, #2
	ldr r1, _0806252C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08062528: .4byte gUnk_03003470
_0806252C: .4byte _08062530
_08062530:
	.4byte _08062544
_08062534: .4byte _080625B4
_08062538: .4byte _08062628
_0806253C: .4byte _0806269C
_08062540: .4byte _08062718
_08062544:
	ldr r0, _080625A8
	add r6, sp, #0x1c
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r5, _080625AC
	str r0, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r2, [sp, #0x34]
	adds r1, r5, #0
	bl sub_08006EE0
	str r0, [sp, #0x24]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0xb4]
	add r2, sp, #0x38
	mov sl, r2
	cmp r0, #0
	bne _0806256E
	b _08062786
_0806256E:
	movs r4, #2
	ldr r0, _080625B0
	adds r1, r5, #0
	bl sub_08006EE0
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _08062580
	b _08062786
_08062580:
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08006EE0
	str r0, [sp, #0x28]
	cmp r0, #0
	bne _08062596
	b _08062786
_08062596:
	movs r1, #0
	mov r2, sl
_0806259A:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0806259A
	adds r0, r6, #0
	b _080626FE
_080625A8: .4byte 0x00050002
_080625AC: .4byte gUnk_08518938
_080625B0: .4byte 0x00060002
_080625B4:
	ldr r5, _0806261C
	add r7, sp, #0x1c
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	ldr r6, _08062620
	str r5, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x24]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0xb4]
	add r2, sp, #0x38
	mov sl, r2
	cmp r0, #0
	bne _080625E0
	b _08062786
_080625E0:
	ldr r4, _08062624
	ands r4, r5
	movs r0, #0xc0
	lsls r0, r0, #0xb
	orrs r0, r4
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _080625F8
	b _08062786
_080625F8:
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r0, r4
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x28]
	cmp r0, #0
	bne _0806260C
	b _08062786
_0806260C:
	movs r1, #0
	mov r2, sl
_08062610:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _08062610
	b _080626FC
_0806261C: .4byte 0x0005015B
_08062620: .4byte gUnk_08518938
_08062624: .4byte 0x0000FFFF
_08062628:
	ldr r5, _08062690
	add r7, sp, #0x1c
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	ldr r6, _08062694
	str r5, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x24]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0xb4]
	add r2, sp, #0x38
	mov sl, r2
	cmp r0, #0
	bne _08062654
	b _08062786
_08062654:
	ldr r4, _08062698
	ands r4, r5
	movs r0, #0xc0
	lsls r0, r0, #0xb
	orrs r0, r4
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _0806266C
	b _08062786
_0806266C:
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r0, r4
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x28]
	cmp r0, #0
	bne _08062680
	b _08062786
_08062680:
	movs r1, #0
	mov r2, sl
_08062684:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _08062684
	b _080626FC
_08062690: .4byte 0x0005015C
_08062694: .4byte gUnk_08518938
_08062698: .4byte 0x0000FFFF
_0806269C:
	ldr r5, _0806270C
	add r7, sp, #0x1c
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	ldr r6, _08062710
	str r5, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x24]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0xb4]
	add r2, sp, #0x38
	mov sl, r2
	cmp r0, #0
	beq _08062786
	ldr r4, _08062714
	ands r4, r5
	movs r0, #0xc0
	lsls r0, r0, #0xb
	orrs r0, r4
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _08062786
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r0, r4
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x28]
	cmp r0, #0
	beq _08062786
	movs r1, #0
	mov r2, sl
_080626F2:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _080626F2
_080626FC:
	adds r0, r7, #0
_080626FE:
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
	b _08062786
_0806270C: .4byte 0x0005015D
_08062710: .4byte gUnk_08518938
_08062714: .4byte 0x0000FFFF
_08062718:
	ldr r5, _080627BC
	add r7, sp, #0x1c
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	ldr r6, _080627C0
	str r5, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x24]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0xb4]
	add r2, sp, #0x38
	mov sl, r2
	cmp r0, #0
	beq _08062786
	ldr r4, _080627C4
	ands r4, r5
	movs r0, #0xc0
	lsls r0, r0, #0xb
	orrs r0, r4
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _08062786
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r0, r4
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x28]
	cmp r0, #0
	beq _08062786
	movs r1, #0
	mov r2, sl
_0806276E:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0806276E
	adds r0, r7, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_08062786:
	add r1, sp, #0x1c
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0xe0
	movs r4, #8
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x2c]
	strh r2, [r1, #0x30]
	strh r3, [r1, #0x32]
	strh r4, [r1, #0x2e]
	movs r7, #0
	ldr r5, _080627C8
_080627A0:
	lsls r4, r7, #2
	adds r0, r4, r5
	ldr r0, [r0, #0]
	bl sub_08007290
	ldr r6, [sp, #0xb4]
	adds r4, r6, r4
	str r0, [r4, #0]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _080627A0
	b _080627D0
_080627BC: .4byte 0x0005015E
_080627C0: .4byte gUnk_08518938
_080627C4: .4byte 0x0000FFFF
_080627C8: .4byte gUnk_084EBE54
_080627CC:
	bl sub_080003F0
_080627D0:
	bl sub_0801AC78
	cmp r0, #0
	beq _080627CC
	bl sub_0800CE40
	movs r0, #0
	mov r8, r0
	movs r0, #0x12
	bl sub_0805865C
_080627E6:
	bl sub_08015C14
	movs r7, #0
	mov r1, r8
	adds r1, #0x80
	str r1, [sp, #0xb8]
	mov r6, r8
	movs r2, #0x80
	lsls r2, r2, #3
	subs r6, r2, r6
	mov r9, r6
_080627FC:
	ldr r1, _08062820
	lsls r2, r7, #3
	adds r1, r2, r1
	ldr r0, _08062824
	adds r3, r2, r0
	lsls r0, r7, #2
	adds r5, r0, #0
	add r5, sp
	adds r5, #0x1c
	adds r5, #0x34
	ldr r4, [r1, #0]
	ldr r1, [r3, #0]
	adds r6, r0, #0
	adds r3, r2, #0
	cmp r4, r1
	bne _08062828
	str r4, [r5, #0]
	b _0806283A
_08062820: .4byte gUnk_084EBE14
_08062824: .4byte gUnk_084EBE34
_08062828:
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	asrs r1, r1, #0xa
	mov r0, r9
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r1, r1, r0
	str r1, [r5, #0]
_0806283A:
	ldr r0, _08062858
	adds r0, #4
	adds r0, r3, r0
	ldr r2, _0806285C
	adds r1, r3, r2
	adds r5, r6, #0
	add r5, sp
	adds r5, #0x1c
	adds r5, #0x44
	ldr r4, [r0, #0]
	ldr r0, [r1, #0]
	cmp r4, r0
	bne _08062860
	str r4, [r5, #0]
	b _08062870
_08062858: .4byte gUnk_084EBE14
_0806285C: .4byte gUnk_084EBE38
_08062860:
	mov r1, r8
	muls r1, r0, r1
	asrs r1, r1, #0xa
	mov r0, r9
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r1, r1, r0
	str r1, [r5, #0]
_08062870:
	cmp r7, #1
	bne _080628B4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _080628B0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080628B4
	ldr r0, [sp, #0x54]
	asrs r0, r0, #8
	ldr r1, [sp, #0x64]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp, #0]
	mov r2, sl
	str r2, [sp, #4]
	ldr r2, [sp, #0x24]
	str r2, [sp, #8]
	ldr r2, [sp, #0x1c]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08007CF0
	b _080628DC
	.2byte 0x0000
_080628B0: .4byte gUnk_03003D10
_080628B4:
	add r0, sp, #0x50
	adds r0, r0, r6
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	add r1, sp, #0x60
	adds r1, r1, r6
	ldr r1, [r1, #0]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp, #0]
	mov r6, sl
	str r6, [sp, #4]
	ldr r2, [sp, #0x24]
	str r2, [sp, #8]
	ldr r2, [sp, #0x1c]
	str r2, [sp, #0xc]
	adds r2, r7, #0
	movs r3, #0
	bl sub_08007CF0
_080628DC:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _080627FC
	ldr r0, [sp, #0xb8]
	mov r8, r0
	bl sub_080003F0
	ldr r0, _08062A30
	cmp r8, r0
	bgt _080628F6
	b _080627E6
_080628F6:
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
	movs r0, #9
	movs r1, #0xf
	movs r2, #9
	movs r3, #1
	bl sub_0805D720
	str r0, [sp, #0xa8]
	ldr r0, _08062A34
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	movs r1, #1
	str r1, [sp, #0x9c]
	cmp r0, #0xc
	beq _0806291E
	movs r2, #0
	str r2, [sp, #0x9c]
_0806291E:
	movs r6, #8
	str r6, [sp, #0xa4]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0xa0]
_08062928:
	bl sub_08015C14
	ldr r1, [sp, #0xa0]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0xa4]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	cmp r1, #0
	ble _08062952
	lsls r1, r0, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08062952
	ldr r6, _08062A38
	str r6, [sp, #0xa4]
_08062952:
	ldr r1, [sp, #0xa4]
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _08062968
	ldr r2, [sp, #0xa0]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xdf
	bgt _08062968
	movs r6, #8
	str r6, [sp, #0xa4]
_08062968:
	movs r7, #0
	ldr r0, [sp, #0x9c]
	lsls r0, r0, #2
	str r0, [sp, #0xb0]
	ldr r1, _08062A3C
	mov r9, r1
_08062974:
	lsls r4, r7, #1
	adds r1, r4, #0
	add r1, sp
	adds r1, #0x1c
	adds r1, #0x54
	adds r2, r4, #0
	add r2, sp
	adds r2, #0x1c
	adds r2, #0x5c
	movs r0, #1
	ldr r3, [sp, #0x24]
	str r0, [sp, #0]
	adds r0, r7, #0
	bl sub_08008CC4
	ldr r2, [sp, #0x9c]
	cmp r2, r7
	beq _0806299A
	b _08062ACC
_0806299A:
	cmp r7, #1
	bne _08062A44
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r6, _08062A40
	adds r0, r0, r6
	ldr r0, [r0, #0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08062A44
	mov r1, r9
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	mov r2, sp
	adds r2, #0x72
	add r4, sp, #0x1c
	asrs r5, r0, #8
	asrs r1, r1, #8
	mov r8, r1
	ldrh r3, [r2, #0]
	ldrh r2, [r4, #0x2e]
	ldrh r6, [r4, #0x2c]
	adds r1, r2, r6
	strh r1, [r4, #0x2c]
	lsls r0, r2, #0x10
	cmp r0, #0
	ble _080629E8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r6, #0x30
	ldrsh r1, [r4, r6]
	cmp r0, r1
	ble _080629E8
	negs r0, r2
	strh r0, [r4, #0x2e]
_080629E8:
	ldrh r2, [r4, #0x2e]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08062A02
	movs r6, #0x2c
	ldrsh r1, [r4, r6]
	movs r6, #0x32
	ldrsh r0, [r4, r6]
	cmp r1, r0
	bge _08062A02
	negs r0, r2
	strh r0, [r4, #0x2e]
_08062A02:
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	str r0, [sp, #0xc]
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	str r0, [sp, #0x10]
	movs r2, #0x2c
	ldrsh r0, [r4, r2]
	str r0, [sp, #0x14]
	movs r0, #0xff
	str r0, [sp, #0x18]
	adds r0, r5, #0
	mov r1, r8
	movs r2, #7
	bl sub_08007F0C
	b _08062B42
_08062A30: .4byte 0x000003FF
_08062A34: .4byte gUnk_03003170
_08062A38: .4byte 0x0000FFF8
_08062A3C: .4byte gUnk_084EBE34
_08062A40: .4byte gUnk_03003D10
_08062A44:
	lsls r1, r7, #3
	mov r6, r9
	adds r0, r1, r6
	ldr r2, [r0, #0]
	ldr r0, _08062AC8
	adds r1, r1, r0
	ldr r1, [r1, #0]
	add r0, sp, #0x70
	adds r0, r0, r4
	add r5, sp, #0x1c
	asrs r3, r2, #8
	asrs r4, r1, #8
	ldrh r0, [r0, #0]
	mov r8, r0
	ldrh r2, [r5, #0x2e]
	ldrh r6, [r5, #0x2c]
	adds r1, r2, r6
	strh r1, [r5, #0x2c]
	lsls r0, r2, #0x10
	cmp r0, #0
	ble _08062A7E
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r6, #0x30
	ldrsh r1, [r5, r6]
	cmp r0, r1
	ble _08062A7E
	negs r0, r2
	strh r0, [r5, #0x2e]
_08062A7E:
	ldrh r6, [r5, #0x2e]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08062A98
	movs r2, #0x2c
	ldrsh r1, [r5, r2]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bge _08062A98
	negs r0, r6
	strh r0, [r5, #0x2e]
_08062A98:
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	str r0, [sp, #0xc]
	movs r6, #0x2c
	ldrsh r0, [r5, r6]
	str r0, [sp, #0x10]
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	str r0, [sp, #0x14]
	movs r0, #0xff
	str r0, [sp, #0x18]
	adds r0, r3, #0
	adds r1, r4, #0
	adds r2, r7, #0
	mov r3, r8
	bl sub_08007F0C
	b _08062B42
_08062AC8: .4byte gUnk_084EBE38
_08062ACC:
	cmp r7, #1
	bne _08062B14
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r2, _08062B10
	adds r0, r0, r2
	ldr r0, [r0, #0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08062B14
	mov r6, r9
	ldr r0, [r6, #8]
	asrs r0, r0, #8
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	mov r2, sp
	adds r2, #0x72
	ldrh r3, [r2, #0]
	movs r2, #0
	str r2, [sp, #0]
	mov r2, sl
	str r2, [sp, #4]
	ldr r2, [sp, #0x24]
	str r2, [sp, #8]
	ldr r2, [sp, #0x1c]
	str r2, [sp, #0xc]
	movs r2, #7
	bl sub_08007CF0
	b _08062B42
_08062B10: .4byte gUnk_03003D10
_08062B14:
	lsls r1, r7, #3
	mov r6, r9
	adds r0, r1, r6
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	ldr r2, _08062C08
	adds r1, r1, r2
	ldr r1, [r1, #0]
	asrs r1, r1, #8
	add r2, sp, #0x70
	adds r2, r2, r4
	ldrh r3, [r2, #0]
	movs r2, #0
	str r2, [sp, #0]
	mov r6, sl
	str r6, [sp, #4]
	ldr r2, [sp, #0x24]
	str r2, [sp, #8]
	ldr r2, [sp, #0x1c]
	str r2, [sp, #0xc]
	adds r2, r7, #0
	bl sub_08007CF0
_08062B42:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bhi _08062B4E
	b _08062974
_08062B4E:
	ldr r0, [sp, #0xb4]
	ldr r1, [sp, #0xb0]
	adds r4, r0, r1
	ldr r0, [r4, #0]
	adds r0, #2
	bl sub_0801A638
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	movs r0, #1
	ands r0, r2
	adds r1, r1, r0
	negs r1, r1
	ldr r0, [r4, #0]
	adds r0, #2
	lsls r1, r1, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0xc
	adds r1, r1, r2
	lsrs r1, r1, #0x10
	movs r2, #0x10
	bl sub_0801A3D0
	bl sub_080003F0
	bl sub_0800CDF8
	cmp r0, #0
	bne _08062BB8
	bl sub_0800D11C
	cmp r0, #0
	bne _08062BB8
	bl sub_0801DF8C
	cmp r0, #0
	beq _08062BA8
	bl sub_0800CCCC
	cmp r0, #0
	beq _08062BB8
_08062BA8:
	bl sub_0805F184
	cmp r0, #0
	bne _08062BB8
	bl sub_0800D060
	cmp r0, #0
	beq _08062BBE
_08062BB8:
	ldr r1, _08062C0C
	movs r0, #2
	strh r0, [r1, #0]
_08062BBE:
	bl sub_0800CD8C
	cmp r0, #0
	beq _08062BD0
	ldr r0, _08062C0C
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, _08062C10
	strh r1, [r0, #0]
_08062BD0:
	ldr r0, _08062C0C
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08062C20
	ldr r6, [sp, #0x9c]
	cmp r6, #2
	bls _08062C18
	ldr r0, _08062C14
	ldr r0, [r0, #0]
	movs r2, #0xa5
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r0, [r1, #0]
	adds r0, #1
	movs r2, #0
	strh r0, [r1, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08062BFE
	strh r2, [r1, #0]
_08062BFE:
	movs r0, #0xf
	bl sub_0805865C
	b _08062928
	.2byte 0x0000
_08062C08: .4byte gUnk_084EBE38
_08062C0C: .4byte gUnk_03001324
_08062C10: .4byte gUnk_03001308
_08062C14: .4byte gUnk_03005CF4
_08062C18:
	movs r0, #0xf
	bl sub_0805865C
	b _08062F34
_08062C20:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08062C2A
	b _08062D8E
_08062C2A:
	movs r0, #0x10
	bl sub_0805865C
	bl sub_0800CDF8
	cmp r0, #0
	beq _08062C3A
	b _08062D50
_08062C3A:
	movs r6, #0x80
	lsls r6, r6, #3
	mov r8, r6
_08062C40:
	movs r7, #0
	mov r0, r8
	subs r0, #0x80
	str r0, [sp, #0xac]
	mov r2, r8
	movs r1, #0x80
	lsls r1, r1, #3
	subs r2, r1, r2
	mov r9, r2
_08062C52:
	ldr r1, _08062C74
	lsls r3, r7, #3
	adds r1, r3, r1
	ldr r0, _08062C78
	adds r0, r3, r0
	lsls r2, r7, #2
	adds r5, r2, #0
	add r5, sp
	adds r5, #0x1c
	adds r5, #0x34
	ldr r4, [r1, #0]
	ldr r0, [r0, #0]
	adds r6, r2, #0
	cmp r4, r0
	bne _08062C7C
	str r4, [r5, #0]
	b _08062C8C
_08062C74: .4byte gUnk_084EBE14
_08062C78: .4byte gUnk_084EBE34
_08062C7C:
	mov r1, r8
	muls r1, r0, r1
	asrs r1, r1, #0xa
	mov r0, r9
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r1, r1, r0
	str r1, [r5, #0]
_08062C8C:
	ldr r1, _08062CAC
	adds r1, #4
	adds r1, r3, r1
	ldr r0, _08062CB0
	adds r0, #4
	adds r0, r3, r0
	adds r5, r6, #0
	add r5, sp
	adds r5, #0x1c
	adds r5, #0x44
	ldr r4, [r1, #0]
	ldr r0, [r0, #0]
	cmp r4, r0
	bne _08062CB4
	str r4, [r5, #0]
	b _08062CC4
_08062CAC: .4byte gUnk_084EBE14
_08062CB0: .4byte gUnk_084EBE34
_08062CB4:
	mov r1, r8
	muls r1, r0, r1
	asrs r1, r1, #0xa
	mov r0, r9
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r1, r1, r0
	str r1, [r5, #0]
_08062CC4:
	cmp r7, #1
	bne _08062D08
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08062D04
	adds r0, r0, r1
	ldr r1, [r0, #0]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08062D08
	ldr r0, [sp, #0x54]
	asrs r0, r0, #8
	ldr r1, [sp, #0x64]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp, #0]
	mov r2, sl
	str r2, [sp, #4]
	ldr r2, [sp, #0x24]
	str r2, [sp, #8]
	ldr r2, [sp, #0x1c]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08007CF0
	b _08062D30
	.2byte 0x0000
_08062D04: .4byte gUnk_03003D10
_08062D08:
	add r0, sp, #0x50
	adds r0, r0, r6
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	add r1, sp, #0x60
	adds r1, r1, r6
	ldr r1, [r1, #0]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp, #0]
	mov r6, sl
	str r6, [sp, #4]
	ldr r2, [sp, #0x24]
	str r2, [sp, #8]
	ldr r2, [sp, #0x1c]
	str r2, [sp, #0xc]
	adds r2, r7, #0
	movs r3, #0
	bl sub_08007CF0
_08062D30:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _08062C52
	ldr r0, [sp, #0xac]
	mov r8, r0
	bl sub_080003F0
	mov r1, r8
	cmp r1, #0
	ble _08062D4A
	b _08062C40
_08062D4A:
	b _08062D50
_08062D4C:
	bl sub_080003F0
_08062D50:
	ldr r0, [sp, #0xa8]
	bl sub_0805EEDC
	cmp r0, #0
	beq _08062D4C
	ldr r0, [sp, #0xa8]
	bl sub_0805F0F0
	b _08062D66
_08062D62:
	bl sub_080003F0
_08062D66:
	ldr r0, [sp, #0xa8]
	bl sub_0805EEEC
	cmp r0, #0
	beq _08062D62
	bl sub_0800CD8C
	cmp r0, #0
	bne _08062D84
	bl sub_0800D11C
	cmp r0, #0
	bne _08062D84
	bl sub_08015C38
_08062D84:
	bl sub_0800CE54
	bl sub_0800D04C
	b _0806334C
_08062D8E:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08062DB8
	ldr r0, _08062DB4
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0xc
	bne _08062DA2
	b _08062ED8
_08062DA2:
	ldr r2, [sp, #0x9c]
	cmp r2, #0
	beq _08062DAE
	movs r0, #0x62
	bl sub_0805865C
_08062DAE:
	movs r6, #0
	str r6, [sp, #0x9c]
	b _08062928
_08062DB4: .4byte gUnk_03003170
_08062DB8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08062DDC
	bl sub_0800CDC0
	cmp r0, #0
	beq _08062DCA
	b _08062ED8
_08062DCA:
	ldr r0, [sp, #0x9c]
	cmp r0, #1
	beq _08062DD6
	movs r0, #0x62
	bl sub_0805865C
_08062DD6:
	movs r1, #1
	str r1, [sp, #0x9c]
	b _08062928
_08062DDC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08062DE6
	b _08062EE0
_08062DE6:
	bl sub_0800CDC0
	cmp r0, #0
	beq _08062DF6
	bl sub_0800CCCC
	cmp r0, #0
	beq _08062ED8
_08062DF6:
	bl sub_08002204
	cmp r0, #0
	bne _08062E00
	b _08062928
_08062E00:
	movs r3, #1
	ldr r0, _08062E1C
	adds r1, r0, #0
	adds r1, #0x8c
	ldrh r1, [r1, #0]
	subs r1, #1
	adds r2, r0, #0
	cmp r1, #0x12
	bhi _08062EC2
	lsls r0, r1, #2
	ldr r1, _08062E20
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08062E1C: .4byte gUnk_03003170
_08062E20: .4byte _08062E24
_08062E24:
	.4byte _08062E9C
_08062E28: .4byte _08062E70
_08062E2C: .4byte _08062E9C
_08062E30: .4byte _08062E80
_08062E34: .4byte _08062E8C
_08062E38: .4byte _08062EC2
_08062E3C: .4byte _08062E9C
_08062E40: .4byte _08062EA8
_08062E44: .4byte _08062EC2
_08062E48: .4byte _08062EC2
_08062E4C: .4byte _08062EC0
_08062E50: .4byte _08062EC0
_08062E54: .4byte _08062EC0
_08062E58: .4byte _08062EC2
_08062E5C: .4byte _08062EC2
_08062E60: .4byte _08062EC2
_08062E64: .4byte _08062EC2
_08062E68: .4byte _08062EC2
_08062E6C: .4byte _08062EB4
_08062E70:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #4
	beq _08062ED8
	cmp r0, #7
	bne _08062EC2
	b _08062ED8
_08062E80:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #6
	bne _08062EC2
	b _08062ED8
_08062E8C:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08062ED8
	cmp r0, #0xa
	bne _08062EC2
	b _08062ED8
_08062E9C:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _08062EC2
	b _08062ED8
_08062EA8:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08062EC2
	b _08062ED8
_08062EB4:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _08062EC2
	b _08062ED8
_08062EC0:
	movs r3, #0
_08062EC2:
	cmp r3, #0
	beq _08062ED8
	ldr r2, [sp, #0x9c]
	cmp r2, #2
	beq _08062ED2
	movs r0, #0x62
	bl sub_0805865C
_08062ED2:
	movs r6, #2
	str r6, [sp, #0x9c]
	b _08062928
_08062ED8:
	movs r0, #0x61
	bl sub_0805865C
	b _08062928
_08062EE0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08062EEA
	b _08062928
_08062EEA:
	ldr r0, [sp, #0x9c]
	cmp r0, #3
	beq _08062EF6
	movs r0, #0x62
	bl sub_0805865C
_08062EF6:
	movs r1, #3
	str r1, [sp, #0x9c]
	b _08062928
_08062EFC:
	bl sub_0800CDF8
	cmp r0, #0
	bne _08062F2C
	bl sub_0800D11C
	cmp r0, #0
	bne _08062F2C
	bl sub_0801DF8C
	cmp r0, #0
	beq _08062F1C
	bl sub_0800CCCC
	cmp r0, #0
	beq _08062F2C
_08062F1C:
	bl sub_0805F184
	cmp r0, #0
	bne _08062F2C
	bl sub_0800D060
	cmp r0, #0
	beq _08062F30
_08062F2C:
	movs r2, #4
	str r2, [sp, #0x9c]
_08062F30:
	bl sub_080003F0
_08062F34:
	ldr r0, [sp, #0xa8]
	bl sub_0805EEDC
	cmp r0, #0
	beq _08062EFC
	bl sub_0800CDF8
	cmp r0, #0
	bne _08062F6E
	bl sub_0800D11C
	cmp r0, #0
	bne _08062F6E
	bl sub_0801DF8C
	cmp r0, #0
	beq _08062F5E
	bl sub_0800CCCC
	cmp r0, #0
	beq _08062F6E
_08062F5E:
	bl sub_0805F184
	cmp r0, #0
	bne _08062F6E
	bl sub_0800D060
	cmp r0, #0
	beq _08062F72
_08062F6E:
	movs r6, #4
	str r6, [sp, #0x9c]
_08062F72:
	bl sub_080003F0
	bl sub_0800CDF8
	cmp r0, #0
	bne _08062FA6
	bl sub_0800D11C
	cmp r0, #0
	bne _08062FA6
	bl sub_0801DF8C
	cmp r0, #0
	beq _08062F96
	bl sub_0800CCCC
	cmp r0, #0
	beq _08062FA6
_08062F96:
	bl sub_0805F184
	cmp r0, #0
	bne _08062FA6
	bl sub_0800D060
	cmp r0, #0
	beq _08062FAA
_08062FA6:
	movs r0, #4
	str r0, [sp, #0x9c]
_08062FAA:
	bl sub_080003F0
	bl sub_0800CDF8
	cmp r0, #0
	bne _08062FDE
	bl sub_0800D11C
	cmp r0, #0
	bne _08062FDE
	bl sub_0801DF8C
	cmp r0, #0
	beq _08062FCE
	bl sub_0800CCCC
	cmp r0, #0
	beq _08062FDE
_08062FCE:
	bl sub_0805F184
	cmp r0, #0
	bne _08062FDE
	bl sub_0800D060
	cmp r0, #0
	beq _08062FE2
_08062FDE:
	movs r1, #4
	str r1, [sp, #0x9c]
_08062FE2:
	ldr r0, [sp, #0xa8]
	bl sub_0805F0F0
	ldr r2, [sp, #0x9c]
	cmp r2, #2
	beq _08062FF4
	movs r0, #6
	bl sub_0801ABE8
_08062FF4:
	movs r6, #0x80
	lsls r6, r6, #3
	mov r8, r6
_08062FFA:
	movs r7, #0
	mov r0, r8
	subs r0, #0x80
	str r0, [sp, #0xac]
	mov r2, r8
	movs r1, #0x80
	lsls r1, r1, #3
	subs r2, r1, r2
	mov r9, r2
_0806300C:
	ldr r2, _08063030
	lsls r3, r7, #3
	adds r2, r3, r2
	ldr r0, _08063034
	adds r0, r3, r0
	lsls r1, r7, #2
	adds r4, r1, #0
	add r4, sp
	adds r4, #0x1c
	adds r4, #0x34
	ldr r2, [r2, #0]
	ldr r0, [r0, #0]
	adds r6, r1, #0
	cmp r2, r0
	bne _08063038
	str r2, [r4, #0]
	b _08063048
	.2byte 0x0000
_08063030: .4byte gUnk_084EBE14
_08063034: .4byte gUnk_084EBE34
_08063038:
	mov r1, r8
	muls r1, r0, r1
	asrs r1, r1, #0xa
	mov r0, r9
	muls r0, r2, r0
	asrs r0, r0, #0xa
	adds r1, r1, r0
	str r1, [r4, #0]
_08063048:
	ldr r1, _08063068
	adds r1, #4
	adds r1, r3, r1
	ldr r0, _0806306C
	adds r0, #4
	adds r0, r3, r0
	adds r5, r6, #0
	add r5, sp
	adds r5, #0x1c
	adds r5, #0x44
	ldr r4, [r1, #0]
	ldr r0, [r0, #0]
	cmp r4, r0
	bne _08063070
	str r4, [r5, #0]
	b _08063080
_08063068: .4byte gUnk_084EBE14
_0806306C: .4byte gUnk_084EBE34
_08063070:
	mov r1, r8
	muls r1, r0, r1
	asrs r1, r1, #0xa
	mov r0, r9
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r1, r1, r0
	str r1, [r5, #0]
_08063080:
	cmp r7, #1
	bne _080630C4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _080630C0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080630C4
	ldr r0, [sp, #0x54]
	asrs r0, r0, #8
	ldr r1, [sp, #0x64]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp, #0]
	mov r2, sl
	str r2, [sp, #4]
	ldr r2, [sp, #0x24]
	str r2, [sp, #8]
	ldr r2, [sp, #0x1c]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08007CF0
	b _080630EC
	.2byte 0x0000
_080630C0: .4byte gUnk_03003D10
_080630C4:
	add r0, sp, #0x50
	adds r0, r0, r6
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	add r1, sp, #0x60
	adds r1, r1, r6
	ldr r1, [r1, #0]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp, #0]
	mov r6, sl
	str r6, [sp, #4]
	ldr r2, [sp, #0x24]
	str r2, [sp, #8]
	ldr r2, [sp, #0x1c]
	str r2, [sp, #0xc]
	adds r2, r7, #0
	movs r3, #0
	bl sub_08007CF0
_080630EC:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _0806300C
	ldr r0, [sp, #0xac]
	mov r8, r0
	bl sub_0800CDF8
	cmp r0, #0
	bne _08063144
	bl sub_0800D11C
	cmp r0, #0
	bne _08063144
	bl sub_0801DF8C
	cmp r0, #0
	beq _0806311A
	bl sub_0800CCCC
	cmp r0, #0
	beq _08063144
_0806311A:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08063164
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08063144
	bl sub_0805F184
	cmp r0, #0
	bne _08063144
	bl sub_0800D060
	cmp r0, #0
	beq _08063148
_08063144:
	movs r2, #4
	str r2, [sp, #0x9c]
_08063148:
	bl sub_080003F0
	mov r6, r8
	cmp r6, #0
	ble _08063154
	b _08062FFA
_08063154:
	bl sub_0801AAE0
	cmp r0, #0
	bne _0806315E
	b _08062FFA
_0806315E:
	ldr r4, _08063164
	b _080631B8
	.2byte 0x0000
_08063164: .4byte gUnk_03003D10
_08063168:
	bl sub_0800CDF8
	cmp r0, #0
	bne _080631B0
	bl sub_0800D11C
	cmp r0, #0
	bne _080631B0
	bl sub_0801DF8C
	cmp r0, #0
	beq _08063188
	bl sub_0800CCCC
	cmp r0, #0
	beq _080631B0
_08063188:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080631B0
	bl sub_0805F184
	cmp r0, #0
	bne _080631B0
	bl sub_0800D060
	cmp r0, #0
	beq _080631B4
_080631B0:
	movs r0, #4
	str r0, [sp, #0x9c]
_080631B4:
	bl sub_080003F0
_080631B8:
	ldr r0, [sp, #0xa8]
	bl sub_0805EEEC
	cmp r0, #0
	beq _08063168
	ldr r1, [sp, #0x9c]
	cmp r1, #4
	bls _080631CA
	b _0806330A
_080631CA:
	lsls r0, r1, #2
	ldr r1, _080631D4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080631D4: .4byte _080631D8
_080631D8:
	.4byte _080631EC
_080631DC: .4byte _08063260
_080631E0: .4byte _08063294
_080631E4: .4byte _0806329C
_080631E8: .4byte _08063304
_080631EC:
	bl sub_0800BB54
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	ldr r4, _08063254
	adds r5, r4, #0
	adds r5, #0x7c
	movs r2, #0
	ldrsh r7, [r5, r2]
	adds r4, #0x7e
	movs r0, #0
	ldrsh r6, [r4, r0]
	bl sub_0800CCA8
	bl sub_08084F24
	ldr r0, _08063258
	bl sub_080003F4
	strh r7, [r5, #0]
	strh r6, [r4, #0]
	movs r7, #0
	ldr r5, _0806325C
	movs r4, #0xa8
	lsls r4, r4, #1
	movs r3, #0xab
	lsls r3, r3, #1
	movs r2, #0
_08063230:
	ldr r1, [r5, #0]
	lsls r0, r7, #4
	adds r1, r1, r0
	adds r0, r1, r4
	ldrh r0, [r0, #0]
	cmp r0, #7
	bne _08063242
	adds r0, r1, r3
	strh r2, [r0, #0]
_08063242:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x18
	bls _08063230
	bl sub_0800CCB8
	b _080632EC
	.2byte 0x0000
_08063254: .4byte gUnk_03003170
_08063258: .4byte 0x11201100
_0806325C: .4byte gUnk_030034E0
_08063260:
	bl sub_0800BB54
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0800CCA8
	ldr r4, _08063290
	adds r5, r4, #0
	adds r5, #0x7c
	movs r1, #0
	ldrsh r7, [r5, r1]
	adds r4, #0x7e
	movs r2, #0
	ldrsh r6, [r4, r2]
	bl sub_08084EAC
	b _080632C4
	.2byte 0x0000
_08063290: .4byte gUnk_03003170
_08063294:
	movs r0, #0
	bl sub_08061E44
	b _0806330A
_0806329C:
	bl sub_0800BB54
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0800CCA8
	ldr r4, _080632F4
	adds r5, r4, #0
	adds r5, #0x7c
	movs r6, #0
	ldrsh r7, [r5, r6]
	adds r4, #0x7e
	movs r0, #0
	ldrsh r6, [r4, r0]
_080632C4:
	ldr r0, _080632F8
	bl sub_080003F4
	strh r7, [r5, #0]
	strh r6, [r4, #0]
	bl sub_0800CCB8
	bl sub_080020F4
	ldr r1, _080632FC
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #9
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
_080632EC:
	ldr r0, _08063300
	bl sub_08000420
	b _0806330A
_080632F4: .4byte gUnk_03003170
_080632F8: .4byte 0x11201100
_080632FC: .4byte gUnk_03003CE0
_08063300: .4byte 0x000514C8
_08063304:
	movs r0, #6
	bl sub_0801AB50
_0806330A:
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	b _08063320
_0806331C:
	bl sub_080003F0
_08063320:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0806331C
	bl sub_0800CD8C
	cmp r0, #0
	bne _08063344
	bl sub_0800D11C
	cmp r0, #0
	bne _08063344
	bl sub_0800D060
	cmp r0, #0
	bne _08063344
	bl sub_08015C38
_08063344:
	bl sub_0800D04C
	bl sub_0800CE54
_0806334C:
	add sp, #0xbc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080624D8
