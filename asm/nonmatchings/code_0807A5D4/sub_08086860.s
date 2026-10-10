	thumb_func_start sub_08086860
sub_08086860: @ 0x08086860
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	ldr r4, _080869FC
	movs r0, #0
	strh r0, [r4, #2]
	strh r0, [r4, #0]
	strh r0, [r4, #6]
	strh r0, [r4, #4]
	strh r0, [r4, #0xa]
	strh r0, [r4, #8]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0xc]
	bl sub_0805F07C
	movs r0, #0
	mov sl, r0
	mov r8, r0
	bl sub_080003F0
	movs r0, #0
	movs r1, #0x13
	bl sub_0801A664
	bl sub_080003F0
	movs r0, #0xc0
	lsls r0, r0, #3
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0xc8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	ldr r1, _08086A00
	ldr r0, [sp, #0x48]
	ands r0, r1
	ldr r1, _08086A04
	orrs r0, r1
	str r0, [sp, #0x48]
	add r6, sp, #0x48
	movs r0, #3
	adds r1, r6, #0
	bl sub_08000AA8
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x46
	movs r1, #0x1e
	movs r3, #0
	bl sub_0800B650
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r5, #0
	bl sub_08001494
	adds r7, r0, #0
	mov r1, r8
	str r1, [sp, #0x3c]
	add r0, sp, #0x3c
	ldr r2, _08086A08
	adds r1, r7, #0
	bl sub_080B8574
	ldr r1, _08086A0C
	adds r0, r7, #0
	adds r2, r5, #0
	bl sub_08001348
	movs r0, #5
	bl sub_08057624
	adds r0, r7, #0
	bl sub_08001538
	movs r0, #0xc8
	strh r0, [r4, #0xe]
	ldr r1, _08086A10
	mov r0, r8
	str r0, [sp, #0]
	add r0, sp, #8
	movs r2, #0
	movs r3, #2
	bl sub_08065158
	movs r0, #0xb9
	lsls r0, r0, #1
	bl sub_0805865C
	ldr r0, _08086A14
	bl sub_0805865C
	movs r0, #0xbc
	lsls r0, r0, #1
	bl sub_0805865C
	movs r7, #4
	movs r1, #4
	mov r8, r1
	mov r9, r1
	movs r4, #1
_0808693E:
	movs r0, #0
	adds r1, r7, #0
	bl sub_08006B70
	movs r0, #1
	mov r1, r8
	bl sub_08006B70
	adds r0, r7, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xff
	bls _0808695E
	movs r7, #0x80
	lsls r7, r7, #1
_0808695E:
	mov r0, r8
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0x4f
	bls _08086970
	movs r0, #0x50
	mov r8, r0
_08086970:
	bl sub_080003F0
	adds r0, r4, #0
	adds r4, #1
	cmp r0, #0x3b
	bls _0808693E
	movs r0, #0x78
	bl sub_0801AA34
	movs r4, #1
_08086984:
	mov r0, r9
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r0, #0xc7
	bls _08086996
	movs r1, #0xc8
	mov r9, r1
_08086996:
	movs r0, #2
	mov r1, r9
	bl sub_08006B70
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #8
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #0
	bl sub_08065230
	bl sub_080003F0
	adds r0, r4, #0
	adds r4, #1
	cmp r0, #0x81
	bls _08086984
	movs r6, #0
	movs r4, #0
	movs r7, #0
_080869C0:
	ldr r0, _08086A18
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080869D8
	ldr r0, _08086A1C
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _080869D8
	movs r0, #1
	mov sl, r0
_080869D8:
	mov r1, sl
	cmp r1, #0
	beq _080869E2
	bl _08087728
_080869E2:
	bl sub_080021A8
	cmp r0, #0
	beq _080869EE
	bl _08087728
_080869EE:
	cmp r4, #4
	bhi _08086ABC
	lsls r0, r4, #2
	ldr r1, _08086A20
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080869FC: .4byte gUnk_03001250
_08086A00: .4byte 0xFFFF0000
_08086A04: .4byte 0x00009E03
_08086A08: .4byte 0x01000200
_08086A0C: .4byte 0x0600F800
_08086A10: .4byte 0x0005011F
_08086A14: .4byte 0x00000171
_08086A18: .4byte gUnk_03001324
_08086A1C: .4byte gUnk_03002838
_08086A20: .4byte _08086A24
_08086A24:
	.4byte _08086A38
_08086A28: .4byte _08086A54
_08086A2C: .4byte _08086A70
_08086A30: .4byte _08086A8C
_08086A34: .4byte _08086AA8
_08086A38:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x1e
	bls _08086ABC
	ldr r0, _08086A50
	bl sub_0805865C
	movs r7, #0x80
	movs r6, #0
	movs r4, #1
	b _08086ABC
	.2byte 0x0000
_08086A50: .4byte 0x00000173
_08086A54:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x28
	bls _08086ABC
	ldr r0, _08086A6C
	bl sub_0805865C
	movs r7, #0xa0
	movs r6, #0
	movs r4, #2
	b _08086ABC
	.2byte 0x0000
_08086A6C: .4byte 0x00000173
_08086A70:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x32
	bls _08086ABC
	ldr r0, _08086A88
	bl sub_0805865C
	movs r7, #0xc0
	movs r6, #0
	movs r4, #3
	b _08086ABC
	.2byte 0x0000
_08086A88: .4byte 0x00000173
_08086A8C:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x64
	bls _08086ABC
	ldr r0, _08086AA4
	bl sub_0805865C
	movs r7, #0xf0
	movs r6, #0
	movs r4, #4
	b _08086ABC
	.2byte 0x0000
_08086AA4: .4byte 0x00000173
_08086AA8:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0xa
	bls _08086ABC
	ldr r0, _08086B40
	bl sub_0805865C
	movs r7, #0x80
	movs r6, #0
	movs r4, #5
_08086ABC:
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #8
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #0
	bl sub_08065230
	movs r0, #3
	adds r1, r7, #0
	bl sub_08006B70
	bl sub_080003F0
	cmp r4, #5
	beq _08086ADE
	b _080869C0
_08086ADE:
	movs r4, #1
	movs r5, #0
_08086AE2:
	str r5, [sp, #0]
	add r0, sp, #8
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #0
	bl sub_08065230
	bl sub_080003F0
	adds r0, r4, #0
	adds r4, #1
	cmp r0, #0x3b
	bls _08086AE2
	movs r6, #0
	movs r4, #0
	movs r7, #0
_08086B02:
	ldr r0, _08086B44
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086B1A
	ldr r0, _08086B48
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _08086B1A
	movs r0, #1
	mov sl, r0
_08086B1A:
	mov r1, sl
	cmp r1, #0
	beq _08086B24
	bl _08087728
_08086B24:
	bl sub_080021A8
	cmp r0, #0
	beq _08086B30
	bl _08087728
_08086B30:
	cmp r4, #1
	beq _08086B64
	cmp r4, #1
	blo _08086B4C
	cmp r4, #2
	beq _08086B7C
	b _08086B92
	.2byte 0x0000
_08086B40: .4byte 0x00000173
_08086B44: .4byte gUnk_03001324
_08086B48: .4byte gUnk_03002838
_08086B4C:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x3c
	bls _08086B92
	movs r0, #0xba
	lsls r0, r0, #1
	bl sub_0805865C
	movs r7, #0x80
	movs r6, #0
	movs r4, #1
	b _08086B92
_08086B64:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x3c
	bls _08086B92
	movs r0, #0xba
	lsls r0, r0, #1
	bl sub_0805865C
	movs r7, #0xa0
	movs r6, #0
	movs r4, #2
	b _08086B92
_08086B7C:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x50
	bls _08086B92
	movs r0, #0xba
	lsls r0, r0, #1
	bl sub_0805865C
	movs r7, #0xff
	movs r6, #0
	movs r4, #3
_08086B92:
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #8
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #0
	bl sub_08065230
	movs r0, #3
	adds r1, r7, #0
	bl sub_08006B70
	bl sub_080003F0
	cmp r4, #3
	bne _08086B02
	ldr r5, _08086BEC
	movs r4, #0
_08086BB6:
	ldr r0, _08086BF0
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086BCE
	ldr r0, _08086BF4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _08086BCE
	movs r0, #1
	mov sl, r0
_08086BCE:
	mov r1, sl
	cmp r1, #0
	beq _08086BD8
	bl _08087728
_08086BD8:
	adds r0, r5, #0
	movs r1, #5
	bl sub_080B9394
	cmp r0, #0
	bne _08086BF8
	adds r5, #1
	cmp r5, #0
	ble _08086C04
	b _08086C28
_08086BEC: .4byte 0xFFFFD800
_08086BF0: .4byte gUnk_03001324
_08086BF4: .4byte gUnk_03002838
_08086BF8:
	cmp r0, #0
	bge _08086BFE
	negs r0, r0
_08086BFE:
	adds r5, r5, r0
	cmp r5, #0
	bgt _08086C28
_08086C04:
	asrs r2, r5, #8
	adds r2, #0x28
	str r4, [sp, #0]
	add r0, sp, #8
	movs r1, #0x78
	movs r3, #1
	bl sub_08065230
	str r4, [sp, #0]
	add r0, sp, #8
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #0
	bl sub_08065230
	bl sub_080003F0
	b _08086BB6
_08086C28:
	movs r5, #0
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r0, _08086CEC
	bl sub_0805865C
_08086C34:
	ldr r0, _08086CF0
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086C4C
	ldr r0, _08086CF4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _08086C4C
	movs r0, #1
	mov sl, r0
_08086C4C:
	mov r1, sl
	cmp r1, #0
	beq _08086C56
	bl _08087728
_08086C56:
	bl sub_080021A8
	cmp r0, #0
	beq _08086C62
	bl _08087728
_08086C62:
	subs r5, r5, r7
	subs r7, #2
	cmp r7, #0
	bgt _08086C6C
	movs r7, #1
_08086C6C:
	asrs r4, r5, #8
	adds r2, r4, #0
	adds r2, #0x28
	mov r0, sl
	str r0, [sp, #0]
	add r0, sp, #8
	movs r1, #0x78
	movs r3, #1
	bl sub_08065230
	adds r4, #0x78
	mov r1, sl
	str r1, [sp, #0]
	add r0, sp, #8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08065230
	bl sub_080003F0
	ldr r0, _08086CF8
	cmp r5, r0
	bgt _08086C34
	movs r6, #0
	movs r4, #0
	movs r7, #0
	ldr r0, _08086CFC
	ldrh r0, [r0, #0xe]
	lsls r5, r0, #8
	movs r0, #0xff
	mov r8, r0
	movs r1, #0x50
	mov r9, r1
	movs r0, #0xc8
	str r0, [sp, #0x50]
	cmp r5, #0
	bne _08086CBA
	b _08086E38
_08086CBA:
	ldr r0, _08086CF0
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086CD2
	ldr r0, _08086CF4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _08086CD2
	movs r1, #1
	mov sl, r1
_08086CD2:
	mov r0, sl
	cmp r0, #0
	beq _08086CDC
	bl _08087728
_08086CDC:
	cmp r4, #6
	bhi _08086DCE
	lsls r0, r4, #2
	ldr r1, _08086D00
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08086CEC: .4byte 0x00000175
_08086CF0: .4byte gUnk_03001324
_08086CF4: .4byte gUnk_03002838
_08086CF8: .4byte 0xFFFF7400
_08086CFC: .4byte gUnk_03001250
_08086D00: .4byte _08086D04
_08086D04:
	.4byte _08086D20
_08086D08: .4byte _08086D38
_08086D0C: .4byte _08086D50
_08086D10: .4byte _08086D6C
_08086D14: .4byte _08086D88
_08086D18: .4byte _08086DA4
_08086D1C: .4byte _08086DBC
_08086D20:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x32
	bls _08086DCE
	movs r0, #0xba
	lsls r0, r0, #1
	bl sub_0805865C
	movs r7, #0xff
	movs r6, #0
	movs r4, #1
	b _08086DCE
_08086D38:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x32
	bls _08086DCE
	movs r0, #0xba
	lsls r0, r0, #1
	bl sub_0805865C
	movs r7, #0xc0
	movs r6, #0
	movs r4, #2
	b _08086DCE
_08086D50:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x28
	bls _08086DCE
	ldr r0, _08086D68
	bl sub_0805865C
	movs r7, #0x80
	movs r6, #0
	movs r4, #3
	b _08086DCE
	.2byte 0x0000
_08086D68: .4byte 0x00000173
_08086D6C:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x28
	bls _08086DCE
	ldr r0, _08086D84
	bl sub_0805865C
	movs r7, #0xa0
	movs r6, #0
	movs r4, #4
	b _08086DCE
	.2byte 0x0000
_08086D84: .4byte 0x00000173
_08086D88:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x32
	bls _08086DCE
	ldr r0, _08086DA0
	bl sub_0805865C
	movs r7, #0xa0
	movs r6, #0
	movs r4, #5
	b _08086DCE
	.2byte 0x0000
_08086DA0: .4byte 0x00000173
_08086DA4:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x5a
	bls _08086DCE
	movs r0, #0xbb
	lsls r0, r0, #1
	bl sub_0805865C
	movs r7, #0xff
	movs r6, #0
	movs r4, #6
	b _08086DCE
_08086DBC:
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #0x5a
	bls _08086DCE
	ldr r0, _08086F20
	bl sub_0805865C
	movs r6, #0
	movs r4, #7
_08086DCE:
	movs r0, #0
	mov r1, r8
	bl sub_08006B70
	movs r0, #1
	mov r1, r9
	bl sub_08006B70
	cmp r4, #7
	beq _08086DEA
	movs r0, #2
	ldr r1, [sp, #0x50]
	bl sub_08006B70
_08086DEA:
	mov r1, r8
	cmp r1, #0x64
	beq _08086DFA
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08086DFA:
	mov r0, r9
	cmp r0, #0xff
	beq _08086E08
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
_08086E08:
	ldr r1, [sp, #0x50]
	cmp r1, #0xa
	beq _08086E18
	adds r0, r1, #0
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
_08086E18:
	ldr r1, _08086F24
	asrs r0, r5, #8
	strh r0, [r1, #0xe]
	subs r5, #0x37
	cmp r5, #0
	bge _08086E26
	movs r5, #0
_08086E26:
	movs r0, #3
	adds r1, r7, #0
	bl sub_08006B70
	bl sub_080003F0
	cmp r5, #0
	beq _08086E38
	b _08086CBA
_08086E38:
	movs r0, #0x3c
	bl sub_08057624
	ldr r0, _08086F20
	bl sub_0805865C
	movs r0, #0x1e
	bl sub_0801AA8C
	movs r0, #0x3c
	bl sub_08057624
	ldr r1, _08086F28
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #8
	movs r2, #0
	movs r3, #2
	bl sub_08065158
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x45
	movs r1, #0x1e
	movs r3, #0
	bl sub_0800B650
	movs r0, #0x1e
	bl sub_0801AA34
	movs r4, #1
_08086E7A:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08086E9A
	ldr r0, _08086F2C
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086E9A
	ldr r0, _08086F30
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _08086E9A
	movs r0, #1
	mov sl, r0
_08086E9A:
	mov r1, sl
	cmp r1, #0
	beq _08086EA4
	bl _08087728
_08086EA4:
	bl sub_080021A8
	cmp r0, #0
	beq _08086EB0
	bl _08087728
_08086EB0:
	mov r0, sl
	str r0, [sp, #0]
	add r0, sp, #8
	movs r1, #0x81
	movs r2, #0x77
	movs r3, #0
	bl sub_08065230
	bl sub_080003F0
	adds r0, r4, #0
	adds r4, #1
	cmp r0, #0x3b
	bls _08086E7A
	movs r4, #0x97
	lsls r4, r4, #1
	movs r5, #0
	ldr r0, _08086F34
	bl sub_0805865C
	movs r1, #4
	mov r9, r1
	mov r0, sl
	str r0, [sp, #0x4c]
	movs r7, #1
_08086EE2:
	ldr r0, _08086F2C
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086EFA
	ldr r0, _08086F30
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _08086EFA
	movs r1, #1
	mov sl, r1
_08086EFA:
	mov r0, sl
	cmp r0, #0
	beq _08086F04
	bl _08087728
_08086F04:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq _08086F38
	str r7, [sp, #0]
	add r0, sp, #8
	movs r1, #0
	add r2, sp, #0x40
	mov r3, sp
	adds r3, #0x42
	bl sub_08065370
	add r1, sp, #0x40
	b _08086F3E
	.2byte 0x0000
_08086F20: .4byte 0x00000177
_08086F24: .4byte gUnk_03001250
_08086F28: .4byte 0x0005011E
_08086F2C: .4byte gUnk_03001324
_08086F30: .4byte gUnk_03002838
_08086F34: .4byte 0x00000179
_08086F38:
	add r1, sp, #0x40
	movs r0, #6
	strh r0, [r1, #0]
_08086F3E:
	ldrh r0, [r1, #0]
	str r0, [sp, #0]
	add r0, sp, #8
	movs r1, #0x81
	movs r2, #0x77
	movs r3, #0
	bl sub_08065230
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r4, #1
	cmp r0, r1
	bls _08086FAC
	cmp r5, #1
	beq _08086F78
	cmp r5, #1
	blo _08086F6C
	cmp r5, #2
	beq _08086F84
	cmp r5, #3
	beq _08086F98
	b _08086FA8
_08086F6C:
	str r7, [sp, #0x4c]
	ldr r0, _08086F74
	b _08086F88
	.2byte 0x0000
_08086F74: .4byte 0x0000045D
_08086F78:
	str r5, [sp, #0x4c]
	ldr r0, _08086F80
	b _08086F88
	.2byte 0x0000
_08086F80: .4byte 0x0000045E
_08086F84:
	str r7, [sp, #0x4c]
	ldr r0, _08086F94
_08086F88:
	movs r1, #0x96
	lsls r1, r1, #1
	bl sub_08088A60
	b _08086FA8
	.2byte 0x0000
_08086F94: .4byte 0x0000045F
_08086F98:
	movs r0, #0
	str r0, [sp, #0x4c]
	movs r0, #0x1e
	bl sub_0801AA8C
	movs r0, #0xa
	bl sub_080586D0
_08086FA8:
	adds r5, #1
	movs r4, #0
_08086FAC:
	movs r0, #0
	mov r1, r8
	bl sub_08006B70
	movs r0, #2
	mov r1, r9
	bl sub_08006B70
	cmp r5, #0
	beq _08086FDE
	mov r1, r8
	cmp r1, #4
	beq _08086FD0
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08086FD0:
	mov r0, r9
	cmp r0, #0xff
	beq _08086FDE
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
_08086FDE:
	bl sub_080003F0
	cmp r5, #4
	beq _08086FE8
	b _08086EE2
_08086FE8:
	movs r0, #0x1e
	bl sub_08057624
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #0xe
	str r4, [sp, #0]
	movs r0, #0x32
	movs r1, #0x1e
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B650
	str r4, [sp, #0]
	movs r0, #0x33
	movs r1, #0x1f
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B650
	ldr r0, _0808703C
	add r1, sp, #0x48
	strh r0, [r1, #0]
	movs r0, #3
	bl sub_08000AA8
	movs r0, #0x1e
	bl sub_0801AA34
	movs r4, #0x97
	lsls r4, r4, #1
	movs r5, #0
	movs r0, #1
	str r0, [sp, #0x4c]
	movs r0, #4
	mov r8, r0
	add r2, sp, #0x4c
	movs r0, #0
	movs r1, #0xf
	bl sub_08088A18
	b _080870F0
_0808703C: .4byte 0x00001F03
_08087040:
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r4, #1
	cmp r0, r1
	bls _0808708C
	cmp r5, #2
	beq _0808706A
	cmp r5, #2
	bhi _0808705A
	cmp r5, #1
	beq _08087064
	b _08087088
_0808705A:
	cmp r5, #3
	beq _08087074
	cmp r5, #4
	beq _08087084
	b _08087088
_08087064:
	movs r0, #0x8c
	lsls r0, r0, #3
	b _08087076
_0808706A:
	ldr r0, _08087070
	b _08087076
	.2byte 0x0000
_08087070: .4byte 0x00000461
_08087074:
	ldr r0, _08087080
_08087076:
	movs r1, #0x96
	lsls r1, r1, #1
	bl sub_080889D4
	b _08087088
_08087080: .4byte 0x00000462
_08087084:
	movs r0, #0
	str r0, [sp, #0x4c]
_08087088:
	adds r5, #1
	movs r4, #0
_0808708C:
	bl sub_080003F0
	bl sub_0801AAE0
	cmp r0, #0
	beq _080870B0
	ldr r0, _08087100
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080870B0
	ldr r0, _08087104
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _080870B0
	movs r1, #1
	mov sl, r1
_080870B0:
	mov r0, sl
	cmp r0, #0
	beq _080870B8
	b _08087728
_080870B8:
	bl sub_080021A8
	cmp r0, #0
	beq _080870C2
	b _08087728
_080870C2:
	cmp r5, #2
	bne _080870D2
	cmp r4, #0
	bne _080870D2
	movs r0, #0xc4
	lsls r0, r0, #1
	bl sub_08058688
_080870D2:
	cmp r5, #1
	bls _080870F0
	movs r0, #0
	mov r1, r8
	bl sub_08006B70
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xfe
	bls _080870F0
	movs r1, #0xff
	mov r8, r1
_080870F0:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _08087040
	movs r0, #0x1e
	bl sub_0801AA8C
	b _0808710C
	.2byte 0x0000
_08087100: .4byte gUnk_03001324
_08087104: .4byte gUnk_03002838
_08087108:
	bl sub_080003F0
_0808710C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08087108
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x3e
	movs r1, #0x1e
	movs r3, #0
	bl sub_0800B650
	ldr r0, _08087160
	add r1, sp, #0x48
	strh r0, [r1, #0]
	movs r0, #3
	bl sub_08000AA8
	movs r0, #0x1e
	bl sub_0801AA34
	movs r4, #0x97
	lsls r4, r4, #1
	movs r5, #0
	movs r0, #1
	str r0, [sp, #0x4c]
_08087142:
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r4, #1
	cmp r0, r1
	bls _080871D0
	subs r0, r5, #1
	cmp r0, #7
	bhi _080871CC
	lsls r0, r0, #2
	ldr r1, _08087164
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08087160: .4byte 0x00001E03
_08087164: .4byte _08087168
_08087168:
	.4byte _08087188
_0808716C: .4byte _08087190
_08087170: .4byte _08087198
_08087174: .4byte _080871A0
_08087178: .4byte _080871A8
_0808717C: .4byte _080871B0
_08087180: .4byte _080871B6
_08087184: .4byte _080871C8
_08087188:
	ldr r0, _0808718C
	b _080871B8
_0808718C: .4byte 0x00000463
_08087190:
	ldr r0, _08087194
	b _080871B8
_08087194: .4byte 0x00000464
_08087198:
	ldr r0, _0808719C
	b _080871B8
_0808719C: .4byte 0x00000465
_080871A0:
	ldr r0, _080871A4
	b _080871B8
_080871A4: .4byte 0x00000466
_080871A8:
	ldr r0, _080871AC
	b _080871B8
_080871AC: .4byte 0x00000467
_080871B0:
	movs r0, #0x8d
	lsls r0, r0, #3
	b _080871B8
_080871B6:
	ldr r0, _080871C4
_080871B8:
	movs r1, #0x96
	lsls r1, r1, #1
	bl sub_080889D4
	b _080871CC
	.2byte 0x0000
_080871C4: .4byte 0x00000469
_080871C8:
	movs r0, #0
	str r0, [sp, #0x4c]
_080871CC:
	adds r5, #1
	movs r4, #0
_080871D0:
	bl sub_080003F0
	bl sub_0801AAE0
	cmp r0, #0
	beq _080871F4
	ldr r0, _08087234
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080871F4
	ldr r0, _08087238
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _080871F4
	movs r0, #1
	mov sl, r0
_080871F4:
	mov r1, sl
	cmp r1, #0
	beq _080871FC
	b _08087728
_080871FC:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _08087142
	movs r0, #0x1e
	bl sub_0801AA8C
	movs r0, #0x1e
	bl sub_08057624
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x41
	movs r1, #0x1e
	movs r3, #0
	bl sub_0800B650
	movs r0, #1
	str r0, [sp, #0x4c]
	bl sub_080008C8
	movs r5, #0
	movs r0, #0x1e
	bl sub_0801AA34
	b _080872CE
	.2byte 0x0000
_08087234: .4byte gUnk_03001324
_08087238: .4byte gUnk_03002838
_0808723C:
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r6, #0
	adds r6, #1
	cmp r0, r1
	bls _080872A0
	cmp r5, #4
	bhi _0808729C
	lsls r0, r5, #2
	ldr r1, _08087258
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08087258: .4byte _0808725C
_0808725C:
	.4byte _08087270
_08087260: .4byte _08087278
_08087264: .4byte _08087280
_08087268: .4byte _08087288
_0808726C: .4byte _08087298
_08087270:
	ldr r0, _08087274
	b _0808728A
_08087274: .4byte 0x0000046B
_08087278:
	ldr r0, _0808727C
	b _0808728A
_0808727C: .4byte 0x0000046C
_08087280:
	ldr r0, _08087284
	b _0808728A
_08087284: .4byte 0x0000046D
_08087288:
	ldr r0, _08087294
_0808728A:
	movs r1, #0x96
	lsls r1, r1, #1
	bl sub_080889D4
	b _0808729C
_08087294: .4byte 0x0000046E
_08087298:
	movs r0, #0
	str r0, [sp, #0x4c]
_0808729C:
	adds r5, #1
	movs r6, #0
_080872A0:
	bl sub_080003F0
	ldr r0, _08087300
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080872BC
	ldr r0, _08087304
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _080872BC
	movs r0, #1
	mov sl, r0
_080872BC:
	mov r1, sl
	cmp r1, #0
	beq _080872C4
	b _08087728
_080872C4:
	bl sub_080021A8
	cmp r0, #0
	beq _080872CE
	b _08087728
_080872CE:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _0808723C
	movs r0, #0x1e
	bl sub_0801AA8C
	movs r0, #0x1e
	bl sub_08057624
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x44
	movs r1, #0x1e
	movs r3, #0
	bl sub_0800B650
	movs r0, #1
	str r0, [sp, #0x4c]
	movs r5, #0
	movs r0, #0x1e
	bl sub_0801AA34
	b _08087386
_08087300: .4byte gUnk_03001324
_08087304: .4byte gUnk_03002838
_08087308:
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r6, #0
	adds r6, #1
	cmp r0, r1
	bls _08087350
	cmp r5, #1
	beq _08087330
	cmp r5, #1
	blo _08087326
	cmp r5, #2
	beq _08087336
	cmp r5, #3
	beq _08087348
	b _0808734C
_08087326:
	ldr r0, _0808732C
	b _08087338
	.2byte 0x0000
_0808732C: .4byte 0x0000046F
_08087330:
	movs r0, #0x8e
	lsls r0, r0, #3
	b _08087338
_08087336:
	ldr r0, _08087344
_08087338:
	movs r1, #0x96
	lsls r1, r1, #1
	bl sub_080889D4
	b _0808734C
	.2byte 0x0000
_08087344: .4byte 0x00000471
_08087348:
	movs r0, #0
	str r0, [sp, #0x4c]
_0808734C:
	adds r5, #1
	movs r6, #0
_08087350:
	bl sub_080003F0
	bl sub_0801AAE0
	cmp r0, #0
	beq _08087374
	ldr r0, _080873B8
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08087374
	ldr r0, _080873BC
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _08087374
	movs r0, #1
	mov sl, r0
_08087374:
	mov r1, sl
	cmp r1, #0
	beq _0808737C
	b _08087728
_0808737C:
	bl sub_080021A8
	cmp r0, #0
	beq _08087386
	b _08087728
_08087386:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _08087308
	movs r0, #0x1e
	bl sub_0801AA8C
	movs r0, #0x1e
	bl sub_08057624
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x3f
	movs r1, #0x1e
	movs r3, #0
	bl sub_0800B650
	movs r0, #1
	str r0, [sp, #0x4c]
	movs r5, #0
	movs r0, #0x1e
	bl sub_0801AA34
	b _08087432
_080873B8: .4byte gUnk_03001324
_080873BC: .4byte gUnk_03002838
_080873C0:
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r6, #0
	adds r6, #1
	cmp r0, r1
	bls _080873FC
	cmp r5, #1
	beq _080873E4
	cmp r5, #1
	blo _080873DA
	cmp r5, #2
	beq _080873F4
	b _080873F8
_080873DA:
	ldr r0, _080873E0
	b _080873E6
	.2byte 0x0000
_080873E0: .4byte 0x00000472
_080873E4:
	ldr r0, _080873F0
_080873E6:
	movs r1, #0x96
	lsls r1, r1, #1
	bl sub_080889D4
	b _080873F8
_080873F0: .4byte 0x00000473
_080873F4:
	movs r0, #0
	str r0, [sp, #0x4c]
_080873F8:
	adds r5, #1
	movs r6, #0
_080873FC:
	bl sub_080003F0
	bl sub_0801AAE0
	cmp r0, #0
	beq _08087420
	ldr r0, _08087484
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08087420
	ldr r0, _08087488
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _08087420
	movs r0, #1
	mov sl, r0
_08087420:
	mov r1, sl
	cmp r1, #0
	beq _08087428
	b _08087728
_08087428:
	bl sub_080021A8
	cmp r0, #0
	beq _08087432
	b _08087728
_08087432:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _080873C0
	movs r0, #0x1e
	bl sub_0801AA8C
	movs r0, #0x1e
	bl sub_08057624
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r4, #0
	bl sub_08001494
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x44]
	add r0, sp, #0x44
	ldr r2, _0808748C
	adds r1, r7, #0
	bl sub_080B8574
	ldr r1, _08087490
	adds r0, r7, #0
	adds r2, r4, #0
	bl sub_08001348
	movs r0, #5
	bl sub_08057624
	adds r0, r7, #0
	bl sub_08001538
	movs r0, #1
	str r0, [sp, #0x4c]
	movs r5, #0
	movs r0, #0xa
	bl sub_0801AA34
	b _08087506
	.2byte 0x0000
_08087484: .4byte gUnk_03001324
_08087488: .4byte gUnk_03002838
_0808748C: .4byte 0x01000200
_08087490: .4byte 0x0600F000
_08087494:
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r6, #0
	adds r6, #1
	cmp r0, r1
	bls _080874D0
	cmp r5, #1
	beq _080874B8
	cmp r5, #1
	blo _080874AE
	cmp r5, #2
	beq _080874C8
	b _080874CC
_080874AE:
	ldr r0, _080874B4
	b _080874BA
	.2byte 0x0000
_080874B4: .4byte 0x00000474
_080874B8:
	ldr r0, _080874C4
_080874BA:
	movs r1, #0x96
	lsls r1, r1, #1
	bl sub_080889D4
	b _080874CC
_080874C4: .4byte 0x00000475
_080874C8:
	movs r0, #0
	str r0, [sp, #0x4c]
_080874CC:
	adds r5, #1
	movs r6, #0
_080874D0:
	bl sub_080003F0
	bl sub_0801AAE0
	cmp r0, #0
	beq _080874F4
	ldr r0, _08087538
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080874F4
	ldr r0, _0808753C
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _080874F4
	movs r0, #1
	mov sl, r0
_080874F4:
	mov r1, sl
	cmp r1, #0
	beq _080874FC
	b _08087728
_080874FC:
	bl sub_080021A8
	cmp r0, #0
	beq _08087506
	b _08087728
_08087506:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _08087494
	movs r0, #0x1e
	bl sub_0801AA8C
	movs r0, #0x1e
	bl sub_08057624
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x42
	movs r1, #0x1e
	movs r3, #0
	bl sub_0800B650
	movs r0, #1
	str r0, [sp, #0x4c]
	movs r5, #0
	movs r0, #0x1e
	bl sub_0801AA34
	b _080875B2
_08087538: .4byte gUnk_03001324
_0808753C: .4byte gUnk_03002838
_08087540:
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r6, #0
	adds r6, #1
	cmp r0, r1
	bls _0808757C
	cmp r5, #1
	beq _08087564
	cmp r5, #1
	blo _0808755A
	cmp r5, #2
	beq _08087574
	b _08087578
_0808755A:
	ldr r0, _08087560
	b _08087566
	.2byte 0x0000
_08087560: .4byte 0x00000476
_08087564:
	ldr r0, _08087570
_08087566:
	movs r1, #0x96
	lsls r1, r1, #1
	bl sub_080889D4
	b _08087578
_08087570: .4byte 0x00000477
_08087574:
	movs r0, #0
	str r0, [sp, #0x4c]
_08087578:
	adds r5, #1
	movs r6, #0
_0808757C:
	bl sub_080003F0
	bl sub_0801AAE0
	cmp r0, #0
	beq _080875A0
	ldr r0, _08087620
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080875A0
	ldr r0, _08087624
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _080875A0
	movs r0, #1
	mov sl, r0
_080875A0:
	mov r1, sl
	cmp r1, #0
	beq _080875A8
	b _08087728
_080875A8:
	bl sub_080021A8
	cmp r0, #0
	beq _080875B2
	b _08087728
_080875B2:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _08087540
	movs r0, #0x1e
	bl sub_0801AA8C
	movs r0, #0x1e
	bl sub_08057624
	movs r0, #0xe8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	ldr r0, _08087628
	add r1, sp, #0x48
	strh r0, [r1, #0]
	adds r4, r1, #0
	movs r0, #2
	bl sub_08000AA8
	ldr r0, _0808762C
	strh r0, [r4, #0]
	movs r0, #3
	adds r1, r4, #0
	bl sub_08000AA8
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #0xf
	str r4, [sp, #0]
	movs r0, #0x43
	movs r1, #0x1f
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B650
	str r4, [sp, #0]
	movs r0, #0x3d
	movs r1, #0x1e
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B650
	movs r0, #1
	str r0, [sp, #0x4c]
	movs r5, #0
	movs r0, #0x1e
	bl sub_0801AA34
	movs r0, #0x10
	mov r9, r0
	mov r8, r5
	b _08087716
_08087620: .4byte gUnk_03001324
_08087624: .4byte gUnk_03002838
_08087628: .4byte 0x00001E03
_0808762C: .4byte 0x00001F03
_08087630:
	cmp r5, #2
	bls _08087682
	cmp r6, #0x3c
	bls _08087682
	mov r1, r9
	lsls r4, r1, #0x10
	lsrs r3, r4, #0x10
	mov r0, r8
	lsls r7, r0, #0x10
	str r0, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	bl sub_0800903C
	ldr r0, _0808769C
	ldr r0, [r0, #0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08087682
	ldr r1, _080876A0
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	mov r9, r1
	cmp r0, #0
	bgt _0808766E
	movs r0, #0
	mov r9, r0
_0808766E:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08087682
	movs r0, #0x10
	mov r8, r0
_08087682:
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r6, #0
	adds r6, #1
	cmp r0, r1
	bls _080876E4
	cmp r5, #4
	bhi _080876E0
	lsls r0, r5, #2
	ldr r1, _080876A4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0808769C: .4byte gUnk_03002344
_080876A0: .4byte 0xFFFF0000
_080876A4: .4byte _080876A8
_080876A8:
	.4byte _080876BC
_080876AC: .4byte _080876C2
_080876B0: .4byte _080876CC
_080876B4: .4byte _080876E0
_080876B8: .4byte _080876DC
_080876BC:
	movs r0, #0x8f
	lsls r0, r0, #3
	b _080876CE
_080876C2:
	ldr r0, _080876C8
	b _080876CE
	.2byte 0x0000
_080876C8: .4byte 0x00000479
_080876CC:
	ldr r0, _080876D8
_080876CE:
	movs r1, #0x96
	lsls r1, r1, #1
	bl sub_080889D4
	b _080876E0
_080876D8: .4byte 0x0000047A
_080876DC:
	movs r0, #0
	str r0, [sp, #0x4c]
_080876E0:
	adds r5, #1
	movs r6, #0
_080876E4:
	bl sub_080003F0
	bl sub_0801AAE0
	cmp r0, #0
	beq _08087708
	ldr r0, _0808773C
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08087708
	ldr r0, _08087740
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _08087708
	movs r1, #1
	mov sl, r1
_08087708:
	mov r0, sl
	cmp r0, #0
	bne _08087728
	bl sub_080021A8
	cmp r0, #0
	bne _08087728
_08087716:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _08087630
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
_08087728:
	movs r0, #0
	str r0, [sp, #0x4c]
	movs r0, #0xa
	bl sub_080586D0
	movs r0, #6
	bl sub_0801ABE8
	b _08087748
	.2byte 0x0000
_0808773C: .4byte gUnk_03001324
_08087740: .4byte gUnk_03002838
_08087744:
	bl sub_080003F0
_08087748:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08087744
	movs r0, #0x3c
	bl sub_08057624
	movs r0, #0
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	ldr r1, _08087784
	ldr r0, _08087780
	bl sub_08000420
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08087780: .4byte 0x5A112EBF
_08087784: .4byte 0x00000002
	thumb_func_end sub_08086860
