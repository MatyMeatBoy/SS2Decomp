	thumb_func_start sub_08093BAC
sub_08093BAC: @ 0x08093BAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x168
	lsls r1, r1, #0x18
	movs r2, #0xff
	lsls r2, r2, #0x18
	adds r1, r1, r2
	lsrs r1, r1, #0x18
	mov r9, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x16
	str r0, [sp, #0x11c]
	ldr r6, _08093C9C
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x14
	adds r1, r6, #0
	movs r2, #7
	adds r3, r5, #0
	bl sub_08065158
	add r3, sp, #0x48
	mov r8, r3
	mov r0, r9
	lsls r1, r0, #0x18
	asrs r1, r1, #0x18
	adds r1, r1, r6
	str r4, [sp, #0]
	mov r0, r8
	movs r2, #7
	adds r3, r5, #0
	bl sub_08065158
	add r6, sp, #0x7c
	ldr r1, _08093CA0
	str r4, [sp, #0]
	adds r0, r6, #0
	movs r2, #8
	adds r3, r5, #0
	bl sub_08065158
	add r4, sp, #0xb0
	ldr r1, [sp, #0x54]
	adds r1, #0xe0
	adds r0, r4, #0
	bl sub_08097F70
	movs r7, #0
	mov r1, sp
	adds r1, #0xe0
	str r1, [sp, #0x158]
	mov r2, sp
	adds r2, #0xe8
	str r2, [sp, #0x15c]
	mov r3, sp
	adds r3, #0xf0
	str r3, [sp, #0x160]
	mov r4, sp
	adds r4, #0xf8
	str r4, [sp, #0x164]
	mov r6, sp
	adds r6, #0xd0
	str r6, [sp, #0x154]
	mov sl, r1
	movs r4, #0
	mov r8, r6
	mov ip, r2
	adds r5, r3, #0
_08093C3E:
	lsls r1, r7, #1
	mov r0, sl
	adds r3, r0, r1
	mov r6, ip
	adds r2, r6, r1
	adds r1, r5, r1
	ldr r6, [sp, #0x164]
	adds r0, r6, r7
	strb r4, [r0, #0]
	strh r4, [r1, #0]
	strh r4, [r2, #0]
	strh r4, [r3, #0]
	lsls r0, r7, #2
	add r0, r8
	movs r1, #1
	str r1, [r0, #0]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08093C3E
	ldr r0, _08093CA4
	movs r1, #0
	str r1, [sp, #0x118]
	strb r1, [r0, #0]
	movs r3, #0
	str r3, [sp, #0x124]
	movs r4, #0
	str r4, [sp, #0x138]
	movs r6, #0
	str r6, [sp, #0x134]
	movs r0, #0
	str r0, [sp, #0x13c]
	movs r5, #0
	movs r1, #1
	str r1, [sp, #0x140]
	movs r2, #1
	str r2, [sp, #0x130]
	movs r3, #2
	str r3, [sp, #0x12c]
	movs r0, #6
	bl sub_0801AB50
	mov r4, r9
	lsls r4, r4, #0x18
	str r4, [sp, #0x148]
	b _08093CAC
_08093C9C: .4byte 0x00050027
_08093CA0: .4byte 0x0005002B
_08093CA4: .4byte gUnk_0300026C
_08093CA8:
	bl sub_080003F0
_08093CAC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08093CA8
	movs r0, #0xf4
	bl sub_0805865C
_08093CBA:
	ldr r6, [sp, #0x148]
	asrs r0, r6, #0x18
	cmp r0, #1
	beq _08093CE0
	cmp r0, #1
	bgt _08093CCC
	cmp r0, #0
	beq _08093CD6
	b _08093D08
_08093CCC:
	cmp r0, #2
	beq _08093CEE
	cmp r0, #3
	beq _08093CFC
	b _08093D08
_08093CD6:
	movs r0, #0xe0
	lsls r0, r0, #7
	str r0, [sp, #0x110]
	str r0, [sp, #0x114]
	b _08093D08
_08093CE0:
	movs r0, #0xe0
	lsls r0, r0, #7
	str r0, [sp, #0x110]
	movs r1, #0xd0
	lsls r1, r1, #7
	str r1, [sp, #0x114]
	b _08093D08
_08093CEE:
	movs r2, #0xf0
	lsls r2, r2, #7
	str r2, [sp, #0x110]
	movs r3, #0xd0
	lsls r3, r3, #7
	str r3, [sp, #0x114]
	b _08093D08
_08093CFC:
	movs r4, #0xf4
	lsls r4, r4, #7
	str r4, [sp, #0x110]
	movs r6, #0xc0
	lsls r6, r6, #7
	str r6, [sp, #0x114]
_08093D08:
	ldr r0, _08093D30
	lsls r1, r5, #1
	adds r0, r1, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #4
	ldr r3, [sp, #0x114]
	adds r0, r3, r0
	str r0, [sp, #0x114]
	str r1, [sp, #0x14c]
	ldr r4, [sp, #0x134]
	cmp r4, #4
	bls _08093D24
	b _08094086
_08093D24:
	lsls r0, r4, #2
	ldr r1, _08093D34
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08093D30: .4byte gUnk_080B9704
_08093D34: .4byte _08093D38
_08093D38:
	.4byte _08093D4C
_08093D3C: .4byte _08093D84
_08093D40: .4byte _08093E26
_08093D44: .4byte _08093E5A
_08093D48: .4byte _08094010
_08093D4C:
	mov r6, sp
	adds r6, #0x14
	str r6, [sp, #0x104]
	ldr r1, [sp, #0x148]
	asrs r0, r1, #0x18
	movs r2, #0x3c
	str r2, [sp, #0x128]
	cmp r0, #3
	bne _08093D62
	movs r3, #0xb4
	str r3, [sp, #0x128]
_08093D62:
	ldr r4, _08093D80
	adds r0, r4, #0
	movs r1, #6
	movs r2, #2
	movs r3, #0x12
	bl sub_08097EB0
	ldr r6, [r4, #0]
	str r6, [sp, #0x108]
	ldr r4, [r4, #4]
	str r4, [sp, #0x10c]
	movs r0, #1
	str r0, [sp, #0x134]
	b _08094086
	.2byte 0x0000
_08093D80: .4byte gUnk_0851851C
_08093D84:
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x104]
	ldr r2, [sp, #0x128]
	lsls r1, r2, #0x10
	ldr r3, [sp, #0x124]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	cmp r1, r0
	bge _08093E1C
	add r4, sp, #0xfc
	movs r0, #0
	adds r1, r4, #0
	bl sub_08097EF0
	cmp r0, #0
	beq _08093E0C
	ldr r6, [sp, #0x148]
	asrs r0, r6, #0x18
	cmp r0, #1
	beq _08093DD4
	cmp r0, #1
	bgt _08093DB8
	cmp r0, #0
	beq _08093DC2
	b _08093DFC
_08093DB8:
	cmp r0, #2
	beq _08093DDC
	cmp r0, #3
	beq _08093DF0
	b _08093DFC
_08093DC2:
	ldr r0, _08093DD0
	movs r1, #6
	movs r2, #1
	movs r3, #0x14
	bl sub_08097EB0
	b _08093DFC
_08093DD0: .4byte gUnk_0851854C
_08093DD4:
	ldr r0, _08093DD8
	b _08093DDE
_08093DD8: .4byte gUnk_0851857C
_08093DDC:
	ldr r0, _08093DEC
_08093DDE:
	movs r1, #8
	movs r2, #1
	movs r3, #0xe
	bl sub_08097EB0
	b _08093DFC
	.2byte 0x0000
_08093DEC: .4byte gUnk_085185BC
_08093DF0:
	ldr r0, _08093E18
	movs r1, #8
	movs r2, #1
	movs r3, #0xe
	bl sub_08097EB0
_08093DFC:
	movs r0, #1
	str r0, [sp, #0x12c]
	movs r1, #0
	str r1, [sp, #0x130]
	movs r2, #0
	str r2, [sp, #0x124]
	movs r3, #2
	str r3, [sp, #0x134]
_08093E0C:
	ldr r4, [r4, #0]
	str r4, [sp, #0x108]
	add r0, sp, #0xfc
	ldr r0, [r0, #4]
	str r0, [sp, #0x10c]
	b _08094086
_08093E18: .4byte gUnk_085185FC
_08093E1C:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x124]
	b _08094086
_08093E26:
	mov r4, sp
	adds r4, #0x48
	str r4, [sp, #0x104]
	add r4, sp, #0xfc
	movs r0, #0
	adds r1, r4, #0
	bl sub_08097EF0
	cmp r0, #0
	beq _08093E50
	movs r6, #1
	str r6, [sp, #0x138]
	movs r0, #0
	str r0, [sp, #0x124]
	movs r1, #0
	str r1, [sp, #0x13c]
	movs r2, #3
	str r2, [sp, #0x134]
	movs r0, #0xf6
	bl sub_0805865C
_08093E50:
	ldr r3, [r4, #0]
	str r3, [sp, #0x108]
	ldr r4, [r4, #4]
	str r4, [sp, #0x10c]
	b _08094086
_08093E5A:
	ldr r4, [sp, #0x124]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	bgt _08093E66
	b _08093F94
_08093E66:
	ldr r0, _08093F80
	ldrb r0, [r0, #0]
	movs r6, #0
	str r6, [sp, #0x138]
	cmp r0, #0
	beq _08093E76
	movs r0, #3
	str r0, [sp, #0x138]
_08093E76:
	bl sub_080944A8
	movs r7, #0
	mov r1, sp
	adds r1, #0xa0
	str r1, [sp, #0x150]
	adds r5, #1
	str r5, [sp, #0x144]
	add r2, sp, #0x7c
	mov r9, r2
_08093E8A:
	lsls r0, r7, #2
	ldr r3, [sp, #0x154]
	adds r1, r3, r0
	ldr r1, [r1, #0]
	lsls r4, r7, #1
	mov sl, r0
	cmp r1, #0
	beq _08093ECE
	ldr r6, [sp, #0x15c]
	adds r2, r6, r4
	ldr r0, [sp, #0x160]
	adds r1, r0, r4
	movs r0, #0
	strh r0, [r1, #0]
	strh r0, [r2, #0]
	bl sub_0800086C
	ldr r1, [sp, #0x158]
	adds r2, r1, r4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08093EBC
	adds r0, r1, #7
_08093EBC:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08093ECC
	negs r0, r0
_08093ECC:
	strh r0, [r2, #0]
_08093ECE:
	movs r2, #0
	mov r8, r2
	movs r6, #1
	ldr r3, [sp, #0x150]
	strb r6, [r3, #0]
	mov r0, r9
	ldr r1, [r0, #0xc]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x11
	movs r2, #1
	bl sub_08000AF0
	ldr r3, [sp, #0x158]
	adds r6, r3, r4
	ldrh r1, [r6, #0]
	ldr r0, [sp, #0x15c]
	adds r5, r0, r4
	ldr r2, [sp, #0x160]
	adds r3, r2, r4
	mov r4, r8
	str r4, [sp, #0]
	mov r0, r9
	adds r2, r5, #0
	bl sub_08065370
	ldr r1, [sp, #0x154]
	add r1, sl
	str r0, [r1, #0]
	ldr r0, [sp, #0x164]
	adds r1, r0, r7
	ldrb r2, [r1, #0]
	adds r0, r2, #1
	strb r0, [r1, #0]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08093F3E
	ldr r1, [sp, #0x110]
	lsls r0, r1, #8
	ldr r2, [sp, #0x114]
	lsls r1, r2, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #0]
	ldrh r3, [r5, #0]
	str r4, [sp, #0]
	add r4, sp, #0x98
	str r4, [sp, #4]
	ldr r4, [sp, #0x84]
	str r4, [sp, #8]
	ldr r4, [sp, #0x7c]
	str r4, [sp, #0xc]
	bl sub_08007870
_08093F3E:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08093E8A
	ldr r3, [sp, #0x13c]
	cmp r3, #0
	bne _08093F58
	movs r4, #1
	str r4, [sp, #0x13c]
	movs r0, #0xf5
	bl sub_0805865C
_08093F58:
	ldr r6, [sp, #0x154]
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _08093FA0
	ldr r0, [sp, #0x118]
	adds r0, #1
	str r0, [sp, #0x118]
	ldr r1, [sp, #0x11c]
	cmp r1, r0
	bne _08093F84
	movs r0, #3
	bl sub_080586D0
	bl sub_08094490
	movs r2, #0
	str r2, [sp, #0x124]
	movs r3, #4
	str r3, [sp, #0x134]
	b _08093FA0
_08093F80: .4byte gUnk_0300026C
_08093F84:
	movs r0, #3
	ldr r4, [sp, #0x118]
	ands r0, r4
	cmp r0, #0
	bne _08093FA0
	movs r6, #0
	str r6, [sp, #0x13c]
	b _08093FA0
_08093F94:
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x124]
	adds r5, #1
	str r5, [sp, #0x144]
_08093FA0:
	ldr r1, [sp, #0x148]
	asrs r0, r1, #0x18
	cmp r0, #1
	beq _08093FCC
	cmp r0, #1
	bgt _08093FB2
	cmp r0, #0
	beq _08093FBC
	b _08093FEE
_08093FB2:
	cmp r0, #2
	beq _08093FD8
	cmp r0, #3
	beq _08093FE4
	b _08093FEE
_08093FBC:
	ldr r0, _08093FC8
	ldr r2, [r0, #0x28]
	str r2, [sp, #0x108]
	ldr r0, [r0, #0x2c]
	b _08093FEC
	.2byte 0x0000
_08093FC8: .4byte gUnk_0851854C
_08093FCC:
	ldr r0, _08093FD4
	ldr r3, [r0, #0x38]
	str r3, [sp, #0x108]
	b _08093FEA
_08093FD4: .4byte gUnk_0851857C
_08093FD8:
	ldr r0, _08093FE0
	ldr r4, [r0, #0x38]
	str r4, [sp, #0x108]
	b _08093FEA
_08093FE0: .4byte gUnk_085185BC
_08093FE4:
	ldr r0, _08094008
	ldr r6, [r0, #0x38]
	str r6, [sp, #0x108]
_08093FEA:
	ldr r0, [r0, #0x3c]
_08093FEC:
	str r0, [sp, #0x10c]
_08093FEE:
	ldr r0, _0809400C
	ldr r1, [sp, #0x14c]
	adds r0, r1, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #4
	ldr r3, [sp, #0x10c]
	adds r0, r3, r0
	str r0, [sp, #0x10c]
	ldr r4, [sp, #0x144]
	lsls r0, r4, #0x18
	b _08094084
	.2byte 0x0000
_08094008: .4byte gUnk_085185FC
_0809400C: .4byte gUnk_080B9704
_08094010:
	bl sub_0809449C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08094020
	movs r6, #0
	str r6, [sp, #0x140]
_08094020:
	ldr r1, [sp, #0x148]
	asrs r0, r1, #0x18
	cmp r0, #1
	beq _0809404C
	cmp r0, #1
	bgt _08094032
	cmp r0, #0
	beq _0809403C
	b _0809406E
_08094032:
	cmp r0, #2
	beq _08094058
	cmp r0, #3
	beq _08094064
	b _0809406E
_0809403C:
	ldr r0, _08094048
	ldr r2, [r0, #0x28]
	str r2, [sp, #0x108]
	ldr r0, [r0, #0x2c]
	b _0809406C
	.2byte 0x0000
_08094048: .4byte gUnk_0851854C
_0809404C:
	ldr r0, _08094054
	ldr r3, [r0, #0x38]
	str r3, [sp, #0x108]
	b _0809406A
_08094054: .4byte gUnk_0851857C
_08094058:
	ldr r0, _08094060
	ldr r4, [r0, #0x38]
	str r4, [sp, #0x108]
	b _0809406A
_08094060: .4byte gUnk_085185BC
_08094064:
	ldr r0, _080940A0
	ldr r6, [r0, #0x38]
	str r6, [sp, #0x108]
_0809406A:
	ldr r0, [r0, #0x3c]
_0809406C:
	str r0, [sp, #0x10c]
_0809406E:
	ldr r0, _080940A4
	ldr r1, [sp, #0x14c]
	adds r0, r1, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #4
	ldr r3, [sp, #0x10c]
	adds r0, r3, r0
	str r0, [sp, #0x10c]
	adds r0, r5, #1
	lsls r0, r0, #0x18
_08094084:
	lsrs r5, r0, #0x18
_08094086:
	ldr r1, [sp, #0x104]
	adds r1, #0x23
	movs r0, #0
	strb r0, [r1, #0]
	ldr r4, [sp, #0x138]
	cmp r4, #1
	beq _080940C8
	cmp r4, #1
	bgt _080940A8
	cmp r4, #0
	beq _080940B4
	b _0809413A
	.2byte 0x0000
_080940A0: .4byte gUnk_085185FC
_080940A4: .4byte gUnk_080B9704
_080940A8:
	ldr r6, [sp, #0x138]
	cmp r6, #2
	beq _080940EE
	cmp r6, #3
	beq _0809411E
	b _0809413A
_080940B4:
	ldr r0, [sp, #0x104]
	ldr r1, [r0, #0xc]
	adds r1, #0xe0
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	movs r1, #0
	str r1, [sp, #0x120]
	b _0809413A
_080940C8:
	ldr r0, [sp, #0x120]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x120]
	add r0, sp, #0xb0
	movs r1, #4
	ldr r2, [sp, #0x120]
	movs r3, #0x10
	bl sub_08096E20
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08094112
	movs r2, #0
	str r2, [sp, #0x120]
	movs r3, #2
	str r3, [sp, #0x138]
	b _08094112
_080940EE:
	ldr r4, [sp, #0x104]
	ldr r1, [r4, #0xc]
	adds r1, #0xe0
	ldr r0, [sp, #0x120]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x120]
	add r0, sp, #0xb0
	ldr r2, [sp, #0x120]
	movs r3, #0x10
	bl sub_08096D40
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08094112
	movs r6, #0
	str r6, [sp, #0x138]
_08094112:
	movs r0, #0x10
	add r1, sp, #0xb0
	movs r2, #1
	bl sub_08000AF0
	b _0809413A
_0809411E:
	add r0, sp, #0xb0
	movs r1, #6
	bl sub_08096EFC
	movs r0, #0x10
	add r1, sp, #0xb0
	movs r2, #1
	bl sub_08000AF0
	movs r1, #6
	negs r1, r1
	add r0, sp, #0xb0
	bl sub_08096EFC
_0809413A:
	ldr r1, [sp, #0x108]
	lsls r0, r1, #8
	ldr r2, [sp, #0x10c]
	lsls r1, r2, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x12c]
	str r3, [sp, #0]
	ldr r2, [sp, #0x104]
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r4, [sp, #0x104]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4, #0]
	str r2, [sp, #0xc]
	ldr r6, [sp, #0x130]
	str r6, [sp, #0x10]
	movs r2, #0
	movs r3, #0
	bl sub_080087AC
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	bne _08094176
	movs r0, #0
	str r0, [sp, #0x140]
_08094176:
	ldr r1, [sp, #0x140]
	cmp r1, #0
	beq _0809417E
	b _08093CBA
_0809417E:
	movs r0, #6
	bl sub_0801ABE8
	b _0809418A
_08094186:
	bl sub_080003F0
_0809418A:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08094186
	bl sub_080944F0
	bl sub_0800CC18
	bl sub_0800CC68
	bl sub_08098028
	add sp, #0x168
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08093BAC
