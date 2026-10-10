	thumb_func_start sub_0805F1B0
sub_0805F1B0: @ 0x0805F1B0
	push {r4, r5, r6, lr}
	ldr r0, _0805F348
	ldr r5, _0805F34C
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805F350
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F212
	movs r4, #0xb
	ldr r0, _0805F354
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F212
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F212
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F1FA:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F1FA
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F212:
	ldr r0, _0805F358
	ldr r5, _0805F35C
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805F350
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F272
	movs r4, #3
	ldr r0, _0805F360
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F272
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F272
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F25A:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F25A
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F272:
	ldr r0, _0805F364
	ldr r5, _0805F368
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805F350
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F2D2
	movs r4, #4
	ldr r0, _0805F36C
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F2D2
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F2D2
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F2BA:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F2BA
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F2D2:
	ldr r0, _0805F370
	ldr r5, _0805F374
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805F350
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F332
	movs r4, #5
	ldr r0, _0805F378
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F332
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F332
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F31A:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F31A
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F332:
	ldr r0, _0805F37C
	ldr r0, [r0, #0]
	cmp r0, #4
	bls _0805F33C
	b _0805F5FC
_0805F33C:
	lsls r0, r0, #2
	ldr r1, _0805F380
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0805F348: .4byte 0x0005000B
_0805F34C: .4byte gUnk_03006040
_0805F350: .4byte gUnk_08518938
_0805F354: .4byte 0x0006000B
_0805F358: .4byte 0x00050003
_0805F35C: .4byte gUnk_03006074
_0805F360: .4byte 0x00060003
_0805F364: .4byte 0x00050004
_0805F368: .4byte gUnk_030060A8
_0805F36C: .4byte 0x00060004
_0805F370: .4byte 0x00050005
_0805F374: .4byte gUnk_030060DC
_0805F378: .4byte 0x00060005
_0805F37C: .4byte gUnk_03003470
_0805F380: .4byte _0805F384
_0805F384:
	.4byte _0805F398
_0805F388: .4byte _0805F414
_0805F38C: .4byte _0805F490
_0805F390: .4byte _0805F50C
_0805F394: .4byte _0805F58C
_0805F398:
	ldr r0, _0805F404
	ldr r5, _0805F408
	movs r1, #9
	movs r2, #4
	ldr r6, _0805F40C
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	bne _0805F3B6
	b _0805F5FC
_0805F3B6:
	movs r4, #6
	ldr r0, _0805F410
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	bne _0805F3C8
	b _0805F5FC
_0805F3C8:
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	bne _0805F3E0
	b _0805F5FC
_0805F3E0:
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl sub_08000AF0
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F3F6:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F3F6
	adds r0, r5, #0
	b _0805F570
_0805F404: .4byte 0x00050006
_0805F408: .4byte gUnk_03005D80
_0805F40C: .4byte gUnk_08518938
_0805F410: .4byte 0x00060006
_0805F414:
	ldr r0, _0805F480
	ldr r5, _0805F484
	movs r1, #9
	movs r2, #4
	ldr r6, _0805F488
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	bne _0805F432
	b _0805F5FC
_0805F432:
	movs r4, #7
	ldr r0, _0805F48C
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	bne _0805F444
	b _0805F5FC
_0805F444:
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	bne _0805F45C
	b _0805F5FC
_0805F45C:
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl sub_08000AF0
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F472:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F472
	adds r0, r5, #0
	b _0805F570
_0805F480: .4byte 0x00050007
_0805F484: .4byte gUnk_03005D80
_0805F488: .4byte gUnk_08518938
_0805F48C: .4byte 0x00060007
_0805F490:
	ldr r0, _0805F4FC
	ldr r5, _0805F500
	movs r1, #9
	movs r2, #4
	ldr r6, _0805F504
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	bne _0805F4AE
	b _0805F5FC
_0805F4AE:
	movs r4, #8
	ldr r0, _0805F508
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	bne _0805F4C0
	b _0805F5FC
_0805F4C0:
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	bne _0805F4D8
	b _0805F5FC
_0805F4D8:
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl sub_08000AF0
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F4EE:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F4EE
	adds r0, r5, #0
	b _0805F570
_0805F4FC: .4byte 0x00050008
_0805F500: .4byte gUnk_03005D80
_0805F504: .4byte gUnk_08518938
_0805F508: .4byte 0x00060008
_0805F50C:
	ldr r0, _0805F580
	ldr r4, _0805F584
	movs r5, #9
	movs r1, #4
	ldr r6, _0805F588
	str r0, [r4, #0x10]
	str r5, [r4, #0x14]
	str r1, [r4, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r4, #8]
	cmp r0, #0
	beq _0805F5FC
	movs r0, #0xc0
	lsls r0, r0, #0xb
	orrs r0, r5
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r4, #0]
	cmp r0, #0
	beq _0805F5FC
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r0, r5
	adds r1, r6, #0
	bl sub_08006EE0
	adds r2, r0, #0
	str r2, [r4, #0xc]
	cmp r2, #0
	beq _0805F5FC
	ldr r1, [r4, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r4, #0x18]
	bl sub_08000AF0
	movs r1, #0
	adds r2, r4, #0
	adds r2, #0x1c
_0805F564:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F564
	adds r0, r4, #0
_0805F570:
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
	b _0805F5FC
	.2byte 0x0000
_0805F580: .4byte 0x00050009
_0805F584: .4byte gUnk_03005D80
_0805F588: .4byte gUnk_08518938
_0805F58C:
	ldr r0, _0805F8EC
	ldr r5, _0805F8F0
	movs r1, #9
	movs r2, #4
	ldr r6, _0805F8F4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F5FC
	movs r4, #0xa
	ldr r0, _0805F8F8
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F5FC
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	beq _0805F5FC
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl sub_08000AF0
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F5E4:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F5E4
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F5FC:
	ldr r0, _0805F8FC
	ldr r5, _0805F900
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805F8F4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F65C
	movs r4, #0xa3
	ldr r0, _0805F904
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F65C
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F65C
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F644:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F644
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F65C:
	ldr r0, _0805F908
	ldr r5, _0805F90C
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805F8F4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F6BC
	movs r4, #0xa1
	ldr r0, _0805F910
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F6BC
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F6BC
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F6A4:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F6A4
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F6BC:
	ldr r0, _0805F914
	ldr r5, _0805F918
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805F8F4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F71C
	movs r4, #0xa4
	ldr r0, _0805F91C
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F71C
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F71C
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F704:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F704
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F71C:
	ldr r0, _0805F920
	ldr r5, _0805F924
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805F8F4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F77C
	movs r4, #0xa2
	ldr r0, _0805F928
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F77C
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F77C
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F764:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F764
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F77C:
	ldr r0, _0805F92C
	ldr r5, _0805F930
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805F8F4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F7DC
	movs r4, #0xdb
	ldr r0, _0805F934
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F7DC
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F7DC
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F7C4:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F7C4
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F7DC:
	ldr r0, _0805F938
	ldr r5, _0805F93C
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805F8F4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F83C
	movs r4, #0xdc
	ldr r0, _0805F940
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F83C
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F83C
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F824:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F824
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F83C:
	ldr r0, _0805F944
	ldr r5, _0805F948
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805F8F4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F89C
	movs r4, #0xde
	ldr r0, _0805F94C
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F89C
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F89C
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F884:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F884
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F89C:
	ldr r0, _0805F950
	ldr r5, _0805F954
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805F8F4
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F970
	movs r4, #0xdd
	ldr r0, _0805F958
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F970
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F970
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F8E4:
	adds r0, r2, r1
	strb r1, [r0, #0]
	b _0805F95C
	.2byte 0x0000
_0805F8EC: .4byte 0x0005000A
_0805F8F0: .4byte gUnk_03005D80
_0805F8F4: .4byte gUnk_08518938
_0805F8F8: .4byte 0x0006000A
_0805F8FC: .4byte 0x000500A3
_0805F900: .4byte gUnk_03005DC0
_0805F904: .4byte 0x000600A3
_0805F908: .4byte 0x000500A1
_0805F90C: .4byte gUnk_03005DF4
_0805F910: .4byte 0x000600A1
_0805F914: .4byte 0x000500A4
_0805F918: .4byte gUnk_03005E28
_0805F91C: .4byte 0x000600A4
_0805F920: .4byte 0x000500A2
_0805F924: .4byte gUnk_03005E5C
_0805F928: .4byte 0x000600A2
_0805F92C: .4byte 0x000500DB
_0805F930: .4byte gUnk_03005E90
_0805F934: .4byte 0x000600DB
_0805F938: .4byte 0x000500DC
_0805F93C: .4byte gUnk_03005EC4
_0805F940: .4byte 0x000600DC
_0805F944: .4byte 0x000500DE
_0805F948: .4byte gUnk_03005EF8
_0805F94C: .4byte 0x000600DE
_0805F950: .4byte 0x000500DD
_0805F954: .4byte gUnk_03005F2C
_0805F958: .4byte 0x000600DD
_0805F95C:
	adds r1, #1
	cmp r1, #0xf
	bls _0805F8E4
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F970:
	ldr r0, _0805FA98
	ldr r5, _0805FA9C
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805FAA0
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805F9D0
	movs r4, #0xbd
	ldr r0, _0805FAA4
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805F9D0
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F9D0
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805F9B8:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805F9B8
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805F9D0:
	ldr r0, _0805FAA8
	ldr r5, _0805FAAC
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805FAA0
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805FA30
	movs r4, #0xaf
	ldr r0, _0805FAB0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805FA30
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805FA30
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805FA18:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805FA18
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805FA30:
	ldr r0, _0805FAB4
	ldr r5, _0805FAB8
	movs r1, #9
	movs r2, #1
	negs r2, r2
	ldr r6, _0805FAA0
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _0805FA90
	movs r4, #0xf1
	ldr r0, _0805FABC
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _0805FA90
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0805FA90
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_0805FA78:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _0805FA78
	adds r0, r5, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0805FA90:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805FA98: .4byte 0x000500BD
_0805FA9C: .4byte gUnk_03005F60
_0805FAA0: .4byte gUnk_08518938
_0805FAA4: .4byte 0x000600BD
_0805FAA8: .4byte 0x000500AF
_0805FAAC: .4byte gUnk_03005F94
_0805FAB0: .4byte 0x000600AF
_0805FAB4: .4byte 0x000500F1
_0805FAB8: .4byte gUnk_03005FC8
_0805FABC: .4byte 0x000600F1
	thumb_func_end sub_0805F1B0
