	thumb_func_start sub_0804FF04
sub_0804FF04: @ 0x0804FF04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _0804FF2C
	ldr r0, _0804FF28
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0804FF36
	.2byte 0x0000
_0804FF28: .4byte gUnk_03005CF4
_0804FF2C:
	ldr r0, _0804FF78
	ldr r0, [r0, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r0, r0, r2
_0804FF36:
	ldrb r0, [r0, #0]
	asrs r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _0804FF42
	b _08050210
_0804FF42:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804FF7C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CC98
	cmp r0, #0
	bne _0804FFA8
	bl sub_0801AB24
	cmp r0, #1
	beq _0804FF8C
	cmp r0, #1
	bgt _0804FF80
	cmp r0, #0
	beq _0804FF86
	b _0804FFA0
_0804FF78: .4byte gUnk_03005CF4
_0804FF7C: .4byte gUnk_03003CE0
_0804FF80:
	cmp r0, #2
	beq _0804FF94
	b _0804FFA0
_0804FF86:
	bl sub_080576A8
	b _0804FFA0
_0804FF8C:
	movs r0, #6
	bl sub_0801AB50
	b _0804FFA0
_0804FF94:
	movs r0, #6
	bl sub_0801AB90
	b _0804FFA0
_0804FF9C:
	bl sub_080003F0
_0804FFA0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804FF9C
_0804FFA8:
	ldr r0, _0804FFE4
	ldr r0, [r0, #0]
	movs r3, #1
	ldr r2, [r0, #0x38]
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _0804FFBA
	b _08050180
_0804FFBA:
	orrs r2, r3
	str r2, [r0, #0x38]
	movs r1, #0xc4
	ldr r0, _0804FFE8
	str r1, [r0, #0]
	ldr r0, _0804FFEC
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804FFD6
	movs r0, #0xc4
	bl sub_08006CB4
_0804FFD6:
	movs r4, #0x1e
	add r5, sp, #0xc
	add r3, sp, #0x10
	mov r9, r3
	add r0, sp, #0x14
	mov r8, r0
	b _0804FFFA
_0804FFE4: .4byte gUnk_03005CF4
_0804FFE8: .4byte gUnk_03005CF8
_0804FFEC: .4byte gUnk_030027D0
_0804FFF0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08050006
_0804FFFA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804FFF0
_08050006:
	ldr r0, _0805005C
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	movs r0, #0xa0
	lsls r0, r0, #0xe
	mov sl, r0
_0805001E:
	add r0, sp, #8
	adds r1, r7, #0
	movs r3, #0xc0
	lsls r3, r3, #0x10
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r5, #0
	adds r1, r6, #0
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	adds r4, #0x11
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0805001E
	b _08050064
_0805005C: .4byte gUnk_03003170
_08050060:
	bl sub_080003F0
_08050064:
	bl sub_0805F184
	cmp r0, #0
	bne _08050060
	b _08050072
_0805006E:
	bl sub_080003F0
_08050072:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805006E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08050094
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0805009C
	.2byte 0x0000
_08050094: .4byte 0x00140068
_08050098:
	bl sub_080003F0
_0805009C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08050098
	ldr r0, _08050134
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov sl, r4
	movs r7, #0
_080500BC:
	mov r0, r9
	adds r1, r6, #0
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, r8
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	adds r4, #0x22
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080500BC
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08050138
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	bl sub_0800CB9C
	cmp r0, #0
	bne _08050144
	ldr r0, _0805013C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805014A
	ldr r1, _08050140
	movs r0, #7
	str r0, [r1, #0]
	bl sub_08006CB4
	b _0805014A
	.2byte 0x0000
_08050134: .4byte gUnk_03003170
_08050138: .4byte gUnk_03003CE0
_0805013C: .4byte gUnk_030027D0
_08050140: .4byte gUnk_03005CF8
_08050144:
	movs r0, #0
	bl sub_080586B4
_0805014A:
	ldr r0, _08050178
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _0805017C
	movs r6, #1
	movs r4, #0
_08050156:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _0805016A
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _0805016A
	strh r4, [r2, #0xc]
_0805016A:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08050156
	b _080501FE
_08050178: .4byte gUnk_030056F4
_0805017C: .4byte gUnk_030056FC
_08050180:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080501C0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	bl sub_0800CB9C
	cmp r0, #0
	bne _080501CC
	ldr r0, _080501C4
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080501D2
	ldr r1, _080501C8
	movs r0, #7
	str r0, [r1, #0]
	bl sub_08006CB4
	b _080501D2
	.2byte 0x0000
_080501C0: .4byte gUnk_03003CE0
_080501C4: .4byte gUnk_030027D0
_080501C8: .4byte gUnk_03005CF8
_080501CC:
	movs r0, #0
	bl sub_080586B4
_080501D2:
	ldr r0, _08050208
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _0805020C
	movs r6, #1
	movs r4, #0
_080501DE:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _080501F2
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _080501F2
	strh r4, [r2, #0xc]
_080501F2:
	adds r3, #1
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r2, r2, r1
	cmp r3, #4
	bls _080501DE
_080501FE:
	bl sub_08019F04
	bl sub_080502DC
	b _080502C2
_08050208: .4byte gUnk_030056F4
_0805020C: .4byte gUnk_030056FC
_08050210:
	ldr r2, _08050238
	movs r0, #1
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	bl sub_0800CC98
	cmp r0, #0
	bne _08050264
	bl sub_0801AB24
	cmp r0, #1
	beq _08050248
	cmp r0, #1
	bgt _0805023C
	cmp r0, #0
	beq _08050242
	b _0805025C
	.2byte 0x0000
_08050238: .4byte 0x0000270F
_0805023C:
	cmp r0, #2
	beq _08050250
	b _0805025C
_08050242:
	bl sub_080576A8
	b _0805025C
_08050248:
	movs r0, #6
	bl sub_0801AB50
	b _0805025C
_08050250:
	movs r0, #6
	bl sub_0801AB90
	b _0805025C
_08050258:
	bl sub_080003F0
_0805025C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08050258
_08050264:
	bl sub_0800CB9C
	cmp r0, #0
	bne _0805028C
	ldr r0, _08050284
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08050292
	ldr r1, _08050288
	movs r0, #7
	str r0, [r1, #0]
	bl sub_08006CB4
	b _08050292
_08050284: .4byte gUnk_030027D0
_08050288: .4byte gUnk_03005CF8
_0805028C:
	movs r0, #0
	bl sub_080586B4
_08050292:
	ldr r0, _080502D4
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _080502D8
	movs r6, #1
	movs r4, #0
_0805029E:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _080502B2
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _080502B2
	strh r4, [r2, #0xc]
_080502B2:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _0805029E
	bl sub_08019F04
_080502C2:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080502D4: .4byte gUnk_030056F4
_080502D8: .4byte gUnk_030056FC
	thumb_func_end sub_0804FF04
