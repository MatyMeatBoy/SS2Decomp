	thumb_func_start sub_08031FF8
sub_08031FF8: @ 0x08031FF8
	push {r4, r5, r6, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08032094
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	movs r4, #0
	movs r2, #0
	ldr r0, _08032098
	ldr r0, [r0, #0]
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r1, r0, r3
_08032026:
	ldrh r0, [r1, #0]
	cmp r0, #6
	bne _08032034
	ldrh r0, [r1, #2]
	cmp r0, #0x59
	bne _08032034
	adds r4, #1
_08032034:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08032026
	bl sub_08002164
	adds r1, r0, #0
	cmp r1, #1
	bne _08032112
	cmp r4, #0
	ble _08032112
	movs r4, #1
	movs r3, #0
	ldr r6, _08032098
	movs r5, #0
_08032052:
	ldr r0, [r6, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #6
	bne _0803207A
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x59
	bne _0803207A
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _08032080
_0803207A:
	adds r3, #1
	cmp r3, #0x18
	bls _08032052
_08032080:
	bl sub_0800CE30
	cmp r0, #0
	beq _080320A0
	ldr r0, _0803209C
	ldr r1, [r0, #0]
	movs r3, #0xe2
	lsls r3, r3, #1
	adds r1, r1, r3
	b _080320AA
_08032094: .4byte gUnk_03003CE0
_08032098: .4byte gUnk_030034E0
_0803209C: .4byte gUnk_03005CF4
_080320A0:
	ldr r0, _080320B8
	ldr r1, [r0, #0]
	movs r0, #0xdc
	lsls r0, r0, #1
	adds r1, r1, r0
_080320AA:
	movs r0, #3
	negs r0, r0
	ldrb r2, [r1, #0]
	ands r0, r2
	strb r0, [r1, #0]
	b _080320C0
	.2byte 0x0000
_080320B8: .4byte gUnk_03005CF4
_080320BC:
	bl sub_080003F0
_080320C0:
	bl sub_0805F184
	cmp r0, #0
	bne _080320BC
	b _080320CE
_080320CA:
	bl sub_080003F0
_080320CE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080320CA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080320F0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080320F8
_080320F0: .4byte 0x00140291
_080320F4:
	bl sub_080003F0
_080320F8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08032104
	b _0803256E
_08032104:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080320F4
	bl sub_0805EFBC
	b _0803256E
_08032112:
	bl sub_0800CE30
	cmp r0, #0
	beq _08032128
	ldr r0, _08032124
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x7c]
	b _0803212E
	.2byte 0x0000
_08032124: .4byte gUnk_03005CF4
_08032128:
	ldr r0, _08032144
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x74]
_0803212E:
	bl sub_0800CE30
	cmp r0, #0
	beq _08032148
	ldr r0, _08032144
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08032152
	.2byte 0x0000
_08032144: .4byte gUnk_03005CF4
_08032148:
	ldr r0, _08032160
	ldr r0, [r0, #0]
	movs r3, #0xdd
	lsls r3, r3, #1
	adds r0, r0, r3
_08032152:
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080321BA
	b _08032168
_08032160: .4byte gUnk_03005CF4
_08032164:
	bl sub_080003F0
_08032168:
	bl sub_0805F184
	cmp r0, #0
	bne _08032164
	b _08032176
_08032172:
	bl sub_080003F0
_08032176:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032172
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08032198
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080321A0
_08032198: .4byte 0x00140199
_0803219C:
	bl sub_080003F0
_080321A0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080321AC
	b _0803256E
_080321AC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803219C
	bl sub_0805EFBC
	b _0803256E
_080321BA:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0803221E
	b _080321CA
_080321C6:
	bl sub_080003F0
_080321CA:
	bl sub_0805F184
	cmp r0, #0
	bne _080321C6
	b _080321D8
_080321D4:
	bl sub_080003F0
_080321D8:
	bl sub_0805EF90
	cmp r0, #0
	bne _080321D4
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080321FC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032204
	.2byte 0x0000
_080321FC: .4byte 0x00140198
_08032200:
	bl sub_080003F0
_08032204:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08032210
	b _0803256E
_08032210:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032200
	bl sub_0805EFBC
	b _0803256E
_0803221E:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _0803227E
	b _0803222C
_08032228:
	bl sub_080003F0
_0803222C:
	bl sub_0805F184
	cmp r0, #0
	bne _08032228
	b _0803223A
_08032236:
	bl sub_080003F0
_0803223A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032236
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803225C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032264
_0803225C: .4byte 0x00140197
_08032260:
	bl sub_080003F0
_08032264:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08032270
	b _0803256E
_08032270:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032260
	bl sub_0805EFBC
	b _0803256E
_0803227E:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _080322DE
	b _0803228C
_08032288:
	bl sub_080003F0
_0803228C:
	bl sub_0805F184
	cmp r0, #0
	bne _08032288
	b _0803229A
_08032296:
	bl sub_080003F0
_0803229A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032296
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080322BC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080322C4
_080322BC: .4byte 0x00140196
_080322C0:
	bl sub_080003F0
_080322C4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080322D0
	b _0803256E
_080322D0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080322C0
	bl sub_0805EFBC
	b _0803256E
_080322DE:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _0803233E
	b _080322EC
_080322E8:
	bl sub_080003F0
_080322EC:
	bl sub_0805F184
	cmp r0, #0
	bne _080322E8
	b _080322FA
_080322F6:
	bl sub_080003F0
_080322FA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080322F6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803231C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032324
_0803231C: .4byte 0x00140195
_08032320:
	bl sub_080003F0
_08032324:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08032330
	b _0803256E
_08032330:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032320
	bl sub_0805EFBC
	b _0803256E
_0803233E:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _0803239E
	b _0803234C
_08032348:
	bl sub_080003F0
_0803234C:
	bl sub_0805F184
	cmp r0, #0
	bne _08032348
	b _0803235A
_08032356:
	bl sub_080003F0
_0803235A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032356
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803237C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032384
_0803237C: .4byte 0x00140194
_08032380:
	bl sub_080003F0
_08032384:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08032390
	b _0803256E
_08032390:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032380
	bl sub_0805EFBC
	b _0803256E
_0803239E:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080323FE
	b _080323AC
_080323A8:
	bl sub_080003F0
_080323AC:
	bl sub_0805F184
	cmp r0, #0
	bne _080323A8
	b _080323BA
_080323B6:
	bl sub_080003F0
_080323BA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080323B6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080323DC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080323E4
_080323DC: .4byte 0x00140193
_080323E0:
	bl sub_080003F0
_080323E4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080323F0
	b _0803256E
_080323F0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080323E0
	bl sub_0805EFBC
	b _0803256E
_080323FE:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0803245E
	b _0803240C
_08032408:
	bl sub_080003F0
_0803240C:
	bl sub_0805F184
	cmp r0, #0
	bne _08032408
	b _0803241A
_08032416:
	bl sub_080003F0
_0803241A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032416
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803243C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032444
_0803243C: .4byte 0x00140192
_08032440:
	bl sub_080003F0
_08032444:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08032450
	b _0803256E
_08032450:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032440
	bl sub_0805EFBC
	b _0803256E
_0803245E:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080324BC
	b _0803246C
_08032468:
	bl sub_080003F0
_0803246C:
	bl sub_0805F184
	cmp r0, #0
	bne _08032468
	b _0803247A
_08032476:
	bl sub_080003F0
_0803247A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032476
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803249C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080324A4
_0803249C: .4byte 0x00140191
_080324A0:
	bl sub_080003F0
_080324A4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803256E
	bl sub_0800CDF8
	cmp r0, #0
	beq _080324A0
	bl sub_0805EFBC
	b _0803256E
_080324BC:
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _08032520
	b _080324CA
_080324C6:
	bl sub_080003F0
_080324CA:
	bl sub_0805F184
	cmp r0, #0
	bne _080324C6
	b _080324D8
_080324D4:
	bl sub_080003F0
_080324D8:
	bl sub_0805EF90
	cmp r0, #0
	bne _080324D4
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080324FC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032504
	.2byte 0x0000
_080324FC: .4byte 0x00140190
_08032500:
	bl sub_080003F0
_08032504:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803256E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032500
	bl sub_0805EFBC
	b _0803256E
_0803251C:
	bl sub_080003F0
_08032520:
	bl sub_0805F184
	cmp r0, #0
	bne _0803251C
	b _0803252E
_0803252A:
	bl sub_080003F0
_0803252E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803252A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08032550
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032558
_08032550: .4byte 0x0014018F
_08032554:
	bl sub_080003F0
_08032558:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803256E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032554
	bl sub_0805EFBC
_0803256E:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08032594
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08032594: .4byte gUnk_03003CE0
	thumb_func_end sub_08031FF8
