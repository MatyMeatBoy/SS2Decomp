	thumb_func_start sub_0802FEA0
sub_0802FEA0: @ 0x0802FEA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0802FEDC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r7, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_0800CE30
	cmp r0, #0
	beq _0802FEE4
	ldr r0, _0802FEE0
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x7c]
	b _0802FEEA
	.2byte 0x0000
_0802FEDC: .4byte gUnk_03003CE0
_0802FEE0: .4byte gUnk_03005CF4
_0802FEE4:
	ldr r0, _0802FEF8
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x74]
_0802FEEA:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0802FF52
	b _0802FF00
	.2byte 0x0000
_0802FEF8: .4byte gUnk_03005CF4
_0802FEFC:
	bl sub_080003F0
_0802FF00:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FEFC
	b _0802FF0E
_0802FF0A:
	bl sub_080003F0
_0802FF0E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FF0A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FF30
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FF38
_0802FF30: .4byte 0x001400CC
_0802FF34:
	bl sub_080003F0
_0802FF38:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802FF44
	b _080301E2
_0802FF44:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FF34
	bl sub_0805EFBC
	b _080301E2
_0802FF52:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _0802FFB2
	b _0802FF60
_0802FF5C:
	bl sub_080003F0
_0802FF60:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FF5C
	b _0802FF6E
_0802FF6A:
	bl sub_080003F0
_0802FF6E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FF6A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FF90
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FF98
_0802FF90: .4byte 0x001400CB
_0802FF94:
	bl sub_080003F0
_0802FF98:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802FFA4
	b _080301E2
_0802FFA4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FF94
	bl sub_0805EFBC
	b _080301E2
_0802FFB2:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08030012
	b _0802FFC0
_0802FFBC:
	bl sub_080003F0
_0802FFC0:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FFBC
	b _0802FFCE
_0802FFCA:
	bl sub_080003F0
_0802FFCE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FFCA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FFF0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FFF8
_0802FFF0: .4byte 0x001400CA
_0802FFF4:
	bl sub_080003F0
_0802FFF8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030004
	b _080301E2
_08030004:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FFF4
	bl sub_0805EFBC
	b _080301E2
_08030012:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08030072
	b _08030020
_0803001C:
	bl sub_080003F0
_08030020:
	bl sub_0805F184
	cmp r0, #0
	bne _0803001C
	b _0803002E
_0803002A:
	bl sub_080003F0
_0803002E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803002A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030050
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030058
_08030050: .4byte 0x001400C9
_08030054:
	bl sub_080003F0
_08030058:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030064
	b _080301E2
_08030064:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030054
	bl sub_0805EFBC
	b _080301E2
_08030072:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _080300D2
	b _08030080
_0803007C:
	bl sub_080003F0
_08030080:
	bl sub_0805F184
	cmp r0, #0
	bne _0803007C
	b _0803008E
_0803008A:
	bl sub_080003F0
_0803008E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803008A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080300B0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080300B8
_080300B0: .4byte 0x001400C8
_080300B4:
	bl sub_080003F0
_080300B8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080300C4
	b _080301E2
_080300C4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080300B4
	bl sub_0805EFBC
	b _080301E2
_080300D2:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08030130
	b _080300E0
_080300DC:
	bl sub_080003F0
_080300E0:
	bl sub_0805F184
	cmp r0, #0
	bne _080300DC
	b _080300EE
_080300EA:
	bl sub_080003F0
_080300EE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080300EA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030110
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030118
_08030110: .4byte 0x001400C7
_08030114:
	bl sub_080003F0
_08030118:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080301E2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030114
	bl sub_0805EFBC
	b _080301E2
_08030130:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08030194
	b _0803013E
_0803013A:
	bl sub_080003F0
_0803013E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803013A
	b _0803014C
_08030148:
	bl sub_080003F0
_0803014C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030148
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030170
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030178
	.2byte 0x0000
_08030170: .4byte 0x001400C6
_08030174:
	bl sub_080003F0
_08030178:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080301E2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030174
	bl sub_0805EFBC
	b _080301E2
_08030190:
	bl sub_080003F0
_08030194:
	bl sub_0805F184
	cmp r0, #0
	bne _08030190
	b _080301A2
_0803019E:
	bl sub_080003F0
_080301A2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803019E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080301C4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080301CC
_080301C4: .4byte 0x001400C5
_080301C8:
	bl sub_080003F0
