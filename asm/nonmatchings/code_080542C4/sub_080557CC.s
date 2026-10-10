	thumb_func_start sub_080557CC
sub_080557CC: @ 0x080557CC
	push {r4, r5, r6, lr}
	ldr r6, _080557DC
	ldr r0, _080557E0
	ldr r0, [r0, #0]
	ldr r1, _080557E4
	adds r4, r0, r1
	movs r5, #0
	b _080557EC
_080557DC: .4byte sub_0805664C
_080557E0: .4byte gUnk_03005CF4
_080557E4: .4byte 0x00000E34
_080557E8:
	adds r5, #1
	adds r4, #0x28
_080557EC:
	cmp r5, #0x1d
	bhi _0805582A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080557E8
	b _08055800
_080557FC:
	bl sub_080003F0
_08055800:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080557FC
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
	movs r1, #0x39
	bl sub_08000274
_0805582A:
	ldr r6, _08055838
	ldr r0, _0805583C
	ldr r0, [r0, #0]
	ldr r1, _08055840
	adds r4, r0, r1
	movs r5, #0
	b _08055848
_08055838: .4byte sub_0805664C
_0805583C: .4byte gUnk_03005CF4
_08055840: .4byte 0x00000E34
_08055844:
	adds r5, #1
	adds r4, #0x28
_08055848:
	cmp r5, #0x1d
	bhi _08055886
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08055844
	b _0805585C
_08055858:
	bl sub_080003F0
_0805585C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08055858
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
	movs r1, #0x3a
	bl sub_08000274
_08055886:
	bl sub_0800CC98
	cmp r0, #0
	bne _080558C8
	bl sub_0801AB24
	cmp r0, #1
	beq _080558AC
	cmp r0, #1
	bgt _080558A0
	cmp r0, #0
	beq _080558A6
	b _080558C0
_080558A0:
	cmp r0, #2
	beq _080558B4
	b _080558C0
_080558A6:
	bl sub_080576A8
	b _080558C0
_080558AC:
	movs r0, #6
	bl sub_0801AB50
	b _080558C0
_080558B4:
	movs r0, #6
	bl sub_0801AB90
	b _080558C0
_080558BC:
	bl sub_080003F0
_080558C0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080558BC
_080558C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_080557CC
