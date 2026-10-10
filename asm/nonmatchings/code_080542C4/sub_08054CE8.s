	thumb_func_start sub_08054CE8
sub_08054CE8: @ 0x08054CE8
	push {r4, r5, r6, lr}
	ldr r6, _08054CF8
	ldr r0, _08054CFC
	ldr r0, [r0, #0]
	ldr r1, _08054D00
	adds r4, r0, r1
	movs r5, #0
	b _08054D08
_08054CF8: .4byte sub_0805664C
_08054CFC: .4byte gUnk_03005CF4
_08054D00: .4byte 0x00000E34
_08054D04:
	adds r5, #1
	adds r4, #0x28
_08054D08:
	cmp r5, #0x1d
	bhi _08054D46
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054D04
	b _08054D1C
_08054D18:
	bl sub_080003F0
_08054D1C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054D18
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
	movs r1, #0x1e
	bl sub_08000274
_08054D46:
	ldr r6, _08054D54
	ldr r0, _08054D58
	ldr r0, [r0, #0]
	ldr r1, _08054D5C
	adds r4, r0, r1
	movs r5, #0
	b _08054D64
_08054D54: .4byte sub_0805664C
_08054D58: .4byte gUnk_03005CF4
_08054D5C: .4byte 0x00000E34
_08054D60:
	adds r5, #1
	adds r4, #0x28
_08054D64:
	cmp r5, #0x1d
	bhi _08054DA2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054D60
	b _08054D78
_08054D74:
	bl sub_080003F0
_08054D78:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054D74
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
	movs r1, #0x1f
	bl sub_08000274
_08054DA2:
	ldr r6, _08054DB0
	ldr r0, _08054DB4
	ldr r0, [r0, #0]
	ldr r1, _08054DB8
	adds r4, r0, r1
	movs r5, #0
	b _08054DC0
_08054DB0: .4byte sub_0805664C
_08054DB4: .4byte gUnk_03005CF4
_08054DB8: .4byte 0x00000E34
_08054DBC:
	adds r5, #1
	adds r4, #0x28
_08054DC0:
	cmp r5, #0x1d
	bhi _08054DFE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054DBC
	b _08054DD4
_08054DD0:
	bl sub_080003F0
_08054DD4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054DD0
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
	movs r1, #0x20
	bl sub_08000274
_08054DFE:
	ldr r6, _08054E0C
	ldr r0, _08054E10
	ldr r0, [r0, #0]
	ldr r1, _08054E14
	adds r4, r0, r1
	movs r5, #0
	b _08054E1C
_08054E0C: .4byte sub_0805664C
_08054E10: .4byte gUnk_03005CF4
_08054E14: .4byte 0x00000E34
_08054E18:
	adds r5, #1
	adds r4, #0x28
_08054E1C:
	cmp r5, #0x1d
	bhi _08054E5A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054E18
	b _08054E30
_08054E2C:
	bl sub_080003F0
_08054E30:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054E2C
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
	movs r1, #0x21
	bl sub_08000274
_08054E5A:
	ldr r6, _08054E68
	ldr r0, _08054E6C
	ldr r0, [r0, #0]
	ldr r1, _08054E70
	adds r4, r0, r1
	movs r5, #0
	b _08054E78
_08054E68: .4byte sub_0805664C
_08054E6C: .4byte gUnk_03005CF4
_08054E70: .4byte 0x00000E34
_08054E74:
	adds r5, #1
	adds r4, #0x28
_08054E78:
	cmp r5, #0x1d
	bhi _08054EB6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054E74
	b _08054E8C
_08054E88:
	bl sub_080003F0
_08054E8C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054E88
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
	movs r1, #0x22
	bl sub_08000274
_08054EB6:
	ldr r6, _08054EC4
	ldr r0, _08054EC8
	ldr r0, [r0, #0]
	ldr r1, _08054ECC
	adds r4, r0, r1
	movs r5, #0
	b _08054ED4
_08054EC4: .4byte sub_0805664C
_08054EC8: .4byte gUnk_03005CF4
_08054ECC: .4byte 0x00000E34
_08054ED0:
	adds r5, #1
	adds r4, #0x28
_08054ED4:
	cmp r5, #0x1d
	bhi _08054F12
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054ED0
	b _08054EE8
_08054EE4:
	bl sub_080003F0
_08054EE8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054EE4
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
	movs r1, #0x23
	bl sub_08000274
_08054F12:
	ldr r6, _08054F20
	ldr r0, _08054F24
	ldr r0, [r0, #0]
	ldr r1, _08054F28
	adds r4, r0, r1
	movs r5, #0
	b _08054F30
_08054F20: .4byte sub_0805664C
_08054F24: .4byte gUnk_03005CF4
_08054F28: .4byte 0x00000E34
_08054F2C:
	adds r5, #1
	adds r4, #0x28
_08054F30:
	cmp r5, #0x1d
	bhi _08054F6E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054F2C
	b _08054F44
_08054F40:
	bl sub_080003F0
_08054F44:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054F40
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
	movs r1, #0x24
	bl sub_08000274
_08054F6E:
	bl sub_0800CC98
	cmp r0, #0
	bne _08054FB0
	bl sub_0801AB24
	cmp r0, #1
	beq _08054F94
	cmp r0, #1
	bgt _08054F88
	cmp r0, #0
	beq _08054F8E
	b _08054FA8
_08054F88:
	cmp r0, #2
	beq _08054F9C
	b _08054FA8
_08054F8E:
	bl sub_080576A8
	b _08054FA8
_08054F94:
	movs r0, #6
	bl sub_0801AB50
	b _08054FA8
_08054F9C:
	movs r0, #6
	bl sub_0801AB90
	b _08054FA8
_08054FA4:
	bl sub_080003F0
_08054FA8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08054FA4
_08054FB0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08054CE8
