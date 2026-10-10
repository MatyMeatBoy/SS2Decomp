	thumb_func_start sub_08055558
sub_08055558: @ 0x08055558
	push {r4, r5, r6, lr}
	ldr r6, _08055568
	ldr r0, _0805556C
	ldr r0, [r0, #0]
	ldr r1, _08055570
	adds r4, r0, r1
	movs r5, #0
	b _08055578
_08055568: .4byte sub_0805664C
_0805556C: .4byte gUnk_03005CF4
_08055570: .4byte 0x00000E34
_08055574:
	adds r5, #1
	adds r4, #0x28
_08055578:
	cmp r5, #0x1d
	bhi _080555B6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08055574
	b _0805558C
_08055588:
	bl sub_080003F0
_0805558C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08055588
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
	movs r1, #0x33
	bl sub_08000274
_080555B6:
	ldr r6, _080555C4
	ldr r0, _080555C8
	ldr r0, [r0, #0]
	ldr r1, _080555CC
	adds r4, r0, r1
	movs r5, #0
	b _080555D4
_080555C4: .4byte sub_0805664C
_080555C8: .4byte gUnk_03005CF4
_080555CC: .4byte 0x00000E34
_080555D0:
	adds r5, #1
	adds r4, #0x28
_080555D4:
	cmp r5, #0x1d
	bhi _08055612
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080555D0
	b _080555E8
_080555E4:
	bl sub_080003F0
_080555E8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080555E4
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
	movs r1, #0x34
	bl sub_08000274
_08055612:
	ldr r6, _08055620
	ldr r0, _08055624
	ldr r0, [r0, #0]
	ldr r1, _08055628
	adds r4, r0, r1
	movs r5, #0
	b _08055630
_08055620: .4byte sub_0805664C
_08055624: .4byte gUnk_03005CF4
_08055628: .4byte 0x00000E34
_0805562C:
	adds r5, #1
	adds r4, #0x28
_08055630:
	cmp r5, #0x1d
	bhi _0805566E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0805562C
	b _08055644
_08055640:
	bl sub_080003F0
_08055644:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08055640
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
	movs r1, #0x35
	bl sub_08000274
_0805566E:
	ldr r6, _0805567C
	ldr r0, _08055680
	ldr r0, [r0, #0]
	ldr r1, _08055684
	adds r4, r0, r1
	movs r5, #0
	b _0805568C
_0805567C: .4byte sub_0805664C
_08055680: .4byte gUnk_03005CF4
_08055684: .4byte 0x00000E34
_08055688:
	adds r5, #1
	adds r4, #0x28
_0805568C:
	cmp r5, #0x1d
	bhi _080556CA
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08055688
	b _080556A0
_0805569C:
	bl sub_080003F0
_080556A0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0805569C
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
	movs r1, #0x36
	bl sub_08000274
_080556CA:
	ldr r6, _080556D8
	ldr r0, _080556DC
	ldr r0, [r0, #0]
	ldr r1, _080556E0
	adds r4, r0, r1
	movs r5, #0
	b _080556E8
_080556D8: .4byte sub_0805664C
_080556DC: .4byte gUnk_03005CF4
_080556E0: .4byte 0x00000E34
_080556E4:
	adds r5, #1
	adds r4, #0x28
_080556E8:
	cmp r5, #0x1d
	bhi _08055726
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080556E4
	b _080556FC
_080556F8:
	bl sub_080003F0
_080556FC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080556F8
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
	movs r1, #0x37
	bl sub_08000274
_08055726:
	ldr r6, _08055734
	ldr r0, _08055738
	ldr r0, [r0, #0]
	ldr r1, _0805573C
	adds r4, r0, r1
	movs r5, #0
	b _08055744
_08055734: .4byte sub_0805664C
_08055738: .4byte gUnk_03005CF4
_0805573C: .4byte 0x00000E34
_08055740:
	adds r5, #1
	adds r4, #0x28
_08055744:
	cmp r5, #0x1d
	bhi _08055782
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08055740
	b _08055758
_08055754:
	bl sub_080003F0
_08055758:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08055754
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
	movs r1, #0x38
	bl sub_08000274
_08055782:
	bl sub_0800CC98
	cmp r0, #0
	bne _080557C4
	bl sub_0801AB24
	cmp r0, #1
	beq _080557A8
	cmp r0, #1
	bgt _0805579C
	cmp r0, #0
	beq _080557A2
	b _080557BC
_0805579C:
	cmp r0, #2
	beq _080557B0
	b _080557BC
_080557A2:
	bl sub_080576A8
	b _080557BC
_080557A8:
	movs r0, #6
	bl sub_0801AB50
	b _080557BC
_080557B0:
	movs r0, #6
	bl sub_0801AB90
	b _080557BC
_080557B8:
	bl sub_080003F0
_080557BC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080557B8
_080557C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08055558
