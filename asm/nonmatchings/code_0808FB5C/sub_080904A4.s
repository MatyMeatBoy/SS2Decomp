	thumb_func_start sub_080904A4
sub_080904A4: @ 0x080904A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xbc
	movs r0, #1
	bl sub_0801A6D4
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08000A34
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #0
	bl sub_080009F8
	movs r0, #0
	movs r1, #0
	bl sub_08000990
	movs r0, #0x88
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #0
	bl sub_080009C0
	ldr r1, _08090674
	ldr r0, [sp, #0x8c]
	ands r0, r1
	ldr r1, _08090678
	orrs r0, r1
	str r0, [sp, #0x8c]
	add r1, sp, #0x8c
	movs r0, #0
	bl sub_08000AA8
	movs r0, #0
	movs r1, #0x18
	bl sub_080921E4
	ldr r1, _0809067C
	movs r3, #1
	negs r3, r3
	movs r5, #1
	str r5, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	add r0, sp, #0x10
	movs r1, #8
	mov r9, r1
	mov r2, r9
	strb r2, [r0, #0x1c]
	add r0, sp, #0x44
	mov r8, r0
	strh r5, [r0, #6]
	add r6, sp, #0x68
	strh r5, [r6, #6]
	add r1, sp, #0x50
	add r2, sp, #0x5c
	add r3, sp, #0x74
	strh r4, [r3, #6]
	strh r4, [r2, #6]
	strh r4, [r1, #6]
	movs r0, #2
	mov r5, r8
	strh r0, [r5, #0]
	strh r4, [r6, #0]
	strh r4, [r3, #0]
	strh r4, [r2, #0]
	strh r4, [r1, #0]
	movs r0, #6
	strh r0, [r5, #4]
	strh r4, [r6, #4]
	strh r4, [r3, #4]
	strh r4, [r2, #4]
	strh r4, [r1, #4]
	movs r0, #7
	strh r0, [r5, #2]
	strh r4, [r6, #2]
	strh r4, [r3, #2]
	strh r4, [r2, #2]
	strh r4, [r1, #2]
	mov r0, r9
	strh r0, [r5, #8]
	strh r4, [r6, #8]
	strh r4, [r3, #8]
	strh r4, [r2, #8]
	strh r4, [r1, #8]
	mov r9, r3
	add r6, sp, #0x80
	subs r1, #0x24
	str r1, [sp, #0xb0]
	subs r2, #4
	str r2, [sp, #0xb4]
	mov r5, sp
	adds r5, #0x64
	str r5, [sp, #0xb8]
	adds r2, r6, #0
	movs r1, #0
_0809057C:
	adds r0, r2, r4
	strb r1, [r0, #0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	bls _0809057C
	bl sub_08092124
	bl sub_08000940
	movs r0, #6
	bl sub_0801AB50
	movs r0, #0
	str r0, [sp, #0x94]
	movs r1, #0
	str r1, [sp, #0x90]
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0x9c]
	movs r5, #0
	str r5, [sp, #0x98]
	mov sl, r5
	str r0, [sp, #0xa4]
	str r1, [sp, #0xa0]
	movs r2, #1
	str r2, [sp, #0xa8]
	add r5, sp, #0x44
	mov r0, sp
	adds r0, #0x50
	str r0, [sp, #0xac]
_080905BC:
	ldr r2, _08090680
	ldrh r1, [r2, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809060E
	ldr r1, [sp, #0x1c]
	movs r0, #0x18
	movs r2, #1
	bl sub_08000AF0
	ldrh r1, [r5, #2]
	movs r2, #0x6a
	add r2, sp
	ldrh r0, [r2, #0]
	str r0, [sp, #0]
	add r0, sp, #0x10
	mov r2, sp
	adds r2, #0x52
	mov r3, sp
	adds r3, #0x5e
	bl sub_08065370
	movs r1, #0
	mov r2, r9
	strh r0, [r2, #2]
	ldrh r2, [r5, #2]
	movs r0, #0x52
	add r0, sp
	ldrh r3, [r0, #0]
	str r1, [sp, #0]
	ldr r1, [sp, #0xb0]
	str r1, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0xd3
	movs r1, #0x83
	bl sub_08007870
_0809060E:
	ldr r2, _08090680
	ldrh r1, [r2, #0]
	movs r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0809065A
	ldr r1, [sp, #0x1c]
	movs r0, #0x18
	movs r2, #1
	bl sub_08000AF0
	ldrh r1, [r5, #4]
	add r2, sp, #0x6c
	ldrh r0, [r2, #0]
	str r0, [sp, #0]
	add r0, sp, #0x10
	add r2, sp, #0x54
	add r3, sp, #0x60
	bl sub_08065370
	movs r1, #0
	mov r2, r9
	strh r0, [r2, #4]
	ldrh r2, [r5, #4]
	add r0, sp, #0x54
	ldrh r3, [r0, #0]
	str r1, [sp, #0]
	ldr r1, [sp, #0xb0]
	str r1, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0xc1
	movs r1, #0x83
	bl sub_08007870
_0809065A:
	ldr r2, _08090680
	ldrh r1, [r2, #0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _080906E4
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08090684
	add r0, sp, #0x44
	strh r4, [r0, #0]
	b _080906A6
_08090674: .4byte 0xFFFF0000
_08090678: .4byte 0x00001801
_0809067C: .4byte 0x00050021
_08090680: .4byte gUnk_0300130C
_08090684:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08090690
	movs r0, #3
	b _080906A2
_08090690:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080906A0
	movs r0, #4
	add r2, sp, #0x44
	strh r0, [r2, #0]
	b _080906A6
_080906A0:
	movs r0, #5
_080906A2:
	add r1, sp, #0x44
	strh r0, [r1, #0]
_080906A6:
	ldr r1, [sp, #0x1c]
	movs r0, #0x18
	movs r2, #1
	bl sub_08000AF0
	ldrh r1, [r5, #0]
	add r2, sp, #0x68
	ldrh r0, [r2, #0]
	str r0, [sp, #0]
	add r0, sp, #0x10
	ldr r2, [sp, #0xac]
	add r3, sp, #0x5c
	bl sub_08065370
	movs r1, #0
	mov r2, r9
	strh r0, [r2, #0]
	ldrh r2, [r5, #0]
	ldr r0, [sp, #0xac]
	ldrh r3, [r0, #0]
	str r1, [sp, #0]
	ldr r1, [sp, #0xb0]
	str r1, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0x30
	movs r1, #0x7d
	bl sub_08007870
_080906E4:
	ldr r2, [sp, #0xa0]
	cmp r2, #0
	bne _08090730
	ldr r1, [sp, #0x1c]
	movs r0, #0x18
	movs r2, #1
	bl sub_08000AF0
	ldrh r1, [r5, #6]
	movs r2, #0x6e
	add r2, sp
	ldrh r0, [r2, #0]
	str r0, [sp, #0]
	add r0, sp, #0x10
	mov r2, sp
	adds r2, #0x56
	mov r3, sp
	adds r3, #0x62
	bl sub_08065370
	mov r1, r9
	strh r0, [r1, #6]
	ldrh r2, [r5, #6]
	movs r0, #0x56
	add r0, sp
	ldrh r3, [r0, #0]
	ldr r1, [sp, #0xa0]
	str r1, [sp, #0]
	ldr r0, [sp, #0xb0]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0x7b
	movs r1, #0x7e
	bl sub_08007870
_08090730:
	ldr r1, [sp, #0x1c]
	movs r0, #0x18
	movs r2, #1
	bl sub_08000AF0
	add r2, sp, #0x4c
	ldrh r1, [r2, #0]
	add r2, sp, #0x70
	ldrh r0, [r2, #0]
	str r0, [sp, #0]
	add r0, sp, #0x10
	ldr r2, [sp, #0xb4]
	ldr r3, [sp, #0xb8]
	bl sub_08065370
	movs r4, #0
	mov r1, r9
	strh r0, [r1, #8]
	add r0, sp, #0x4c
	ldrh r2, [r0, #0]
	add r1, sp, #0x58
	ldrh r3, [r1, #0]
	str r4, [sp, #0]
	ldr r0, [sp, #0xb0]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0xc7
	movs r1, #0x74
	bl sub_08007870
	mov r1, r9
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _08090798
	add r2, sp, #0x4c
	ldrh r0, [r2, #0]
	cmp r0, #9
	bne _08090798
	movs r0, #0xb
	strh r0, [r2, #0]
	movs r0, #1
	add r1, sp, #0x70
	strh r0, [r1, #0]
	mov r2, r9
	strh r4, [r2, #8]
	add r0, sp, #0x64
	strh r4, [r0, #0]
	add r1, sp, #0x58
	strh r4, [r1, #0]
_08090798:
	mov r2, sl
	cmp r2, #1
	bne _080907AA
	ldr r0, _08090800
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _080907AA
	bl sub_08092190
_080907AA:
	ldr r2, _08090804
	ldrh r1, [r2, #0]
	movs r3, #8
	adds r0, r3, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _0809082A
	mov r0, sl
	cmp r0, #0
	beq _080907C2
	b _080909E2
_080907C2:
	ldr r1, [sp, #0xa0]
	cmp r1, #0
	beq _08090808
	movs r2, #0
	str r2, [sp, #0xa0]
	mov r8, r2
	strh r3, [r5, #8]
	mov r0, r8
	add r1, sp, #0x70
	strh r0, [r1, #0]
	mov r2, r9
	strh r0, [r2, #8]
	add r1, sp, #0x64
	strh r0, [r1, #0]
	ldr r2, [sp, #0xac]
	strh r0, [r2, #8]
	movs r0, #1
	strh r0, [r5, #6]
	movs r1, #0x6e
	add r1, sp
	strh r0, [r1, #0]
	mov r0, r8
	mov r2, r9
	strh r0, [r2, #6]
	movs r1, #0x62
	add r1, sp
	strh r0, [r1, #0]
	ldr r2, [sp, #0xac]
	strh r0, [r2, #6]
	b _080909E2
	.2byte 0x0000
_08090800: .4byte gUnk_0300016C
_08090804: .4byte gUnk_03001324
_08090808:
	movs r0, #1
	str r0, [sp, #0xa0]
	movs r1, #0x3c
	mov r8, r1
	movs r0, #9
	add r2, sp, #0x4c
	strh r0, [r2, #0]
	mov r0, sl
	add r1, sp, #0x70
	strh r0, [r1, #0]
	mov r2, r9
	strh r0, [r2, #8]
	add r1, sp, #0x64
	strh r0, [r1, #0]
	add r2, sp, #0x58
	strh r0, [r2, #0]
	b _080909E2
_0809082A:
	ldr r2, _0809084C
	ldrh r1, [r2, #0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08090850
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	beq _08090850
	movs r0, #1
	ldr r1, [sp, #0xa4]
	eors r1, r0
	str r1, [sp, #0xa4]
	movs r2, #0x3c
	mov r8, r2
	b _080909E2
	.2byte 0x0000
_0809084C: .4byte gUnk_03001308
_08090850:
	ldrh r1, [r2, #0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08090890
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	beq _08090890
	mov r1, r8
	cmp r1, #0
	bne _08090890
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bne _0809087A
	ldr r0, [sp, #0x9c]
	cmp r0, #0
	beq _08090876
	subs r0, #1
	b _080908B6
_08090876:
	movs r0, #0x24
	b _080908BE
_0809087A:
	ldr r1, [sp, #0x94]
	cmp r1, #0
	beq _08090886
	adds r0, r1, #0
	subs r0, #1
	b _080908CE
_08090886:
	ldr r0, _0809088C
	b _080908DA
	.2byte 0x0000
_0809088C: .4byte 0x00000121
_08090890:
	ldrh r1, [r2, #0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080908DE
	ldr r2, [sp, #0xa0]
	cmp r2, #0
	beq _080908DE
	mov r0, r8
	cmp r0, #0
	bne _080908DE
	ldr r1, [sp, #0xa4]
	cmp r1, #0
	bne _080908C2
	ldr r2, [sp, #0x9c]
	cmp r2, #0x24
	beq _080908BC
	adds r0, r2, #0
	adds r0, #1
_080908B6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080908BE
_080908BC:
	movs r0, #0
_080908BE:
	str r0, [sp, #0x9c]
	b _080909E2
_080908C2:
	ldr r0, _080908D4
	ldr r1, [sp, #0x94]
	cmp r1, r0
	beq _080908D8
	adds r0, r1, #0
	adds r0, #1
_080908CE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080908DA
_080908D4: .4byte 0x00000121
_080908D8:
	movs r0, #0
_080908DA:
	str r0, [sp, #0x94]
	b _080909E2
_080908DE:
	ldrh r1, [r4, #0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08090978
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	beq _08090978
	mov r1, r8
	cmp r1, #0
	bne _08090978
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bne _08090954
	mov r1, sl
	cmp r1, #1
	bne _08090918
	ldr r0, _08090914
	ldr r2, [sp, #0x98]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	bl sub_080B72D4
	b _0809093A
	.2byte 0x0000
_08090914: .4byte gUnk_085181C0
_08090918:
	movs r0, #0xa
	add r1, sp, #0x4c
	strh r0, [r1, #0]
	add r0, sp, #0x70
	strh r2, [r0, #0]
	add r1, sp, #0xa4
	ldrh r2, [r1, #0]
	mov r1, r9
	strh r2, [r1, #8]
	add r2, sp, #0xa4
	ldrh r2, [r2, #0]
	add r0, sp, #0x64
	strh r2, [r0, #0]
	add r0, sp, #0xa4
	ldrh r0, [r0, #0]
	add r1, sp, #0x58
	strh r0, [r1, #0]
_0809093A:
	movs r1, #1
	mov sl, r1
	ldr r2, [sp, #0x9c]
	str r2, [sp, #0x98]
	ldr r0, _08090950
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	bl sub_080B7208
	b _080909E2
_08090950: .4byte gUnk_085181C0
_08090954:
	ldr r4, _08090974
	ldr r1, [sp, #0x90]
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	bl sub_080B72D4
	ldr r2, [sp, #0x94]
	str r2, [sp, #0x90]
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	bl sub_080B7208
	b _080909E2
	.2byte 0x0000
_08090974: .4byte gUnk_0851820A
_08090978:
	ldrh r1, [r4, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080909E2
	movs r0, #0
	mov r8, r0
	ldr r1, [sp, #0xa0]
	cmp r1, #0
	beq _080909D8
	mov r2, sl
	cmp r2, #1
	bne _080909BE
	ldr r1, _080909D0
	ldr r2, [sp, #0x98]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	bl sub_080B72D4
	movs r0, #0
	mov sl, r0
	movs r0, #0xb
	add r1, sp, #0x4c
	strh r0, [r1, #0]
	movs r0, #1
	add r2, sp, #0x70
	strh r0, [r2, #0]
	mov r1, r8
	mov r0, r9
	strh r1, [r0, #8]
	add r2, sp, #0x64
	strh r1, [r2, #0]
	add r0, sp, #0x58
	strh r1, [r0, #0]
_080909BE:
	ldr r0, _080909D4
	ldr r2, [sp, #0x90]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	bl sub_080B72D4
	b _080909E2
	.2byte 0x0000
_080909D0: .4byte gUnk_085181C0
_080909D4: .4byte gUnk_0851820A
_080909D8:
	mov r0, sl
	cmp r0, #0
	bne _080909E2
	movs r1, #0
	str r1, [sp, #0xa8]
_080909E2:
	ldr r0, _08090A24
	ands r7, r0
	movs r0, #0x4c
	orrs r7, r0
	ldr r0, _08090A28
	ands r7, r0
	movs r0, #0xe8
	lsls r0, r0, #0xf
	orrs r7, r0
	ldr r2, [sp, #0xa0]
	cmp r2, #0
	beq _08090AA2
	mov r0, r8
	cmp r0, #0
	beq _08090A50
	subs r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _08090A34
	ldr r2, _08090A2C
	ldr r0, [sp, #0xa4]
	lsls r1, r0, #2
	ldr r0, _08090A30
	ldr r0, [r0, #0]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r0, [r1, #0]
	b _08090A36
_08090A24: .4byte 0xFFFF0000
_08090A28: .4byte 0x0000FFFF
_08090A2C: .4byte gUnk_08518198
_08090A30: .4byte gUnk_03003470
_08090A34:
	ldr r0, _08090A4C
_08090A36:
	adds r1, r6, #0
	bl sub_08091F9C
	lsls r4, r7, #0x10
	lsrs r1, r4, #0x10
	lsrs r2, r7, #0x10
	adds r0, r6, #0
	bl sub_0801A764
	b _08090A98
	.2byte 0x0000
_08090A4C: .4byte gUnk_080BB7E4
_08090A50:
	ldr r2, _08090A80
	ldr r0, [sp, #0xa4]
	lsls r1, r0, #2
	ldr r0, _08090A84
	ldr r0, [r0, #0]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r0, [r1, #0]
	adds r1, r6, #0
	bl sub_08091F9C
	ldr r1, [sp, #0xa4]
	cmp r1, #0
	bne _08090A88
	ldr r0, [sp, #0x9c]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_08091F20
	b _08090A96
	.2byte 0x0000
_08090A80: .4byte gUnk_08518198
_08090A84: .4byte gUnk_03003470
_08090A88:
	ldr r0, [sp, #0x94]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_08091F20
_08090A96:
	lsls r4, r7, #0x10
_08090A98:
	lsrs r1, r4, #0x10
	lsrs r2, r7, #0x10
	adds r0, r6, #0
	bl sub_0801A764
_08090AA2:
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_08090AA8:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	bls _08090AA8
	bl sub_080003F0
	ldr r2, [sp, #0xa8]
	cmp r2, #0
	beq _08090AC2
	b _080905BC
_08090AC2:
	movs r0, #0x3c
	bl sub_0801AA8C
	add r5, sp, #0x44
	add r0, sp, #0x50
	mov r8, r0
	add r6, sp, #0x68
	ldr r7, [sp, #0xb0]
	b _08090B44
_08090AD4:
	ldr r1, [sp, #0x1c]
	movs r0, #0x18
	movs r2, #1
	bl sub_08000AF0
	ldrh r1, [r5, #6]
	ldrh r0, [r6, #6]
	str r0, [sp, #0]
	add r0, sp, #0x10
	mov r2, sp
	adds r2, #0x56
	mov r3, sp
	adds r3, #0x62
	bl sub_08065370
	ldrh r2, [r5, #6]
	mov r1, r8
	ldrh r3, [r1, #6]
	str r4, [sp, #0]
	str r7, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0x7b
	movs r1, #0x7e
	bl sub_08007870
	ldr r1, [sp, #0x1c]
	movs r0, #0x18
	movs r2, #1
	bl sub_08000AF0
	ldrh r1, [r5, #8]
	ldrh r0, [r6, #8]
	str r0, [sp, #0]
	add r0, sp, #0x10
	ldr r2, [sp, #0xb4]
	ldr r3, [sp, #0xb8]
	bl sub_08065370
	ldrh r2, [r5, #8]
	mov r0, r8
	ldrh r3, [r0, #8]
	str r4, [sp, #0]
	str r7, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0xc7
	movs r1, #0x74
	bl sub_08007870
	bl sub_080003F0
_08090B44:
	bl sub_0801AAE0
	adds r4, r0, #0
	cmp r4, #0
	beq _08090AD4
	ldr r4, _08090B80
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08090B5E
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
_08090B5E:
	movs r0, #0
	bl sub_0801A6D4
	bl sub_08000968
	movs r0, #0x14
	bl sub_08000420
	add sp, #0xbc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08090B80: .4byte gUnk_0300016C
	thumb_func_end sub_080904A4
