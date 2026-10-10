	thumb_func_start sub_08055174
sub_08055174: @ 0x08055174
	push {r4, r5, r6, lr}
	ldr r6, _08055184
	ldr r0, _08055188
	ldr r0, [r0, #0]
	ldr r1, _0805518C
	adds r4, r0, r1
	movs r5, #0
	b _08055194
_08055184: .4byte sub_0805664C
_08055188: .4byte gUnk_03005CF4
_0805518C: .4byte 0x00000E34
_08055190:
	adds r5, #1
	adds r4, #0x28
_08055194:
	cmp r5, #0x1d
	bhi _080551D2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08055190
	b _080551A8
_080551A4:
	bl sub_080003F0
_080551A8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080551A4
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x29
	bl sub_08000274
_080551D2:
	ldr r6, _080551E0
	ldr r0, _080551E4
	ldr r0, [r0, #0]
	ldr r1, _080551E8
	adds r4, r0, r1
	movs r5, #0
	b _080551F0
_080551E0: .4byte sub_0805664C
_080551E4: .4byte gUnk_03005CF4
_080551E8: .4byte 0x00000E34
_080551EC:
	adds r5, #1
	adds r4, #0x28
_080551F0:
	cmp r5, #0x1d
	bhi _0805522E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080551EC
	b _08055204
_08055200:
	bl sub_080003F0
_08055204:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08055200
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x2a
	bl sub_08000274
_0805522E:
	ldr r6, _0805523C
	ldr r0, _08055240
	ldr r0, [r0, #0]
	ldr r1, _08055244
	adds r4, r0, r1
	movs r5, #0
	b _0805524C
_0805523C: .4byte sub_0805664C
_08055240: .4byte gUnk_03005CF4
_08055244: .4byte 0x00000E34
_08055248:
	adds r5, #1
	adds r4, #0x28
_0805524C:
	cmp r5, #0x1d
	bhi _0805528A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08055248
	b _08055260
_0805525C:
	bl sub_080003F0
_08055260:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0805525C
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x2b
	bl sub_08000274
_0805528A:
	ldr r6, _08055298
	ldr r0, _0805529C
	ldr r0, [r0, #0]
	ldr r1, _080552A0
	adds r4, r0, r1
	movs r5, #0
	b _080552A8
_08055298: .4byte sub_0805664C
_0805529C: .4byte gUnk_03005CF4
_080552A0: .4byte 0x00000E34
_080552A4:
	adds r5, #1
	adds r4, #0x28
_080552A8:
	cmp r5, #0x1d
	bhi _080552E6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080552A4
	b _080552BC
_080552B8:
	bl sub_080003F0
_080552BC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080552B8
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x2c
	bl sub_08000274
_080552E6:
	ldr r6, _080552F4
	ldr r0, _080552F8
	ldr r0, [r0, #0]
	ldr r1, _080552FC
	adds r4, r0, r1
	movs r5, #0
	b _08055304
_080552F4: .4byte sub_0805664C
_080552F8: .4byte gUnk_03005CF4
_080552FC: .4byte 0x00000E34
_08055300:
	adds r5, #1
	adds r4, #0x28
_08055304:
	cmp r5, #0x1d
	bhi _08055342
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08055300
	b _08055318
_08055314:
	bl sub_080003F0
_08055318:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08055314
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x2d
	bl sub_08000274
_08055342:
	ldr r6, _08055350
	ldr r0, _08055354
	ldr r0, [r0, #0]
	ldr r1, _08055358
	adds r4, r0, r1
	movs r5, #0
	b _08055360
_08055350: .4byte sub_0805664C
_08055354: .4byte gUnk_03005CF4
_08055358: .4byte 0x00000E34
_0805535C:
	adds r5, #1
	adds r4, #0x28
_08055360:
	cmp r5, #0x1d
	bhi _0805539E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0805535C
	b _08055374
_08055370:
	bl sub_080003F0
_08055374:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08055370
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x2e
	bl sub_08000274
_0805539E:
	ldr r6, _080553AC
	ldr r0, _080553B0
	ldr r0, [r0, #0]
	ldr r1, _080553B4
	adds r4, r0, r1
	movs r5, #0
	b _080553BC
_080553AC: .4byte sub_0805664C
_080553B0: .4byte gUnk_03005CF4
_080553B4: .4byte 0x00000E34
_080553B8:
	adds r5, #1
	adds r4, #0x28
_080553BC:
	cmp r5, #0x1d
	bhi _080553FA
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080553B8
	b _080553D0
_080553CC:
	bl sub_080003F0
_080553D0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080553CC
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x2f
	bl sub_08000274
_080553FA:
	ldr r6, _08055408
	ldr r0, _0805540C
	ldr r0, [r0, #0]
	ldr r1, _08055410
	adds r4, r0, r1
	movs r5, #0
	b _08055418
_08055408: .4byte sub_0805664C
_0805540C: .4byte gUnk_03005CF4
_08055410: .4byte 0x00000E34
_08055414:
	adds r5, #1
	adds r4, #0x28
_08055418:
	cmp r5, #0x1d
	bhi _08055456
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08055414
	b _0805542C
_08055428:
	bl sub_080003F0
_0805542C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08055428
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x30
	bl sub_08000274
_08055456:
	ldr r6, _08055464
	ldr r0, _08055468
	ldr r0, [r0, #0]
	ldr r1, _0805546C
	adds r4, r0, r1
	movs r5, #0
	b _08055474
_08055464: .4byte sub_0805664C
_08055468: .4byte gUnk_03005CF4
_0805546C: .4byte 0x00000E34
_08055470:
	adds r5, #1
	adds r4, #0x28
_08055474:
	cmp r5, #0x1d
	bhi _080554B2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08055470
	b _08055488
_08055484:
	bl sub_080003F0
_08055488:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08055484
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x31
	bl sub_08000274
_080554B2:
	ldr r6, _080554C0
	ldr r0, _080554C4
	ldr r0, [r0, #0]
	ldr r1, _080554C8
	adds r4, r0, r1
	movs r5, #0
	b _080554D0
_080554C0: .4byte sub_0805664C
_080554C4: .4byte gUnk_03005CF4
_080554C8: .4byte 0x00000E34
_080554CC:
	adds r5, #1
	adds r4, #0x28
_080554D0:
	cmp r5, #0x1d
	bhi _0805550E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080554CC
	b _080554E4
_080554E0:
	bl sub_080003F0
_080554E4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080554E0
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x32
	bl sub_08000274
_0805550E:
	bl sub_0800CC98
	cmp r0, #0
	bne _08055550
	bl sub_0801AB24
	cmp r0, #1
	beq _08055534
	cmp r0, #1
	bgt _08055528
	cmp r0, #0
	beq _0805552E
	b _08055548
_08055528:
	cmp r0, #2
	beq _0805553C
	b _08055548
_0805552E:
	bl sub_080576A8
	b _08055548
_08055534:
	movs r0, #6
	bl sub_0801AB50
	b _08055548
_0805553C:
	movs r0, #6
	bl sub_0801AB90
	b _08055548
_08055544:
	bl sub_080003F0
_08055548:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08055544
_08055550:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08055174
