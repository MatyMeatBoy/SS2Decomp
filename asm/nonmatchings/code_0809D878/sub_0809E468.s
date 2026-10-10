	thumb_func_start sub_0809E468
sub_0809E468: @ 0x0809E468
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	mov r9, r0
	movs r7, #0
	movs r1, #0
	mov r8, r1
	ldr r0, _0809E504
	mov r2, r9
	strh r2, [r0, #0]
	ldr r0, _0809E508
	strb r1, [r0, #0]
	ldr r0, _0809E50C
	strb r1, [r0, #0]
	ldr r0, _0809E510
	strb r1, [r0, #0]
	movs r3, #1
	str r3, [sp, #0x10]
_0809E494:
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809E4B4
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809E4B4
	bl sub_0800CD34
	cmp r0, #0
	bne _0809E4B4
	bl sub_0800CC98
	cmp r0, #0
	beq _0809E522
_0809E4B4:
	mov r0, r9
	cmp r0, #0
	beq _0809E4BE
	bl _0809EC88
_0809E4BE:
	movs r1, #1
	mov r9, r1
	bl sub_08000E48
	bl sub_0800CC18
	movs r0, #0
	bl sub_0800115C
	movs r0, #0
	bl sub_080011E4
	movs r0, #0
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	movs r0, #2
	movs r1, #1
	bl sub_0800BD48
	bl sub_0800CD8C
	cmp r0, #0
	beq _0809E514
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_080009F8
	b _0809EC88
_0809E504: .4byte gUnk_0300031E
_0809E508: .4byte gUnk_0300031C
_0809E50C: .4byte gUnk_03000320
_0809E510: .4byte gUnk_03000321
_0809E514:
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_080009C0
	b _0809EC88
_0809E522:
	movs r2, #0
	mov r9, r2
	movs r0, #2
	movs r1, #0
	bl sub_0800BD48
	ldr r0, _0809E550
	bl sub_0800115C
	ldr r0, _0809E554
	bl sub_080011E4
	ldr r0, _0809E558
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _0809E55C
	movs r0, #0
	str r0, [sp, #0x10]
	b _0809EA5E
	.2byte 0x0000
_0809E550: .4byte sub_0809EDFC
_0809E554: .4byte sub_0809EF84
_0809E558: .4byte gUnk_03000310
_0809E55C:
	ldr r0, _0809E570
	ldrb r0, [r0, #0]
	cmp r0, #8
	bls _0809E566
	b _0809EA5E
_0809E566:
	lsls r0, r0, #2
	ldr r1, _0809E574
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0809E570: .4byte gUnk_03000320
_0809E574: .4byte _0809E578
_0809E578:
	.4byte _0809E59C
_0809E57C: .4byte _0809E64C
_0809E580: .4byte _0809E69C
_0809E584: .4byte _0809E71C
_0809E588: .4byte _0809E784
_0809E58C: .4byte _0809E808
_0809E590: .4byte _0809E8A4
_0809E594: .4byte _0809E914
_0809E598: .4byte _0809E9BC
_0809E59C:
	lsls r0, r7, #0x10
	ldr r1, _0809E634
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl sub_0800BBA8
	ldr r0, _0809E638
	ldrh r0, [r0, #0]
	ldr r3, _0809E63C
	ldr r2, [sp, #8]
	ands r2, r3
	orrs r2, r0
	str r2, [sp, #8]
	ldr r0, _0809E640
	adds r4, r0, #0
	add r0, sp, #8
	ldrh r1, [r0, #0]
	ands r1, r4
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	movs r2, #1
	add r1, sp, #8
	ldrh r1, [r1, #0]
	orrs r2, r1
	ands r0, r3
	orrs r0, r2
	str r0, [sp, #8]
	movs r0, #1
	add r1, sp, #8
	bl sub_08000AA8
	ldr r0, _0809E644
	ldrh r1, [r0, #0]
	movs r5, #0
	add r0, sp, #8
	ands r4, r1
	strh r4, [r0, #0]
	movs r0, #2
	orrs r4, r0
	add r0, sp, #8
	strh r4, [r0, #0]
	movs r0, #2
	add r1, sp, #8
	bl sub_08000AA8
	movs r0, #0xe
	str r0, [sp, #0]
	str r5, [sp, #4]
	movs r0, #4
	movs r1, #0x28
	movs r2, #1
	movs r3, #6
	bl sub_0800903C
	bl sub_0800CC18
	ldr r1, _0809E648
	ldrh r0, [r1, #6]
	cmp r0, #0x39
	bls _0809E62C
	b _0809E8FE
_0809E62C:
	adds r1, r0, #0
	movs r0, #0x3a
	subs r0, r0, r1
	b _0809E900
_0809E634: .4byte 0xFFFC0000
_0809E638: .4byte 0x0400000A
_0809E63C: .4byte 0xFFFF0000
_0809E640: .4byte 0x0000FFFC
_0809E644: .4byte 0x0400000C
_0809E648: .4byte gUnk_03001250
_0809E64C:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl sub_0800BBA8
	movs r0, #0xe
	str r0, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	movs r1, #0x28
	movs r2, #1
	movs r3, #6
	bl sub_0800903C
	bl sub_0800CC18
	ldr r1, _0809E698
	ldrh r0, [r1, #6]
	cmp r0, #0x39
	bls _0809E68E
	b _0809E8FE
_0809E68E:
	adds r1, r0, #0
	movs r0, #0x3a
	subs r0, r0, r1
	b _0809E900
	.2byte 0x0000
_0809E698: .4byte gUnk_03001250
_0809E69C:
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r0, r0, r2
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl sub_0800BBA8
	ldr r0, _0809E6EC
	ldrh r3, [r0, #0]
	movs r0, #0xe
	str r0, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	movs r1, #0x28
	movs r2, #1
	bl sub_0800903C
	bl sub_0800CC18
	ldr r1, _0809E6F0
	ldrh r0, [r1, #6]
	cmp r0, #0x39
	bhi _0809E6F4
	adds r1, r0, #0
	movs r0, #0x3a
	subs r0, r0, r1
	bl sub_08001108
	b _0809E6FA
	.2byte 0x0000
_0809E6EC: .4byte gUnk_0300031E
_0809E6F0: .4byte gUnk_03001250
_0809E6F4:
	movs r0, #0
	bl sub_08001108
_0809E6FA:
	bl sub_08000D8C
	mov r3, r8
	cmp r3, #0x14
	beq _0809E706
	b _0809EA5E
_0809E706:
	ldr r0, _0809E718
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0809E710
	b _0809EA5E
_0809E710:
	movs r0, #0x5a
	bl sub_08097CA8
	b _0809EA5E
_0809E718: .4byte gUnk_0300031E
_0809E71C:
	ldr r0, _0809E778
	ldrh r1, [r0, #0]
	movs r5, #0
	add r0, sp, #8
	strh r1, [r0, #0]
	ldr r4, _0809E77C
	adds r0, r4, #0
	ands r0, r1
	add r1, sp, #8
	strh r0, [r1, #0]
	movs r1, #2
	orrs r0, r1
	add r1, sp, #8
	strh r0, [r1, #0]
	movs r0, #1
	bl sub_08000AA8
	ldr r0, _0809E780
	ldrh r1, [r0, #0]
	add r0, sp, #8
	ands r4, r1
	strh r4, [r0, #0]
	movs r0, #1
	orrs r4, r0
	add r0, sp, #8
	strh r4, [r0, #0]
	movs r0, #2
	add r1, sp, #8
	bl sub_08000AA8
	movs r0, #0xc
	str r0, [sp, #0]
	str r5, [sp, #4]
	movs r0, #4
	movs r1, #0x3a
	movs r2, #1
	movs r3, #0x10
	bl sub_0800903C
	movs r0, #2
	bl sub_0800CBF8
_0809E770:
	bl sub_08000D8C
	b _0809EA5E
	.2byte 0x0000
_0809E778: .4byte 0x0400000A
_0809E77C: .4byte 0x0000FFFC
_0809E780: .4byte 0x0400000C
_0809E784:
	lsls r0, r7, #0x10
	ldr r1, _0809E7F8
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl sub_0800BBA8
	ldr r0, _0809E7FC
	ldrh r1, [r0, #0]
	movs r5, #0
	add r0, sp, #8
	strh r1, [r0, #0]
	ldr r4, _0809E800
	adds r0, r4, #0
	ands r0, r1
	add r1, sp, #8
	strh r0, [r1, #0]
	movs r1, #2
	orrs r0, r1
	add r1, sp, #8
	strh r0, [r1, #0]
	movs r0, #1
	bl sub_08000AA8
	ldr r0, _0809E804
	ldrh r1, [r0, #0]
	add r0, sp, #8
	ands r4, r1
	strh r4, [r0, #0]
	movs r0, #1
	orrs r4, r0
	add r0, sp, #8
	strh r4, [r0, #0]
	movs r0, #2
	add r1, sp, #8
	bl sub_08000AA8
	movs r0, #0xc
	str r0, [sp, #0]
	str r5, [sp, #4]
	movs r0, #4
	movs r1, #0x3a
	movs r2, #1
	movs r3, #0x10
	bl sub_0800903C
	movs r0, #2
	bl sub_0800CBF8
	b _0809E87A
_0809E7F8: .4byte 0xFFFB0000
_0809E7FC: .4byte 0x0400000A
_0809E800: .4byte 0x0000FFFC
_0809E804: .4byte 0x0400000C
_0809E808:
	lsls r0, r7, #0x10
	ldr r2, _0809E890
	adds r0, r0, r2
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl sub_0800BBA8
	ldr r0, _0809E894
	ldrh r1, [r0, #0]
	movs r5, #0
	add r0, sp, #8
	strh r1, [r0, #0]
	ldr r4, _0809E898
	adds r0, r4, #0
	ands r0, r1
	add r1, sp, #8
	strh r0, [r1, #0]
	movs r1, #2
	orrs r0, r1
	add r1, sp, #8
	strh r0, [r1, #0]
	movs r0, #1
	bl sub_08000AA8
	ldr r0, _0809E89C
	ldrh r1, [r0, #0]
	add r0, sp, #8
	ands r4, r1
	strh r4, [r0, #0]
	movs r0, #1
	orrs r4, r0
	add r0, sp, #8
	strh r4, [r0, #0]
	movs r0, #2
	add r1, sp, #8
	bl sub_08000AA8
	movs r0, #2
	bl sub_0800CBF8
	movs r0, #0xc
	str r0, [sp, #0]
	str r5, [sp, #4]
	movs r0, #4
	movs r1, #0x3a
	movs r2, #1
	movs r3, #0x10
	bl sub_0800903C
_0809E87A:
	ldr r4, _0809E8A0
	ldrb r0, [r4, #0]
	bl sub_08001108
	ldrb r0, [r4, #0]
	cmp r0, #0x99
	bhi _0809E88A
	b _0809E770
_0809E88A:
	bl sub_08000E48
	b _0809EA5E
_0809E890: .4byte 0xFFFB0000
_0809E894: .4byte 0x0400000A
_0809E898: .4byte 0x0000FFFC
_0809E89C: .4byte 0x0400000C
_0809E8A0: .4byte gUnk_03000321
_0809E8A4:
	ldr r0, _0809E908
	ldrh r1, [r0, #0]
	movs r5, #0
	add r0, sp, #8
	strh r1, [r0, #0]
	ldr r4, _0809E90C
	adds r0, r4, #0
	ands r0, r1
	add r1, sp, #8
	strh r0, [r1, #0]
	movs r1, #1
	orrs r0, r1
	add r1, sp, #8
	strh r0, [r1, #0]
	movs r0, #1
	bl sub_08000AA8
	ldr r0, _0809E910
	ldrh r1, [r0, #0]
	add r0, sp, #8
	ands r4, r1
	strh r4, [r0, #0]
	movs r0, #2
	orrs r4, r0
	add r0, sp, #8
	strh r4, [r0, #0]
	movs r0, #2
	add r1, sp, #8
	bl sub_08000AA8
	movs r0, #0xe
	str r0, [sp, #0]
	str r5, [sp, #4]
	movs r0, #4
	movs r1, #0x28
	movs r2, #1
	movs r3, #6
	bl sub_0800903C
	bl sub_0800CC18
	mov r3, r8
	cmp r3, #0x3c
	beq _0809E8FE
	b _0809EA5E
_0809E8FE:
	movs r0, #0
_0809E900:
	bl sub_08001108
	b _0809E770
	.2byte 0x0000
_0809E908: .4byte 0x0400000A
_0809E90C: .4byte 0x0000FFFC
_0809E910: .4byte 0x0400000C
_0809E914:
	lsls r0, r7, #0x10
	ldr r1, _0809E99C
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl sub_0800BBA8
	ldr r0, _0809E9A0
	ldrh r1, [r0, #0]
	movs r5, #0
	add r0, sp, #8
	strh r1, [r0, #0]
	ldr r4, _0809E9A4
	adds r0, r4, #0
	ands r0, r1
	add r1, sp, #8
	strh r0, [r1, #0]
	movs r1, #1
	orrs r0, r1
	add r1, sp, #8
	strh r0, [r1, #0]
	movs r0, #1
	bl sub_08000AA8
	ldr r0, _0809E9A8
	ldrh r1, [r0, #0]
	add r0, sp, #8
	ands r4, r1
	strh r4, [r0, #0]
	movs r0, #2
	orrs r4, r0
	add r0, sp, #8
	strh r4, [r0, #0]
	movs r0, #2
	add r1, sp, #8
	bl sub_08000AA8
	movs r0, #0xe
	str r0, [sp, #0]
	str r5, [sp, #4]
	movs r0, #4
	movs r1, #0x28
	movs r2, #1
	movs r3, #6
	bl sub_0800903C
	bl sub_0800CC18
	ldr r2, _0809E9AC
	ldrb r0, [r2, #0]
	ldr r1, _0809E9B0
	ldrh r3, [r1, #6]
	cmp r0, r3
	bls _0809E9B4
	ldrb r0, [r2, #0]
	ldrh r1, [r1, #6]
	subs r0, r0, r1
	bl sub_08001108
	b _0809E770
_0809E99C: .4byte 0xFFFC0000
_0809E9A0: .4byte 0x0400000A
_0809E9A4: .4byte 0x0000FFFC
_0809E9A8: .4byte 0x0400000C
_0809E9AC: .4byte gUnk_03000321
_0809E9B0: .4byte gUnk_03001250
_0809E9B4:
	movs r0, #0
	bl sub_08001108
	b _0809E770
_0809E9BC:
	lsls r0, r7, #0x10
	ldr r1, _0809EA40
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl sub_0800BBA8
	ldr r0, _0809EA44
	ldrh r1, [r0, #0]
	movs r5, #0
	add r0, sp, #8
	strh r1, [r0, #0]
	ldr r4, _0809EA48
	adds r0, r4, #0
	ands r0, r1
	add r1, sp, #8
	strh r0, [r1, #0]
	movs r1, #1
	orrs r0, r1
	add r1, sp, #8
	strh r0, [r1, #0]
	movs r0, #1
	bl sub_08000AA8
	ldr r0, _0809EA4C
	ldrh r1, [r0, #0]
	add r0, sp, #8
	ands r4, r1
	strh r4, [r0, #0]
	movs r0, #2
	orrs r4, r0
	add r0, sp, #8
	strh r4, [r0, #0]
	movs r0, #2
	add r1, sp, #8
	bl sub_08000AA8
	movs r0, #0xe
	str r0, [sp, #0]
	str r5, [sp, #4]
	movs r0, #4
	movs r1, #0x28
	movs r2, #1
	movs r3, #6
	bl sub_0800903C
	bl sub_0800CC18
	ldr r1, _0809EA50
	ldrh r0, [r1, #6]
	cmp r0, #0x39
	bhi _0809EA54
	adds r1, r0, #0
	movs r0, #0x3a
	subs r0, r0, r1
	bl sub_08001108
	b _0809EA5A
_0809EA40: .4byte 0xFFFC0000
_0809EA44: .4byte 0x0400000A
_0809EA48: .4byte 0x0000FFFC
_0809EA4C: .4byte 0x0400000C
_0809EA50: .4byte gUnk_03001250
_0809EA54:
	movs r0, #0
	bl sub_08001108
_0809EA5A:
	bl sub_08000D8C
_0809EA5E:
	ldr r1, _0809EA74
	ldrb r0, [r1, #0]
	adds r3, r1, #0
	cmp r0, #8
	bls _0809EA6A
	b _0809EC88
_0809EA6A:
	lsls r0, r0, #2
	ldr r1, _0809EA78
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0809EA74: .4byte gUnk_03000320
_0809EA78: .4byte _0809EA7C
_0809EA7C:
	.4byte _0809EAA0
_0809EA80: .4byte _0809EAC4
_0809EA84: .4byte _0809EAFC
_0809EA88: .4byte _0809EB30
_0809EA8C: .4byte _0809EB70
_0809EA90: .4byte _0809EBFC
_0809EA94: .4byte _0809EC1E
_0809EA98: .4byte _0809EC3C
_0809EA9C: .4byte _0809EC64
_0809EAA0:
	ldr r1, _0809EABC
	ldrb r2, [r1, #0]
	cmp r2, #1
	beq _0809EAAA
	b _0809EC88
_0809EAAA:
	movs r0, #0
	strb r0, [r1, #0]
	movs r0, #0
	mov r8, r0
	ldr r1, _0809EAC0
	movs r0, #6
	strh r0, [r1, #0]
	strb r2, [r3, #0]
	b _0809EC88
_0809EABC: .4byte gUnk_0300031C
_0809EAC0: .4byte gUnk_0300031E
_0809EAC4:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0xb
	beq _0809EAD4
	b _0809EC88
_0809EAD4:
	movs r1, #0
	mov r8, r1
	ldr r2, _0809EAF4
	ldrh r0, [r2, #0]
	subs r0, #1
	strh r0, [r2, #0]
	ldrh r1, [r2, #0]
	ldr r0, _0809EAF8
	cmp r1, r0
	beq _0809EAEA
	b _0809EC88
_0809EAEA:
	movs r0, #6
	strh r0, [r2, #0]
	movs r0, #2
	strb r0, [r3, #0]
	b _0809EC88
_0809EAF4: .4byte gUnk_0300031E
_0809EAF8: .4byte 0x0000FFFF
_0809EAFC:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x11
	beq _0809EB0C
	b _0809EC88
_0809EB0C:
	movs r2, #0
	mov r8, r2
	ldr r1, _0809EB28
	ldrh r0, [r1, #0]
	subs r0, #1
	strh r0, [r1, #0]
	ldrh r1, [r1, #0]
	ldr r0, _0809EB2C
	cmp r1, r0
	beq _0809EB22
	b _0809EC88
_0809EB22:
	movs r0, #3
	strb r0, [r3, #0]
	b _0809EC88
_0809EB28: .4byte gUnk_0300031E
_0809EB2C: .4byte 0x0000FFFF
_0809EB30:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x29
	beq _0809EB40
	b _0809EC88
_0809EB40:
	ldr r1, _0809EB6C
	movs r0, #0
	strb r0, [r1, #0]
	movs r0, #0
	mov sl, r0
	movs r0, #4
	strb r0, [r3, #0]
	bl sub_0800CE30
	movs r1, #0xf0
	lsls r1, r1, #1
	str r1, [sp, #0xc]
	cmp r0, #1
	bne _0809EB62
	movs r2, #0xf0
	lsls r2, r2, #2
	str r2, [sp, #0xc]
_0809EB62:
	movs r0, #0xb7
	bl sub_0805865C
	b _0809EC88
	.2byte 0x0000
_0809EB6C: .4byte gUnk_03000321
_0809EB70:
	ldr r1, _0809EB80
	ldrb r0, [r1, #0]
	cmp r0, #0x99
	bhi _0809EB84
	ldrb r0, [r1, #0]
	adds r0, #5
	b _0809EB86
	.2byte 0x0000
_0809EB80: .4byte gUnk_03000321
_0809EB84:
	movs r0, #0x9f
_0809EB86:
	strb r0, [r1, #0]
	bl sub_080020F4
	ldr r5, _0809EBEC
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	adds r1, #0xca
	movs r6, #0
	movs r0, #0
	strh r0, [r1, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xcc
	movs r1, #0x90
	lsls r1, r1, #1
	strh r1, [r0, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xc8
	movs r1, #8
	strh r1, [r0, #0]
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r3, [sp, #0xc]
	cmp r3, r1
	bne _0809EBD4
	ldr r1, _0809EBF0
	movs r0, #1
	strb r0, [r1, #0]
_0809EBD4:
	ldr r1, _0809EBF0
	ldrb r0, [r1, #0]
	cmp r0, #1
	bne _0809EC88
	strb r6, [r1, #0]
	ldr r0, _0809EBF4
	strb r6, [r0, #0]
	ldr r1, _0809EBF8
	movs r0, #5
	strb r0, [r1, #0]
	b _0809EC88
	.2byte 0x0000
_0809EBEC: .4byte gUnk_03003CE0
_0809EBF0: .4byte gUnk_0300031C
_0809EBF4: .4byte gUnk_03000321
_0809EBF8: .4byte gUnk_03000320
_0809EBFC:
	ldr r1, _0809EC0C
	ldrb r0, [r1, #0]
	cmp r0, #0x99
	bhi _0809EC10
	ldrb r0, [r1, #0]
	adds r0, #5
	strb r0, [r1, #0]
	b _0809EC88
_0809EC0C: .4byte gUnk_03000321
_0809EC10:
	movs r0, #0x9f
	strb r0, [r1, #0]
	movs r0, #0
	mov r8, r0
	movs r0, #6
	strb r0, [r3, #0]
	b _0809EC88
_0809EC1E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x29
	bne _0809EC88
	ldr r0, _0809EC38
	movs r1, #0
	strb r1, [r0, #0]
	movs r0, #7
	strb r0, [r3, #0]
	b _0809EC88
_0809EC38: .4byte gUnk_03000321
_0809EC3C:
	ldr r0, _0809EC5C
	ldrb r1, [r0, #0]
	adds r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r0, #0]
	cmp r0, #0x3b
	bne _0809EC88
	movs r1, #0
	mov r8, r1
	ldr r0, _0809EC60
	mov r2, r8
	strh r2, [r0, #0]
	movs r0, #8
	strb r0, [r3, #0]
	b _0809EC88
	.2byte 0x0000
_0809EC5C: .4byte gUnk_03000321
_0809EC60: .4byte gUnk_0300031E
_0809EC64:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0xb
	bne _0809EC88
	movs r0, #0
	mov r8, r0
	ldr r0, _0809ED24
	ldrh r1, [r0, #0]
	adds r1, #1
	strh r1, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #7
	bne _0809EC88
	mov r1, r8
	strb r1, [r3, #0]
_0809EC88:
	bl sub_080003F0
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _0809EC96
	bl _0809E494
_0809EC96:
	movs r3, #0
	mov r9, r3
	movs r7, #0
	ldr r0, _0809ED24
	movs r1, #0
	mov r2, r9
	strh r2, [r0, #0]
	ldr r0, _0809ED28
	strb r1, [r0, #0]
	ldr r0, _0809ED2C
	strb r1, [r0, #0]
	ldr r0, _0809ED30
	strb r1, [r0, #0]
	movs r5, #0
	add r4, sp, #8
	ldr r6, _0809ED34
_0809ECB6:
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809ECD6
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809ECD6
	bl sub_0800CD34
	cmp r0, #0
	bne _0809ECD6
	bl sub_0800CC98
	cmp r0, #0
	beq _0809ED46
_0809ECD6:
	mov r3, r9
	cmp r3, #0
	beq _0809ECDE
	b _0809EDF6
_0809ECDE:
	movs r0, #1
	mov r9, r0
	bl sub_08000E48
	bl sub_0800CC18
	movs r0, #0
	bl sub_0800115C
	movs r0, #0
	bl sub_080011E4
	str r5, [sp, #0]
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	movs r0, #2
	movs r1, #1
	bl sub_0800BD48
	bl sub_0800CD8C
	cmp r0, #0
	beq _0809ED38
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_080009F8
	b _0809EDF6
_0809ED24: .4byte gUnk_0300031E
_0809ED28: .4byte gUnk_0300031C
_0809ED2C: .4byte gUnk_03000320
_0809ED30: .4byte gUnk_03000321
_0809ED34: .4byte 0x0000FFFC
_0809ED38:
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_080009C0
	b _0809EDF6
_0809ED46:
	movs r1, #0
	mov r9, r1
	movs r0, #2
	bl sub_0800BD48
	ldr r0, _0809EDD4
	bl sub_0800115C
	ldr r0, _0809EDD8
	bl sub_080011E4
	lsls r0, r7, #0x10
	ldr r2, _0809EDDC
	adds r0, r0, r2
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl sub_0800BBA8
	ldr r0, _0809EDE0
	ldrh r1, [r0, #0]
	adds r0, r6, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0]
	movs r0, #1
	add r1, sp, #8
	bl sub_08000AA8
	ldr r0, _0809EDE4
	ldrh r1, [r0, #0]
	adds r0, r6, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r4, #0]
	movs r0, #2
	add r1, sp, #8
	bl sub_08000AA8
	movs r0, #0xe
	str r0, [sp, #0]
	mov r3, r9
	str r3, [sp, #4]
	movs r0, #4
	movs r1, #0x28
	movs r2, #1
	movs r3, #6
	bl sub_0800903C
	bl sub_0800CC18
	ldr r1, _0809EDE8
	ldrh r0, [r1, #6]
	cmp r0, #0x39
	bhi _0809EDEC
	adds r1, r0, #0
	movs r0, #0x3a
	subs r0, r0, r1
	bl sub_08001108
	b _0809EDF2
	.2byte 0x0000
_0809EDD4: .4byte sub_0809EDFC
_0809EDD8: .4byte sub_0809EF84
_0809EDDC: .4byte 0xFFFC0000
_0809EDE0: .4byte 0x0400000A
_0809EDE4: .4byte 0x0400000C
_0809EDE8: .4byte gUnk_03001250
_0809EDEC:
	movs r0, #0
	bl sub_08001108
_0809EDF2:
	bl sub_08000D8C
_0809EDF6:
	bl sub_080003F0
	b _0809ECB6
	thumb_func_end sub_0809E468
