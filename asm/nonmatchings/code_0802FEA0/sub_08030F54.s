	thumb_func_start sub_08030F54
sub_08030F54: @ 0x08030F54
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08030F84
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _08030F8C
	ldr r0, _08030F88
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x7c]
	b _08030F92
_08030F84: .4byte gUnk_03003CE0
_08030F88: .4byte gUnk_03005CF4
_08030F8C:
	ldr r0, _08030FA4
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x74]
_08030F92:
	bl sub_0800CE30
	cmp r0, #0
	beq _08030FA8
	ldr r0, _08030FA4
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _08030FB0
_08030FA4: .4byte gUnk_03005CF4
_08030FA8:
	ldr r0, _08030FC0
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_08030FB0:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803101A
	b _08030FC8
_08030FC0: .4byte gUnk_03005CF4
_08030FC4:
	bl sub_080003F0
_08030FC8:
	bl sub_0805F184
	cmp r0, #0
	bne _08030FC4
	b _08030FD6
_08030FD2:
	bl sub_080003F0
_08030FD6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030FD2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030FF8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08031000
_08030FF8: .4byte 0x0014016E
_08030FFC:
	bl sub_080003F0
_08031000:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803100C
	b _08031432
_0803100C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030FFC
	bl sub_0805EFBC
	b _08031432
_0803101A:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0803107E
	b _0803102A
_08031026:
	bl sub_080003F0
_0803102A:
	bl sub_0805F184
	cmp r0, #0
	bne _08031026
	b _08031038
_08031034:
	bl sub_080003F0
_08031038:
	bl sub_0805EF90
	cmp r0, #0
	bne _08031034
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803105C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08031064
	.2byte 0x0000
_0803105C: .4byte 0x0014016D
_08031060:
	bl sub_080003F0
_08031064:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08031070
	b _08031432
_08031070:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08031060
	bl sub_0805EFBC
	b _08031432
_0803107E:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080310E2
	b _0803108E
_0803108A:
	bl sub_080003F0
_0803108E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803108A
	b _0803109C
_08031098:
	bl sub_080003F0
_0803109C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08031098
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080310C0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080310C8
	.2byte 0x0000
_080310C0: .4byte 0x0014016C
_080310C4:
	bl sub_080003F0
_080310C8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080310D4
	b _08031432
_080310D4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080310C4
	bl sub_0805EFBC
	b _08031432
_080310E2:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _08031142
	b _080310F0
_080310EC:
	bl sub_080003F0
_080310F0:
	bl sub_0805F184
	cmp r0, #0
	bne _080310EC
	b _080310FE
_080310FA:
	bl sub_080003F0
_080310FE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080310FA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08031120
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08031128
_08031120: .4byte 0x0014016B
_08031124:
	bl sub_080003F0
_08031128:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08031134
	b _08031432
_08031134:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08031124
	bl sub_0805EFBC
	b _08031432
_08031142:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _080311A2
	b _08031150
_0803114C:
	bl sub_080003F0
_08031150:
	bl sub_0805F184
	cmp r0, #0
	bne _0803114C
	b _0803115E
_0803115A:
	bl sub_080003F0
_0803115E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803115A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08031180
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08031188
_08031180: .4byte 0x0014016A
_08031184:
	bl sub_080003F0
_08031188:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08031194
	b _08031432
_08031194:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08031184
	bl sub_0805EFBC
	b _08031432
_080311A2:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08031202
	b _080311B0
_080311AC:
	bl sub_080003F0
_080311B0:
	bl sub_0805F184
	cmp r0, #0
	bne _080311AC
	b _080311BE
_080311BA:
	bl sub_080003F0
_080311BE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080311BA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080311E0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080311E8
_080311E0: .4byte 0x00140169
_080311E4:
	bl sub_080003F0
_080311E8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080311F4
	b _08031432
_080311F4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080311E4
	bl sub_0805EFBC
	b _08031432
_08031202:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08031262
	b _08031210
_0803120C:
	bl sub_080003F0
_08031210:
	bl sub_0805F184
	cmp r0, #0
	bne _0803120C
	b _0803121E
_0803121A:
	bl sub_080003F0
_0803121E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803121A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08031240
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08031248
_08031240: .4byte 0x00140168
_08031244:
	bl sub_080003F0
_08031248:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08031254
	b _08031432
_08031254:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08031244
	bl sub_0805EFBC
	b _08031432
_08031262:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080312C2
	b _08031270
_0803126C:
	bl sub_080003F0
_08031270:
	bl sub_0805F184
	cmp r0, #0
	bne _0803126C
	b _0803127E
_0803127A:
	bl sub_080003F0
_0803127E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803127A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080312A0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080312A8
_080312A0: .4byte 0x00140167
_080312A4:
	bl sub_080003F0
_080312A8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080312B4
	b _08031432
_080312B4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080312A4
	bl sub_0805EFBC
	b _08031432
_080312C2:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08031322
	b _080312D0
_080312CC:
	bl sub_080003F0
_080312D0:
	bl sub_0805F184
	cmp r0, #0
	bne _080312CC
	b _080312DE
_080312DA:
	bl sub_080003F0
_080312DE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080312DA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08031300
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08031308
_08031300: .4byte 0x00140166
_08031304:
	bl sub_080003F0
_08031308:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08031314
	b _08031432
_08031314:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08031304
	bl sub_0805EFBC
	b _08031432
_08031322:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08031380
	b _08031330
_0803132C:
	bl sub_080003F0
_08031330:
	bl sub_0805F184
	cmp r0, #0
	bne _0803132C
	b _0803133E
_0803133A:
	bl sub_080003F0
_0803133E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803133A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08031360
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08031368
_08031360: .4byte 0x00140165
_08031364:
	bl sub_080003F0
_08031368:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08031432
	bl sub_0800CDF8
	cmp r0, #0
	beq _08031364
	bl sub_0805EFBC
	b _08031432
_08031380:
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _080313E4
	b _0803138E
_0803138A:
	bl sub_080003F0
_0803138E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803138A
	b _0803139C
_08031398:
	bl sub_080003F0
_0803139C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08031398
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080313C0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080313C8
	.2byte 0x0000
_080313C0: .4byte 0x00140164
_080313C4:
	bl sub_080003F0
_080313C8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08031432
	bl sub_0800CDF8
	cmp r0, #0
	beq _080313C4
	bl sub_0805EFBC
	b _08031432
_080313E0:
	bl sub_080003F0
_080313E4:
	bl sub_0805F184
	cmp r0, #0
	bne _080313E0
	b _080313F2
_080313EE:
	bl sub_080003F0
_080313F2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080313EE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08031414
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803141C
_08031414: .4byte 0x00140163
_08031418:
	bl sub_080003F0
_0803141C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08031432
	bl sub_0800CDF8
	cmp r0, #0
	beq _08031418
	bl sub_0805EFBC
_08031432:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08031458
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08031458: .4byte gUnk_03003CE0
	thumb_func_end sub_08030F54