_080301CC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080301E2
	bl sub_0800CDF8
	cmp r0, #0
	beq _080301C8
	bl sub_0805EFBC
_080301E2:
	bl sub_080020F4
	adds r4, r0, #0
	movs r6, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08030200
	ldr r0, _080301FC
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	b _08030208
_080301FC: .4byte gUnk_03005CF4
_08030200:
	ldr r0, _08030224
	ldr r0, [r0, #0]
	movs r1, #0xdc
	lsls r1, r1, #1
_08030208:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r5, r0, #7
	ands r5, r6
	movs r6, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08030228
	ldr r0, _08030224
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	b _08030230
_08030224: .4byte gUnk_03005CF4
_08030228:
	ldr r0, _08030248
	ldr r0, [r0, #0]
	movs r1, #0xdc
	lsls r1, r1, #1
_08030230:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #3
	ands r0, r6
	cmn r4, r0
	beq _0803023E
	b _0803044E
_0803023E:
	cmp r5, #0
	bne _08030244
	b _0803044E
_08030244:
	b _08030250
	.2byte 0x0000
_08030248: .4byte gUnk_03005CF4
_0803024C:
	bl sub_080003F0
_08030250:
	bl sub_0805F184
	cmp r0, #0
	bne _0803024C
	b _0803025E
_0803025A:
	bl sub_080003F0
_0803025E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803025A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030280
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030288
_08030280: .4byte 0x001400CD
_08030284:
	bl sub_080003F0
_08030288:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803029E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030284
	bl sub_0805EFBC
_0803029E:
	bl sub_0805CFA0
	movs r1, #1
	cmp r0, #0
	bge _080302AA
	movs r1, #0
_080302AA:
	cmp r1, #0
	bne _08030306
	b _080302B4
_080302B0:
	bl sub_080003F0
_080302B4:
	bl sub_0805F184
	cmp r0, #0
	bne _080302B0
	b _080302C2
_080302BE:
	bl sub_080003F0
_080302C2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080302BE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080302E4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080302EC
_080302E4: .4byte 0x001400D0
_080302E8:
	bl sub_080003F0
_080302EC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080302F8
	b _0803044E
_080302F8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080302E8
	bl sub_0805EFBC
	b _0803044E
_08030306:
	bl sub_0800CE30
	adds r4, r0, #0
	cmp r4, #0
	bne _080303B0
	ldr r0, _08030354
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08030322
	movs r0, #0x33
	bl sub_08006D08
_08030322:
	movs r1, #7
	movs r2, #0xb
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	add r1, sp, #0xc
	movs r2, #0
_08030332:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08030332
	movs r4, #0
_0803033E:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _0803033E
	ldr r0, _08030358
	movs r1, #0xb
	bl sub_08068070
	b _08030360
_08030354: .4byte gUnk_030027D0
_08030358: .4byte sub_0805990C
_0803035C:
	bl sub_080003F0
_08030360:
	bl sub_0805F184
	cmp r0, #0
	bne _0803035C
	b _0803036E
_0803036A:
	bl sub_080003F0
_0803036E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803036A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030390
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030398
_08030390: .4byte 0x001400CE
_08030394:
	bl sub_080003F0
_08030398:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803044E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030394
	bl sub_0805EFBC
	b _0803044E
_080303B0:
	ldr r0, _080303F4
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080303C2
	movs r0, #0x33
	bl sub_08006D08
_080303C2:
	movs r1, #1
	movs r2, #0x63
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	add r1, sp, #0xc
	movs r2, #0
_080303D2:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _080303D2
	movs r4, #0
_080303DE:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _080303DE
	ldr r0, _080303F8
	movs r1, #0xb
	bl sub_08068070
	b _08030400
_080303F4: .4byte gUnk_030027D0
_080303F8: .4byte sub_0805990C
_080303FC:
	bl sub_080003F0
_08030400:
	bl sub_0805F184
	cmp r0, #0
	bne _080303FC
	b _0803040E
_0803040A:
	bl sub_080003F0
_0803040E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803040A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030430
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030438
_08030430: .4byte 0x001400CF
_08030434:
	bl sub_080003F0
_08030438:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803044E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030434
	bl sub_0805EFBC
_0803044E:
	adds r0, r7, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803047C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0803047C: .4byte gUnk_03003CE0
	thumb_func_end sub_0802FEA0
