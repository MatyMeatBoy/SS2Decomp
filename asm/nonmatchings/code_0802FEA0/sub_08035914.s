	thumb_func_start sub_08035914
sub_08035914: @ 0x08035914
	push {r4, r5, lr}
	adds r5, r0, #0
_08035918:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08029174
	movs r4, #0xc8
	b _0803592E
_08035924:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803593A
_0803592E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08035924
_0803593A:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08029174
	movs r4, #0xb4
	b _08035950
_08035946:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803595C
_08035950:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08035946
_0803595C:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08029174
	movs r4, #0x78
	b _08035972
_08035968:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803597E
_08035972:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08035968
_0803597E:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08029174
	movs r4, #0xb4
	lsls r4, r4, #1
	b _08035996
_0803598C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080359A2
_08035996:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803598C
_080359A2:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08029174
	movs r4, #0xb4
	b _080359B8
_080359AE:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080359C4
_080359B8:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080359AE
_080359C4:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08029174
	movs r4, #0xf0
	b _080359DA
_080359D0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08035918
_080359DA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080359D0
	b _08035918
	thumb_func_end sub_08035914
