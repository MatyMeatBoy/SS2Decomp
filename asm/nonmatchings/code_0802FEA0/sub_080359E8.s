	thumb_func_start sub_080359E8
sub_080359E8: @ 0x080359E8
	push {r4, r5, lr}
	adds r5, r0, #0
_080359EC:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802939C
	movs r4, #0xf0
	b _08035A02
_080359F8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08035A0E
_08035A02:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080359F8
_08035A0E:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0802926C
	adds r0, r5, #0
	movs r1, #1
	bl sub_0802926C
	adds r0, r5, #0
	movs r1, #1
	bl sub_0802926C
	movs r4, #0x64
	b _08035A34
_08035A2A:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08035A40
_08035A34:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08035A2A
_08035A40:
	adds r0, r5, #0
	movs r1, #2
	bl sub_08029174
	movs r4, #0xc8
	b _08035A56
_08035A4C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08035A62
_08035A56:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08035A4C
_08035A62:
	adds r0, r5, #0
	movs r1, #3
	bl sub_08029174
	movs r4, #0xb4
	b _08035A78
_08035A6E:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080359EC
_08035A78:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08035A6E
	b _080359EC
	thumb_func_end sub_080359E8
