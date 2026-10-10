	thumb_func_start sub_08093584
sub_08093584: @ 0x08093584
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0809360C
	add sp, r4
	lsls r1, r1, #0x18
	movs r2, #0xff
	lsls r2, r2, #0x18
	adds r1, r1, r2
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x18
	str r0, [sp, #0x258]
	cmp r0, #0x14
	bls _080935AE
	movs r3, #0x14
	str r3, [sp, #0x258]
_080935AE:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	ldr r3, [sp, #0x258]
	adds r0, r2, #0
	muls r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24c]
	movs r0, #0
	str r0, [sp, #0x248]
	add r0, sp, #0x1a8
	lsls r1, r1, #0x18
	asrs r6, r1, #0x18
	ldr r2, _08093610
	adds r1, r6, r2
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r2, #7
	adds r3, r5, #0
	bl sub_08065158
	ldr r0, _08093614
	add r0, sp
	add r3, sp, #0x248
	ldrb r3, [r3, #0]
	strb r3, [r0, #0]
	add r0, sp, #0x1dc
	ldr r1, _08093618
	str r4, [sp, #0]
	movs r2, #8
	adds r3, r5, #0
	bl sub_08065158
	add r0, sp, #0x200
	strb r4, [r0, #0]
	cmp r6, #1
	beq _0809363A
	cmp r6, #1
	bgt _0809361C
	cmp r6, #0
	beq _08093626
	b _08093674
	.2byte 0x0000
_0809360C: .4byte 0xFFFFFDA0
_08093610: .4byte 0x00050031
_08093614: .4byte 0x000001CB
_08093618: .4byte 0x00050035
_0809361C:
	cmp r6, #2
	beq _0809364E
	cmp r6, #3
	beq _08093662
	b _08093674
_08093626:
	movs r0, #0x88
	lsls r0, r0, #8
	str r0, [sp, #0x234]
	movs r1, #0x90
	lsls r1, r1, #9
	str r1, [sp, #0x238]
	movs r2, #0xd0
	lsls r2, r2, #7
	str r2, [sp, #0x23c]
	b _08093674
_0809363A:
	movs r3, #0x80
	lsls r3, r3, #8
	str r3, [sp, #0x234]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [sp, #0x238]
	movs r1, #0xb4
	lsls r1, r1, #7
	str r1, [sp, #0x23c]
	b _08093674
_0809364E:
	movs r2, #0xf0
	lsls r2, r2, #7
	str r2, [sp, #0x234]
	movs r3, #0x90
	lsls r3, r3, #9
	str r3, [sp, #0x238]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [sp, #0x23c]
	b _08093674
_08093662:
	movs r1, #0x80
	lsls r1, r1, #8
	str r1, [sp, #0x234]
	movs r2, #0x90
	lsls r2, r2, #9
	str r2, [sp, #0x238]
	movs r3, #0xb0
	lsls r3, r3, #7
	str r3, [sp, #0x23c]
_08093674:
	movs r0, #0x10
	str r0, [sp, #0x250]
	movs r1, #0
	str r1, [sp, #0x254]
	add r0, sp, #0x230
	strh r1, [r0, #0]
	ldr r0, _080936EC
	add r0, sp
	add r3, sp, #0x254
	ldrh r3, [r3, #0]
	strh r3, [r0, #0]
	movs r7, #0
	mov r0, sp
	adds r0, #0x1c
	str r0, [sp, #0x25c]
	movs r6, #0
_08093694:
	lsls r4, r7, #2
	adds r0, r4, r7
	lsls r0, r0, #2
	mov r5, sp
	adds r5, r5, r0
	adds r5, #0x18
	movs r0, #0
	strh r6, [r5, #0xe]
	strh r6, [r5, #0xc]
	strb r0, [r5, #0x10]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080936C4
	negs r0, r0
_080936C4:
	adds r0, #1
	strb r0, [r5, #0x12]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc
	bl sub_080B942C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080936E0
	negs r0, r0
_080936E0:
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x12]
	cmp r0, #1
	bne _080936F0
	str r6, [r5, #0]
	b _080936F6
_080936EC: .4byte 0x00000232
_080936F0:
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [r5, #0]
_080936F6:
	bl sub_0800086C
	adds r1, r4, r7
	lsls r4, r1, #2
	ldr r1, [sp, #0x25c]
	adds r5, r1, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x8c
	bl sub_080B942C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08093716
	negs r0, r0
_08093716:
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r5, #0]
	bl sub_0800086C
	add r4, sp
	adds r4, #0x18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x14
	bl sub_080B942C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08093738
	negs r0, r0
_08093738:
	adds r0, #0xa
	lsls r0, r0, #5
	strh r0, [r4, #8]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0809374E
	adds r0, r1, #3
_0809374E:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0809375E
	negs r0, r0
_0809375E:
	lsls r0, r0, #3
	strh r0, [r4, #0xa]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x13
	bls _08093694
	add r4, sp, #0x210
	add r0, sp, #0x1a8
	ldr r1, [r0, #0xc]
	adds r1, #0xe0
	adds r0, r4, #0
	bl sub_08097F70
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_08096EFC
	movs r2, #0
	str r2, [sp, #0x240]
	movs r3, #0
	str r3, [sp, #0x244]
	movs r0, #5
	mov sl, r0
	movs r0, #6
	bl sub_0801AB50
	b _0809379A
_08093796:
	bl sub_080003F0
_0809379A:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08093796
_080937A2:
	mov r0, sl
	subs r0, #1
	cmp r0, #4
	bls _080937AC
	b _08093A12
_080937AC:
	lsls r0, r0, #2
	ldr r1, _080937B8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080937B8: .4byte _080937BC
_080937BC:
	.4byte _08093A00
_080937C0: .4byte _08093884
_080937C4: .4byte _08093846
_080937C8: .4byte _0809381A
_080937CC: .4byte _080937D0
_080937D0:
	ldr r1, [sp, #0x244]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x244]
	cmp r1, #0x17
	bhi _080937EC
	ldr r0, _08093800
	ldrh r1, [r0, #2]
	subs r1, #1
	strh r1, [r0, #2]
	ldrh r1, [r0, #6]
	adds r1, #1
	strh r1, [r0, #6]
_080937EC:
	movs r1, #0x10
	str r1, [sp, #0x250]
	ldr r2, [sp, #0x23c]
	ldr r3, [sp, #0x238]
	cmp r2, r3
	bge _08093808
	ldr r0, _08093804
	adds r0, r3, r0
	str r0, [sp, #0x238]
	b _08093A12
_08093800: .4byte gUnk_03001250
_08093804: .4byte 0xFFFFFE00
_08093808:
	movs r1, #0
	str r1, [sp, #0x240]
	movs r2, #4
	mov sl, r2
	movs r0, #0xcf
	lsls r0, r0, #1
	bl sub_0805865C
	b _08093A12
_0809381A:
	movs r3, #0
	str r3, [sp, #0x254]
	add r0, sp, #0x210
	add r1, sp, #0x1a8
	ldr r1, [r1, #0xc]
	adds r1, #0xe0
	ldr r2, [sp, #0x240]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x240]
	movs r3, #0x78
	bl sub_08096D40
	cmp r0, #0
	bne _0809383C
	b _08093A12
_0809383C:
	movs r0, #0
	str r0, [sp, #0x240]
	movs r1, #3
	mov sl, r1
	b _08093A12
_08093846:
	movs r2, #1
	str r2, [sp, #0x254]
	ldr r0, [sp, #0x240]
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x240]
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _0809385E
	b _08093A12
_0809385E:
	movs r3, #0
	str r3, [sp, #0x240]
	ldr r0, [sp, #0x250]
	cmp r0, #0
	beq _08093872
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x250]
	b _08093A12
_08093872:
	movs r1, #2
	mov sl, r1
	ldr r0, _08093880
	bl sub_0805865C
	b _08093A12
	.2byte 0x0000
_08093880: .4byte 0x0000019F
_08093884:
	movs r7, #0
	ldr r2, [sp, #0x258]
	cmp r7, r2
	blo _0809388E
	b _080939EE
_0809388E:
	movs r3, #0
	mov r8, r3
_08093892:
	lsls r1, r7, #2
	adds r0, r1, r7
	lsls r0, r0, #2
	mov r2, sp
	adds r2, r2, r0
	adds r2, #0x18
	ldrb r0, [r2, #0x12]
	adds r4, r1, #0
	cmp r0, #1
	beq _080938AC
	cmp r0, #2
	beq _080938C4
	b _080938DE
_080938AC:
	ldr r3, [r2, #0]
	asrs r1, r3, #8
	ldr r0, _080938C0
	cmp r1, r0
	bgt _080938DA
	movs r1, #8
	ldrsh r0, [r2, r1]
	adds r0, r3, r0
	str r0, [r2, #0]
	b _080938DE
_080938C0: .4byte 0x0000010F
_080938C4:
	ldr r3, [r2, #0]
	asrs r1, r3, #8
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	ble _080938DA
	movs r1, #8
	ldrsh r0, [r2, r1]
	subs r0, r3, r0
	str r0, [r2, #0]
	b _080938DE
_080938DA:
	mov r3, r8
	strb r3, [r2, #0x12]
_080938DE:
	adds r0, r4, r7
	lsls r1, r0, #2
	ldr r0, [sp, #0x25c]
	adds r3, r0, r1
	ldr r2, [r3, #0]
	asrs r0, r2, #8
	cmp r0, #0xbf
	bgt _080938FE
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x18
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	adds r0, r2, r0
	str r0, [r3, #0]
	b _08093908
_080938FE:
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x18
	mov r2, r8
	strb r2, [r0, #0x12]
_08093908:
	adds r0, r4, r7
	lsls r0, r0, #2
	mov r5, sp
	adds r5, r5, r0
	adds r5, #0x18
	ldrb r6, [r5, #0x12]
	cmp r6, #0
	bne _080939E0
	ldr r0, [sp, #0x248]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x248]
	strh r6, [r5, #0xe]
	strh r6, [r5, #0xc]
	mov r3, r8
	strb r3, [r5, #0x10]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _08093946
	negs r0, r0
_08093946:
	adds r0, #1
	strb r0, [r5, #0x12]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc
	bl sub_080B942C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08093962
	negs r0, r0
_08093962:
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x12]
	cmp r0, #1
	bne _0809396E
	str r6, [r5, #0]
	b _08093974
_0809396E:
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [r5, #0]
_08093974:
	bl sub_0800086C
	adds r1, r4, r7
	lsls r4, r1, #2
	ldr r1, [sp, #0x25c]
	adds r5, r1, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x8c
	bl sub_080B942C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08093994
	negs r0, r0
_08093994:
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r5, #0]
	bl sub_0800086C
	add r4, sp
	adds r4, #0x18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x14
	bl sub_080B942C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080939B6
	negs r0, r0
_080939B6:
	adds r0, #0xa
	lsls r0, r0, #5
	strh r0, [r4, #8]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _080939CC
	adds r0, r1, #3
_080939CC:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080939DC
	negs r0, r0
_080939DC:
	lsls r0, r0, #3
	strh r0, [r4, #0xa]
_080939E0:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, [sp, #0x258]
	cmp r7, r2
	bhs _080939EE
	b _08093892
_080939EE:
	ldr r3, [sp, #0x248]
	ldr r0, [sp, #0x24c]
	cmp r3, r0
	blo _08093A12
	movs r1, #0
	str r1, [sp, #0x240]
	movs r2, #1
	mov sl, r2
	b _08093A12
_08093A00:
	ldr r1, [sp, #0x240]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x240]
	cmp r1, #0x59
	bhi _08093A12
	movs r3, #0
	mov sl, r3
_08093A12:
	mov r0, sl
	cmp r0, #2
	bne _08093AC2
	add r0, sp, #0x1dc
	ldr r1, [r0, #0xc]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x11
	movs r2, #1
	bl sub_08000AF0
	movs r7, #0
	ldr r3, [sp, #0x258]
	cmp r7, r3
	bhs _08093AC2
	add r6, sp, #0x1dc
	movs r0, #1
	mov r9, r0
	ldr r1, _08093AF0
	mov r8, r1
_08093A3C:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r4, r0, #2
	mov r5, sp
	adds r5, r5, r4
	adds r5, #0x18
	adds r2, r5, #0
	adds r2, #0xc
	adds r3, r5, #0
	adds r3, #0xe
	mov r0, r9
	str r0, [sp, #0]
	adds r0, r6, #0
	movs r1, #0
	bl sub_08065370
	ldr r0, _08093AF4
	ldr r0, [r0, #0]
	mov r1, r9
	ands r0, r1
	cmp r0, #0
	beq _08093AB0
	ldrb r1, [r5, #0x10]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r3, [r5, #0x11]
	adds r2, r0, #0
	muls r2, r3, r2
	ldr r0, [r5, #0]
	adds r0, r0, r2
	asrs r0, r0, #8
	ldr r2, [sp, #0x25c]
	adds r4, r2, r4
	lsls r1, r1, #1
	add r1, r8
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r1, #0
	muls r2, r3, r2
	ldr r1, [r4, #0]
	adds r1, r1, r2
	asrs r1, r1, #8
	ldrh r3, [r5, #0xc]
	movs r2, #0
	str r2, [sp, #0]
	add r2, sp, #0x1f8
	str r2, [sp, #4]
	ldr r2, [r6, #8]
	str r2, [sp, #8]
	ldr r2, [r6, #0]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
_08093AB0:
	ldrb r0, [r5, #0x10]
	adds r0, #2
	strb r0, [r5, #0x10]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [sp, #0x258]
	cmp r7, r3
	blo _08093A3C
_08093AC2:
	mov r0, sl
	cmp r0, #2
	bls _08093B42
	movs r0, #0x10
	str r0, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x10
	movs r1, #0x23
	movs r2, #0
	ldr r3, [sp, #0x250]
	bl sub_0800903C
	mov r1, sl
	cmp r1, #4
	bne _08093AF8
	add r1, sp, #0x210
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	b _08093B06
	.2byte 0x0000
_08093AF0: .4byte gUnk_080B9704
_08093AF4: .4byte gUnk_03002344
_08093AF8:
	add r0, sp, #0x1a8
	ldr r1, [r0, #0xc]
	adds r1, #0xe0
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
_08093B06:
	add r5, sp, #0x1a8
	add r6, sp, #0x230
	ldr r3, _08093B64
	add r3, sp
	movs r4, #1
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	bl sub_08065370
	ldr r2, [sp, #0x234]
	asrs r0, r2, #8
	ldr r3, [sp, #0x238]
	asrs r1, r3, #8
	ldrh r3, [r6, #0]
	str r4, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, [sp, #0x254]
	str r2, [sp, #8]
	add r2, sp, #0x1c4
	str r2, [sp, #0xc]
	ldr r2, [r5, #8]
	str r2, [sp, #0x10]
	ldr r2, [r5, #0]
	str r2, [sp, #0x14]
	movs r2, #0
	bl sub_08007974
_08093B42:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	bne _08093B52
	movs r3, #0
	mov sl, r3
_08093B52:
	mov r0, sl
	cmp r0, #0
	beq _08093B5A
	b _080937A2
_08093B5A:
	movs r0, #6
	bl sub_0801ABE8
	b _08093B6C
	.2byte 0x0000
_08093B64: .4byte 0x00000232
_08093B68:
	bl sub_080003F0
_08093B6C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08093B68
	movs r0, #3
	bl sub_080586D0
	bl sub_0800CC18
	bl sub_0800CC68
	bl sub_08098028
	movs r0, #0
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	movs r3, #0x98
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08093584
