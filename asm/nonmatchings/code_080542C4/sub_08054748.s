	thumb_func_start sub_08054748
sub_08054748: @ 0x08054748
	push {r4, r5, r6, lr}
	ldr r6, _08054758
	ldr r0, _0805475C
	ldr r0, [r0, #0]
	ldr r1, _08054760
	adds r4, r0, r1
	movs r5, #0
	b _08054768
_08054758: .4byte sub_0805664C
_0805475C: .4byte gUnk_03005CF4
_08054760: .4byte 0x00000E34
_08054764:
	adds r5, #1
	adds r4, #0x28
_08054768:
	cmp r5, #0x1d
	bhi _080547A6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054764
	b _0805477C
_08054778:
	bl sub_080003F0
_0805477C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054778
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
	movs r1, #0x10
	bl sub_08000274
_080547A6:
	ldr r6, _080547B4
	ldr r0, _080547B8
	ldr r0, [r0, #0]
	ldr r1, _080547BC
	adds r4, r0, r1
	movs r5, #0
	b _080547C4
_080547B4: .4byte sub_0805664C
_080547B8: .4byte gUnk_03005CF4
_080547BC: .4byte 0x00000E34
_080547C0:
	adds r5, #1
	adds r4, #0x28
_080547C4:
	cmp r5, #0x1d
	bhi _08054802
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080547C0
	b _080547D8
_080547D4:
	bl sub_080003F0
_080547D8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080547D4
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
	movs r1, #0x11
	bl sub_08000274
_08054802:
	ldr r6, _08054810
	ldr r0, _08054814
	ldr r0, [r0, #0]
	ldr r1, _08054818
	adds r4, r0, r1
	movs r5, #0
	b _08054820
_08054810: .4byte sub_0805664C
_08054814: .4byte gUnk_03005CF4
_08054818: .4byte 0x00000E34
_0805481C:
	adds r5, #1
	adds r4, #0x28
_08054820:
	cmp r5, #0x1d
	bhi _0805485E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0805481C
	b _08054834
_08054830:
	bl sub_080003F0
_08054834:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054830
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
	movs r1, #0x12
	bl sub_08000274
_0805485E:
	ldr r6, _0805486C
	ldr r0, _08054870
	ldr r0, [r0, #0]
	ldr r1, _08054874
	adds r4, r0, r1
	movs r5, #0
	b _0805487C
_0805486C: .4byte sub_0805664C
_08054870: .4byte gUnk_03005CF4
_08054874: .4byte 0x00000E34
_08054878:
	adds r5, #1
	adds r4, #0x28
_0805487C:
	cmp r5, #0x1d
	bhi _080548BA
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054878
	b _08054890
_0805488C:
	bl sub_080003F0
_08054890:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0805488C
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
	movs r1, #0x13
	bl sub_08000274
_080548BA:
	bl sub_0800CC98
	cmp r0, #0
	bne _080548FC
	bl sub_0801AB24
	cmp r0, #1
	beq _080548E0
	cmp r0, #1
	bgt _080548D4
	cmp r0, #0
	beq _080548DA
	b _080548F4
_080548D4:
	cmp r0, #2
	beq _080548E8
	b _080548F4
_080548DA:
	bl sub_080576A8
	b _080548F4
_080548E0:
	movs r0, #6
	bl sub_0801AB50
	b _080548F4
_080548E8:
	movs r0, #6
	bl sub_0801AB90
	b _080548F4
_080548F0:
	bl sub_080003F0
_080548F4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080548F0
_080548FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08054748
