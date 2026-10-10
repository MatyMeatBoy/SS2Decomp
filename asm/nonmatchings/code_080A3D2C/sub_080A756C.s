	thumb_func_start sub_080A756C
sub_080A756C: @ 0x080A756C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf0
	ldr r4, _080A7664
	movs r0, #4
	strh r0, [r4, #0]
	ldr r1, _080A7668
	movs r0, #1
	negs r0, r0
	mov r8, r0
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	mov r3, r8
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r4, #0]
	movs r7, #0
	strb r0, [r1, #0x1c]
	ldrh r0, [r4, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r2, #1
	bl sub_08000AF0
	add r1, sp, #0x44
	mov r9, r1
	ldr r1, _080A766C
	str r7, [sp, #0]
	mov r0, r9
	movs r2, #0
	mov r3, r8
	bl sub_08065158
	movs r2, #0
	str r2, [sp, #0xbc]
	movs r3, #0x82
	add r3, sp
	strh r2, [r3, #0]
	add r1, sp, #0x80
	add r2, sp, #0xbc
	ldrh r2, [r2, #0]
	strh r2, [r1, #0]
	movs r0, #0xa0
	lsls r0, r0, #9
	str r0, [sp, #0x8c]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [sp, #0x90]
	str r0, [sp, #0xa4]
	movs r0, #0xc0
	lsls r0, r0, #7
	str r0, [sp, #0xa8]
	movs r1, #0
	str r1, [sp, #0xc4]
	movs r2, #0
	str r2, [sp, #0xc8]
	movs r3, #0
	str r3, [sp, #0xcc]
	mov r7, sp
	adds r7, #0x7a
	add r0, sp, #0xbc
	ldrh r0, [r0, #0]
	strh r0, [r7, #0]
	add r4, sp, #0x78
	add r1, sp, #0xbc
	ldrh r1, [r1, #0]
	strh r1, [r4, #0]
	str r2, [sp, #0xb4]
	movs r3, #1
	str r3, [sp, #0xb8]
	str r2, [sp, #0x94]
	str r2, [sp, #0x98]
	movs r0, #1
	movs r1, #0
	bl sub_0800BBA8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_0800BBA8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_0800BBA8
	bl sub_08002164
	str r0, [sp, #0xac]
	bl sub_080020F4
	ldr r1, _080A7670
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	ldr r1, [sp, #0xb8]
	orrs r0, r1
	str r0, [r2, #0]
	ldr r0, _080A7674
	ldr r2, [sp, #0x94]
	str r2, [r0, #0]
	movs r3, #0
	str r3, [sp, #0xd0]
	movs r0, #1
	str r0, [sp, #0xd8]
_080A7650:
	ldr r1, [sp, #0xd0]
	cmp r1, #7
	bls _080A7658
	b _080A7B46
_080A7658:
	lsls r0, r1, #2
	ldr r1, _080A7678
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080A7664: .4byte gUnk_03000404
_080A7668: .4byte 0x0005000F
_080A766C: .4byte 0x00050010
_080A7670: .4byte gUnk_03003CE0
_080A7674: .4byte gUnk_030056FC
_080A7678: .4byte _080A767C
_080A767C:
	.4byte _080A769C
_080A7680: .4byte _080A76FA
_080A7684: .4byte _080A7800
_080A7688: .4byte _080A7858
_080A768C: .4byte _080A7940
_080A7690: .4byte _080A79DC
_080A7694: .4byte _080A7A38
_080A7698: .4byte _080A7B08
_080A769C:
	movs r2, #0
	str r2, [sp, #0x9c]
	ldr r3, _080A76CC
	str r3, [sp, #0xa0]
	movs r0, #1
	str r0, [sp, #0]
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x98]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_08097B6C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A76D4
	movs r0, #0
	str r0, [sp, #0xd4]
	movs r1, #1
	str r1, [sp, #0xd0]
	ldr r0, _080A76D0
	bl sub_0805865C
	b _080A76F4
	.2byte 0x0000
_080A76CC: .4byte 0xFFFFB000
_080A76D0: .4byte 0x000001A1
_080A76D4:
	add r4, sp, #0x84
	str r4, [sp, #0]
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x98]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_080979D8
	ldr r0, [sp, #0x84]
	ldr r2, [sp, #0x94]
	adds r0, r2, r0
	str r0, [sp, #0x94]
	ldr r0, [r4, #4]
	ldr r3, [sp, #0x98]
	adds r0, r3, r0
	str r0, [sp, #0x98]
_080A76F4:
	ldr r1, [sp, #0x94]
	lsls r0, r1, #8
	b _080A784A
_080A76FA:
	ldr r3, [sp, #0xd4]
	cmp r3, #1
	beq _080A776A
	cmp r3, #1
	bgt _080A770A
	cmp r3, #0
	beq _080A7712
	b _080A7B46
_080A770A:
	ldr r0, [sp, #0xd4]
	cmp r0, #2
	beq _080A77D0
	b _080A7B46
_080A7712:
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [sp, #0x9c]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [sp, #0xa0]
	movs r0, #1
	str r0, [sp, #0]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_08097B6C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A7750
	movs r3, #0x10
	str r3, [sp, #0xb4]
	add r0, sp, #0xd4
	ldrh r0, [r0, #0]
	movs r1, #0x7a
	add r1, sp
	strh r0, [r1, #0]
	add r1, sp, #0xd4
	ldrh r1, [r1, #0]
	add r2, sp, #0x78
	strh r1, [r2, #0]
	movs r2, #1
	str r2, [sp, #0xd4]
	b _080A7B46
_080A7750:
	add r4, sp, #0x84
	str r4, [sp, #0]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_080979D8
	ldr r1, [sp, #0x84]
	ldr r3, [sp, #0x8c]
	adds r3, r3, r1
	str r3, [sp, #0x8c]
	b _080A77C0
_080A776A:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [sp, #0x9c]
	movs r1, #0xc0
	lsls r1, r1, #7
	str r1, [sp, #0xa0]
	ldr r2, [sp, #0xd4]
	str r2, [sp, #0]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_08097B6C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A77A8
	movs r3, #0xe
	str r3, [sp, #0xb4]
	movs r0, #0
	str r0, [sp, #0xb8]
	movs r1, #0x7a
	add r1, sp
	strh r0, [r1, #0]
	add r2, sp, #0xb8
	ldrh r2, [r2, #0]
	add r3, sp, #0x78
	strh r2, [r3, #0]
	movs r3, #2
	str r3, [sp, #0xd4]
	b _080A7B46
_080A77A8:
	add r4, sp, #0x84
	str r4, [sp, #0]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_080979D8
	ldr r1, [sp, #0x84]
	ldr r0, [sp, #0x8c]
	adds r0, r0, r1
	str r0, [sp, #0x8c]
_080A77C0:
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x90]
	adds r0, r2, r0
	str r0, [sp, #0x90]
	ldr r3, [sp, #0xa4]
	adds r1, r3, r1
	str r1, [sp, #0xa4]
	b _080A7B46
_080A77D0:
	ldr r0, [sp, #0xb0]
	cmp r0, #0
	bne _080A77D8
	b _080A7B46
_080A77D8:
	movs r1, #0x11
	str r1, [sp, #0xb4]
	movs r2, #0
	str r2, [sp, #0xd4]
	movs r3, #0x7a
	add r3, sp
	strh r2, [r3, #0]
	add r0, sp, #0xd4
	ldrh r0, [r0, #0]
	add r1, sp, #0x78
	strh r0, [r1, #0]
	ldr r0, _080A77FC
	bl sub_0805867C
	movs r1, #2
	str r1, [sp, #0xd0]
	b _080A7B46
	.2byte 0x0000
_080A77FC: .4byte 0x000001A1
_080A7800:
	movs r2, #0
	str r2, [sp, #0x9c]
	str r2, [sp, #0xa0]
	movs r0, #1
	str r0, [sp, #0]
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x98]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_08097B6C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A7822
	movs r3, #3
	str r3, [sp, #0xd0]
	b _080A7846
_080A7822:
	add r4, sp, #0x84
	str r4, [sp, #0]
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x98]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_080979D8
	ldr r0, [sp, #0x84]
	lsls r0, r0, #1
	ldr r1, [sp, #0x94]
	adds r0, r1, r0
	str r0, [sp, #0x94]
	ldr r0, [r4, #4]
	lsls r0, r0, #1
	ldr r2, [sp, #0x98]
	adds r0, r2, r0
	str r0, [sp, #0x98]
_080A7846:
	ldr r3, [sp, #0x94]
	lsls r0, r3, #8
_080A784A:
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x98]
	lsls r1, r2, #8
	asrs r1, r1, #0x10
	bl sub_0800BB80
	b _080A7B46
_080A7858:
	ldr r3, [sp, #0xd4]
	cmp r3, #0
	beq _080A7864
	cmp r3, #1
	beq _080A78D0
	b _080A791C
_080A7864:
	movs r2, #0
	ldr r0, [sp, #0xac]
	cmp r2, r0
	bhs _080A791C
	ldr r6, _080A78C8
	movs r5, #0
_080A7870:
	lsls r2, r2, #0x18
	asrs r1, r2, #0x18
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r6
	ldr r1, [r0, #0]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	adds r4, r2, #0
	cmp r0, #0x7b
	bgt _080A78B6
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	cmp r0, #0x11
	bne _080A78B6
	movs r1, #1
	str r1, [sp, #0xcc]
	movs r2, #0x10
	str r2, [sp, #0xb4]
	movs r3, #0x7a
	add r3, sp
	strh r5, [r3, #0]
	add r0, sp, #0x78
	strh r5, [r0, #0]
	str r1, [sp, #0xb8]
	movs r2, #1
	str r2, [sp, #0xd4]
	ldr r0, _080A78CC
	bl sub_0805865C
	movs r3, #3
	str r3, [sp, #0xbc]
_080A78B6:
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r4, r1
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp, #0xac]
	cmp r0, r3
	blo _080A7870
	b _080A791C
_080A78C8: .4byte gUnk_03003E28
_080A78CC: .4byte 0x000001A1
_080A78D0:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [sp, #0x9c]
	movs r1, #0x8c
	lsls r1, r1, #7
	str r1, [sp, #0xa0]
	ldr r2, [sp, #0xd4]
	str r2, [sp, #0]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_08097B6C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A78FC
	movs r3, #1
	str r3, [sp, #0xc8]
	movs r0, #4
	str r0, [sp, #0xd0]
	b _080A791C
_080A78FC:
	add r4, sp, #0x84
	str r4, [sp, #0]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_080979D8
	ldr r0, [sp, #0x84]
	ldr r1, [sp, #0x8c]
	adds r0, r1, r0
	str r0, [sp, #0x8c]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x90]
	adds r0, r2, r0
	str r0, [sp, #0x90]
_080A791C:
	bl sub_080020F4
	ldr r2, _080A793C
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r3, #0]
	b _080A7B46
	.2byte 0x0000
_080A793C: .4byte gUnk_03003CE0
_080A7940:
	movs r3, #5
	str r3, [sp, #0xd0]
	movs r2, #0
	ldr r0, [sp, #0xac]
	cmp r2, r0
	bhs _080A7986
	ldr r3, _080A79CC
_080A794E:
	lsls r2, r2, #0x18
	asrs r1, r2, #0x18
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r3
	ldr r1, [r0, #0]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	adds r4, r2, #0
	cmp r0, #0x7c
	ble _080A7976
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	cmp r0, #0x11
	bne _080A7976
	movs r1, #4
	str r1, [sp, #0xd0]
_080A7976:
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r4, r2
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [sp, #0xac]
	cmp r0, r1
	blo _080A794E
_080A7986:
	ldr r2, [sp, #0xd0]
	cmp r2, #5
	beq _080A798E
	b _080A7B46
_080A798E:
	bl sub_080020F4
	ldr r2, _080A79D0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080A79D4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080A79D8
	ldr r1, [r1, #0]
	movs r3, #0xe4
	lsls r3, r3, #3
	adds r1, r1, r3
	str r0, [r1, #0]
	b _080A7B46
	.2byte 0x0000
_080A79CC: .4byte gUnk_03003E28
_080A79D0: .4byte gUnk_03003CE0
_080A79D4: .4byte 0x0014008B
_080A79D8: .4byte gUnk_03005CF4
_080A79DC:
	ldr r0, _080A7A2C
	ldr r0, [r0, #0]
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	bne _080A79F2
	b _080A7B46
_080A79F2:
	bl sub_080020F4
	ldr r4, _080A7A30
	movs r6, #0xa6
	lsls r6, r6, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2, #0]
	movs r2, #6
	str r2, [sp, #0xd0]
	ldr r0, _080A7A34
	bl sub_0805865C
	b _080A7B46
	.2byte 0x0000
_080A7A2C: .4byte gUnk_03005CF4
_080A7A30: .4byte gUnk_03003CE0
_080A7A34: .4byte 0x000001AB
_080A7A38:
	movs r3, #0
	str r3, [sp, #0x9c]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [sp, #0xa0]
	movs r0, #1
	str r0, [sp, #0]
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x98]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_08097B6C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A7A62
	movs r1, #0
	str r1, [sp, #0xc0]
	movs r2, #7
	str r2, [sp, #0xd0]
	b _080A7AC0
_080A7A62:
	add r4, sp, #0x84
	str r4, [sp, #0]
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x98]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_080979D8
	ldr r0, [r4, #4]
	ldr r3, [sp, #0x98]
	adds r3, r3, r0
	str r3, [sp, #0x98]
	ldr r1, [sp, #0x90]
	subs r1, r1, r0
	str r1, [sp, #0x90]
	ldr r2, [sp, #0xa8]
	subs r0, r2, r0
	str r0, [sp, #0xa8]
	bl sub_080020F4
	ldr r3, _080A7B00
	mov r9, r3
	movs r7, #0xa6
	lsls r7, r7, #1
	adds r2, r0, #0
	muls r2, r7, r2
	movs r0, #0x90
	add r0, r9
	mov r8, r0
	add r2, r8
	ldr r0, [r2, #0]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r1, r4, #0
	muls r1, r7, r1
	ldr r2, _080A7B04
	adds r1, r1, r2
	muls r0, r7, r0
	add r0, r8
	ldr r0, [r0, #0]
	str r0, [r1, #0]
_080A7AC0:
	ldr r3, [sp, #0x94]
	lsls r1, r3, #8
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x98]
	lsls r2, r0, #8
	asrs r2, r2, #0x10
	movs r0, #2
	bl sub_0800BBA8
	bl sub_080020F4
	ldr r4, _080A7B00
	movs r6, #0xa6
	lsls r6, r6, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2, #0]
	b _080A7B46
_080A7B00: .4byte gUnk_03003CE0
_080A7B04: .4byte gUnk_03003D78
_080A7B08:
	bl sub_080020F4
	ldr r4, _080A7C0C
	movs r6, #0xa6
	lsls r6, r6, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2, #0]
	ldr r1, [sp, #0xc0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc0]
	cmp r1, #0x78
	bls _080A7B46
	movs r1, #0
	str r1, [sp, #0xd8]
_080A7B46:
	ldr r2, [sp, #0xc8]
	cmp r2, #0
	beq _080A7B68
	ldr r1, _080A7C10
	ldr r0, [sp, #0xc4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc4]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	asrs r0, r0, #1
	ldr r1, [sp, #0x90]
	adds r0, r1, r0
	str r0, [sp, #0x90]
_080A7B68:
	add r7, sp, #0x78
	ldr r2, [sp, #0xb8]
	str r2, [sp, #0]
	add r0, sp, #0x10
	ldr r1, [sp, #0xb4]
	adds r2, r7, #0
	mov r3, sp
	adds r3, #0x7a
	bl sub_08065370
	str r0, [sp, #0xb0]
	ldr r3, [sp, #0x8c]
	asrs r4, r3, #8
	ldr r0, [sp, #0x90]
	asrs r0, r0, #8
	str r0, [sp, #0xdc]
	adds r0, r4, #0
	ldr r1, [sp, #0xdc]
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	bl sub_0800CCCC
	str r4, [sp, #0xe8]
	ldr r1, [sp, #0xdc]
	str r1, [sp, #0xec]
	cmp r0, #0
	beq _080A7BA8
	b _080A7CD0
_080A7BA8:
	bl sub_0800CC98
	cmp r0, #0
	beq _080A7BB2
	b _080A7CD0
_080A7BB2:
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	beq _080A7BBE
	b _080A7CD0
_080A7BBE:
	ldr r2, [sp, #0xcc]
	cmp r2, #0
	bne _080A7C14
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0xec]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x7c
	mov r2, sp
	adds r2, #0x7e
	str r2, [sp, #0xe0]
	str r6, [sp, #0]
	str r6, [sp, #4]
	adds r2, r4, #0
	ldr r3, [sp, #0xe0]
	bl sub_0800BC08
	movs r3, #0
	ldrsh r0, [r4, r3]
	ldr r2, [sp, #0xe0]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r7, #0]
	mov r2, sl
	str r2, [sp, #0]
	add r7, sp, #0x2c
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xb4]
	bl sub_08007870
	mov r9, r4
	ldr r4, [sp, #0xe0]
	adds r6, r7, #0
	b _080A7C7C
_080A7C0C: .4byte gUnk_03003CE0
_080A7C10: .4byte gUnk_080B9704
_080A7C14:
	ldr r3, [sp, #0xe8]
	lsls r3, r3, #0x10
	str r3, [sp, #0xe4]
	asrs r3, r3, #0x10
	mov r9, r3
	ldr r0, [sp, #0xa8]
	lsls r1, r0, #8
	asrs r1, r1, #0x10
	add r5, sp, #0x7c
	mov r4, sp
	adds r4, #0x7e
	str r6, [sp, #0]
	str r6, [sp, #4]
	mov r0, r9
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	add r2, sp, #0x78
	ldrh r3, [r2, #0]
	mov r2, sl
	str r2, [sp, #0]
	add r2, sp, #0x2c
	mov r8, r2
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xb4]
	bl sub_08007870
	adds r7, r0, #0
	ldr r3, [sp, #0xec]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	str r6, [sp, #0]
	str r6, [sp, #4]
	mov r0, r9
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r4, r1]
	str r0, [r7, #0xc]
	mov r9, r5
	mov r6, r8
_080A7C7C:
	movs r0, #0xbd
	lsls r0, r0, #8
	ldr r2, [sp, #0xa4]
	cmp r2, r0
	bgt _080A7CD0
	ldr r0, _080A7D10
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A7CD0
	lsls r0, r2, #8
	asrs r0, r0, #0x10
	ldr r3, [sp, #0xa8]
	lsls r1, r3, #8
	asrs r1, r1, #0x10
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	mov r2, r9
	adds r3, r4, #0
	bl sub_0800BC08
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	str r3, [sp, #0]
	str r6, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #1
	movs r2, #0x12
	movs r3, #0
	bl sub_08007870
	adds r7, r0, #0
	movs r1, #0
	ldrsh r0, [r4, r1]
	str r0, [r7, #0xc]
_080A7CD0:
	ldr r2, [sp, #0xbc]
	cmp r2, #0
	beq _080A7D2C
	ldr r3, [sp, #0xe8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0xec]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	add r5, sp, #0x7c
	mov r6, sp
	adds r6, #0x7e
	movs r4, #0
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	str r4, [sp, #0]
	add r0, sp, #0x44
	ldr r1, [sp, #0xbc]
	add r2, sp, #0x80
	mov r3, sp
	adds r3, #0x82
	bl sub_08065370
	cmp r0, #0
	beq _080A7D14
	movs r3, #0
	str r3, [sp, #0xbc]
	b _080A7D2C
_080A7D10: .4byte gUnk_03002344
_080A7D14:
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r3, #0
	ldrsh r2, [r6, r3]
	subs r2, #0x20
	add r3, sp, #0x80
	ldrh r0, [r3, #0]
	str r0, [sp, #0]
	add r0, sp, #0x44
	ldr r3, [sp, #0xbc]
	bl sub_08065230
_080A7D2C:
	bl sub_080003F0
	ldr r0, [sp, #0xd8]
	cmp r0, #0
	beq _080A7D38
	b _080A7650
_080A7D38:
	ldr r0, _080A7D50
	bl sub_0805867C
	bl sub_080683CC
	bl sub_080003F0
	ldr r0, _080A7D54
	bl sub_08068330
	b _080A7D5C
	.2byte 0x0000
_080A7D50: .4byte 0x000001A1
_080A7D54: .4byte 0xDEADFACE
_080A7D58:
	bl sub_080003F0
_080A7D5C:
	ldr r0, _080A7DD8
	bl sub_080682B8
	cmp r0, #0
	beq _080A7D58
	ldr r0, _080A7DD8
	bl sub_08065E38
	bl sub_080003F0
	bl sub_08068384
	bl sub_080003F0
	bl sub_08002204
	cmp r0, #1
	bne _080A7D92
	ldr r0, _080A7DDC
	ldr r1, [r0, #0]
	ldr r0, _080A7DE0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	adds r0, #1
	str r0, [r1, #0x40]
	bl sub_08067DC8
_080A7D92:
	bl sub_080020F4
	ldr r4, _080A7DE4
	movs r6, #0xa6
	lsls r6, r6, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r4
	ldr r0, [r1, #0]
	movs r2, #2
	negs r2, r2
	ands r0, r2
	str r0, [r1, #0]
	ldr r1, _080A7DE8
	movs r0, #0
	str r0, [r1, #0]
	add sp, #0xf0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A7DD8: .4byte 0xDEADFACE
_080A7DDC: .4byte gUnk_03005CF4
_080A7DE0: .4byte gUnk_03003170
_080A7DE4: .4byte gUnk_03003CE0
_080A7DE8: .4byte gUnk_030056FC
	thumb_func_end sub_080A756C
