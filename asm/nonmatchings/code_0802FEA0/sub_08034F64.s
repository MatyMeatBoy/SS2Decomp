	thumb_func_start sub_08034F64
sub_08034F64: @ 0x08034F64
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08034F94
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _08034F9C
	ldr r0, _08034F98
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x7c]
	b _08034FA2
_08034F94: .4byte gUnk_03003CE0
_08034F98: .4byte gUnk_03005CF4
_08034F9C:
	ldr r0, _08034FB4
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x74]
_08034FA2:
	bl sub_0800CE30
	cmp r0, #0
	beq _08034FB8
	ldr r0, _08034FB4
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _08034FC0
_08034FB4: .4byte gUnk_03005CF4
_08034FB8:
	ldr r0, _08034FD0
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_08034FC0:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803502A
	b _08034FD8
_08034FD0: .4byte gUnk_03005CF4
_08034FD4:
	bl sub_080003F0
_08034FD8:
	bl sub_0805F184
	cmp r0, #0
	bne _08034FD4
	b _08034FE6
_08034FE2:
	bl sub_080003F0
_08034FE6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034FE2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035008
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035010
_08035008: .4byte 0x001401D2
_0803500C:
	bl sub_080003F0
_08035010:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803501C
	b _080353E2
_0803501C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803500C
	bl sub_0805EFBC
	b _080353E2
_0803502A:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0803508E
	b _0803503A
_08035036:
	bl sub_080003F0
_0803503A:
	bl sub_0805F184
	cmp r0, #0
	bne _08035036
	b _08035048
_08035044:
	bl sub_080003F0
_08035048:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035044
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803506C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035074
	.2byte 0x0000
_0803506C: .4byte 0x001401D1
_08035070:
	bl sub_080003F0
_08035074:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08035080
	b _080353E2
_08035080:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08035070
	bl sub_0805EFBC
	b _080353E2
_0803508E:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080350F2
	b _0803509E
_0803509A:
	bl sub_080003F0
_0803509E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803509A
	b _080350AC
_080350A8:
	bl sub_080003F0
_080350AC:
	bl sub_0805EF90
	cmp r0, #0
	bne _080350A8
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080350D0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080350D8
	.2byte 0x0000
_080350D0: .4byte 0x001401D0
_080350D4:
	bl sub_080003F0
_080350D8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080350E4
	b _080353E2
_080350E4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080350D4
	bl sub_0805EFBC
	b _080353E2
_080350F2:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _08035152
	b _08035100
_080350FC:
	bl sub_080003F0
_08035100:
	bl sub_0805F184
	cmp r0, #0
	bne _080350FC
	b _0803510E
_0803510A:
	bl sub_080003F0
_0803510E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803510A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035130
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035138
_08035130: .4byte 0x001401CF
_08035134:
	bl sub_080003F0
_08035138:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08035144
	b _080353E2
_08035144:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08035134
	bl sub_0805EFBC
	b _080353E2
_08035152:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _080351B2
	b _08035160
_0803515C:
	bl sub_080003F0
_08035160:
	bl sub_0805F184
	cmp r0, #0
	bne _0803515C
	b _0803516E
_0803516A:
	bl sub_080003F0
_0803516E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803516A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035190
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035198
_08035190: .4byte 0x001401CE
_08035194:
	bl sub_080003F0
_08035198:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080351A4
	b _080353E2
_080351A4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08035194
	bl sub_0805EFBC
	b _080353E2
_080351B2:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08035212
	b _080351C0
_080351BC:
	bl sub_080003F0
_080351C0:
	bl sub_0805F184
	cmp r0, #0
	bne _080351BC
	b _080351CE
_080351CA:
	bl sub_080003F0
_080351CE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080351CA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080351F0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080351F8
_080351F0: .4byte 0x001401CD
_080351F4:
	bl sub_080003F0
_080351F8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08035204
	b _080353E2
_08035204:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080351F4
	bl sub_0805EFBC
	b _080353E2
_08035212:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08035272
	b _08035220
_0803521C:
	bl sub_080003F0
_08035220:
	bl sub_0805F184
	cmp r0, #0
	bne _0803521C
	b _0803522E
_0803522A:
	bl sub_080003F0
_0803522E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803522A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035250
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035258
_08035250: .4byte 0x001401CC
_08035254:
	bl sub_080003F0
_08035258:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08035264
	b _080353E2
_08035264:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08035254
	bl sub_0805EFBC
	b _080353E2
_08035272:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080352D2
	b _08035280
_0803527C:
	bl sub_080003F0
_08035280:
	bl sub_0805F184
	cmp r0, #0
	bne _0803527C
	b _0803528E
_0803528A:
	bl sub_080003F0
_0803528E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803528A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080352B0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080352B8
_080352B0: .4byte 0x001401CB
_080352B4:
	bl sub_080003F0
_080352B8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080352C4
	b _080353E2
_080352C4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080352B4
	bl sub_0805EFBC
	b _080353E2
_080352D2:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08035330
	b _080352E0
_080352DC:
	bl sub_080003F0
_080352E0:
	bl sub_0805F184
	cmp r0, #0
	bne _080352DC
	b _080352EE
_080352EA:
	bl sub_080003F0
_080352EE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080352EA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035310
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035318
_08035310: .4byte 0x001401CA
_08035314:
	bl sub_080003F0
_08035318:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080353E2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08035314
	bl sub_0805EFBC
	b _080353E2
_08035330:
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	beq _08035394
	b _0803533E
_0803533A:
	bl sub_080003F0
_0803533E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803533A
	b _0803534C
_08035348:
	bl sub_080003F0
_0803534C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035348
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035370
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035378
	.2byte 0x0000
_08035370: .4byte 0x001401C9
_08035374:
	bl sub_080003F0
_08035378:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080353E2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08035374
	bl sub_0805EFBC
	b _080353E2
_08035390:
	bl sub_080003F0
_08035394:
	bl sub_0805F184
	cmp r0, #0
	bne _08035390
	b _080353A2
_0803539E:
	bl sub_080003F0
_080353A2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803539E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080353C4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080353CC
_080353C4: .4byte 0x001401C8
_080353C8:
	bl sub_080003F0
_080353CC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080353E2
	bl sub_0800CDF8
	cmp r0, #0
	beq _080353C8
	bl sub_0805EFBC
_080353E2:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08035408
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
_08035408: .4byte gUnk_03003CE0
	thumb_func_end sub_08034F64
