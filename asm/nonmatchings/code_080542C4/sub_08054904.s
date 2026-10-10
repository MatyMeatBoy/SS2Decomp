	thumb_func_start sub_08054904
sub_08054904: @ 0x08054904
	push {r4, r5, r6, lr}
	ldr r6, _08054914
	ldr r0, _08054918
	ldr r0, [r0, #0]
	ldr r1, _0805491C
	adds r4, r0, r1
	movs r5, #0
	b _08054924
_08054914: .4byte sub_0805664C
_08054918: .4byte gUnk_03005CF4
_0805491C: .4byte 0x00000E34
_08054920:
	adds r5, #1
	adds r4, #0x28
_08054924:
	cmp r5, #0x1d
	bhi _08054962
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054920
	b _08054938
_08054934:
	bl sub_080003F0
_08054938:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054934
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
	movs r1, #0x14
	bl sub_08000274
_08054962:
	ldr r6, _08054970
	ldr r0, _08054974
	ldr r0, [r0, #0]
	ldr r1, _08054978
	adds r4, r0, r1
	movs r5, #0
	b _08054980
_08054970: .4byte sub_0805664C
_08054974: .4byte gUnk_03005CF4
_08054978: .4byte 0x00000E34
_0805497C:
	adds r5, #1
	adds r4, #0x28
_08054980:
	cmp r5, #0x1d
	bhi _080549BE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0805497C
	b _08054994
_08054990:
	bl sub_080003F0
_08054994:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054990
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
	movs r1, #0x15
	bl sub_08000274
_080549BE:
	ldr r6, _080549CC
	ldr r0, _080549D0
	ldr r0, [r0, #0]
	ldr r1, _080549D4
	adds r4, r0, r1
	movs r5, #0
	b _080549DC
_080549CC: .4byte sub_0805664C
_080549D0: .4byte gUnk_03005CF4
_080549D4: .4byte 0x00000E34
_080549D8:
	adds r5, #1
	adds r4, #0x28
_080549DC:
	cmp r5, #0x1d
	bhi _08054A1A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080549D8
	b _080549F0
_080549EC:
	bl sub_080003F0
_080549F0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080549EC
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
	movs r1, #0x16
	bl sub_08000274
_08054A1A:
	ldr r6, _08054A28
	ldr r0, _08054A2C
	ldr r0, [r0, #0]
	ldr r1, _08054A30
	adds r4, r0, r1
	movs r5, #0
	b _08054A38
_08054A28: .4byte sub_0805664C
_08054A2C: .4byte gUnk_03005CF4
_08054A30: .4byte 0x00000E34
_08054A34:
	adds r5, #1
	adds r4, #0x28
_08054A38:
	cmp r5, #0x1d
	bhi _08054A76
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054A34
	b _08054A4C
_08054A48:
	bl sub_080003F0
_08054A4C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054A48
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
	movs r1, #0x17
	bl sub_08000274
_08054A76:
	ldr r6, _08054A84
	ldr r0, _08054A88
	ldr r0, [r0, #0]
	ldr r1, _08054A8C
	adds r4, r0, r1
	movs r5, #0
	b _08054A94
_08054A84: .4byte sub_0805664C
_08054A88: .4byte gUnk_03005CF4
_08054A8C: .4byte 0x00000E34
_08054A90:
	adds r5, #1
	adds r4, #0x28
_08054A94:
	cmp r5, #0x1d
	bhi _08054AD2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054A90
	b _08054AA8
_08054AA4:
	bl sub_080003F0
_08054AA8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054AA4
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
	movs r1, #0x18
	bl sub_08000274
_08054AD2:
	ldr r6, _08054AE0
	ldr r0, _08054AE4
	ldr r0, [r0, #0]
	ldr r1, _08054AE8
	adds r4, r0, r1
	movs r5, #0
	b _08054AF0
_08054AE0: .4byte sub_0805664C
_08054AE4: .4byte gUnk_03005CF4
_08054AE8: .4byte 0x00000E34
_08054AEC:
	adds r5, #1
	adds r4, #0x28
_08054AF0:
	cmp r5, #0x1d
	bhi _08054B2E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054AEC
	b _08054B04
_08054B00:
	bl sub_080003F0
_08054B04:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054B00
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
	movs r1, #0x19
	bl sub_08000274
_08054B2E:
	ldr r6, _08054B3C
	ldr r0, _08054B40
	ldr r0, [r0, #0]
	ldr r1, _08054B44
	adds r4, r0, r1
	movs r5, #0
	b _08054B4C
_08054B3C: .4byte sub_0805664C
_08054B40: .4byte gUnk_03005CF4
_08054B44: .4byte 0x00000E34
_08054B48:
	adds r5, #1
	adds r4, #0x28
_08054B4C:
	cmp r5, #0x1d
	bhi _08054B8A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054B48
	b _08054B60
_08054B5C:
	bl sub_080003F0
_08054B60:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054B5C
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
	movs r1, #0x1a
	bl sub_08000274
_08054B8A:
	ldr r6, _08054B98
	ldr r0, _08054B9C
	ldr r0, [r0, #0]
	ldr r1, _08054BA0
	adds r4, r0, r1
	movs r5, #0
	b _08054BA8
_08054B98: .4byte sub_0805664C
_08054B9C: .4byte gUnk_03005CF4
_08054BA0: .4byte 0x00000E34
_08054BA4:
	adds r5, #1
	adds r4, #0x28
_08054BA8:
	cmp r5, #0x1d
	bhi _08054BE6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054BA4
	b _08054BBC
_08054BB8:
	bl sub_080003F0
_08054BBC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054BB8
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
	movs r1, #0x1b
	bl sub_08000274
_08054BE6:
	ldr r6, _08054BF4
	ldr r0, _08054BF8
	ldr r0, [r0, #0]
	ldr r1, _08054BFC
	adds r4, r0, r1
	movs r5, #0
	b _08054C04
_08054BF4: .4byte sub_0805664C
_08054BF8: .4byte gUnk_03005CF4
_08054BFC: .4byte 0x00000E34
_08054C00:
	adds r5, #1
	adds r4, #0x28
_08054C04:
	cmp r5, #0x1d
	bhi _08054C42
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054C00
	b _08054C18
_08054C14:
	bl sub_080003F0
_08054C18:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054C14
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
	movs r1, #0x1c
	bl sub_08000274
_08054C42:
	ldr r6, _08054C50
	ldr r0, _08054C54
	ldr r0, [r0, #0]
	ldr r1, _08054C58
	adds r4, r0, r1
	movs r5, #0
	b _08054C60
_08054C50: .4byte sub_0805664C
_08054C54: .4byte gUnk_03005CF4
_08054C58: .4byte 0x00000E34
_08054C5C:
	adds r5, #1
	adds r4, #0x28
_08054C60:
	cmp r5, #0x1d
	bhi _08054C9E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054C5C
	b _08054C74
_08054C70:
	bl sub_080003F0
_08054C74:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054C70
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
	movs r1, #0x1d
	bl sub_08000274
_08054C9E:
	bl sub_0800CC98
	cmp r0, #0
	bne _08054CE0
	bl sub_0801AB24
	cmp r0, #1
	beq _08054CC4
	cmp r0, #1
	bgt _08054CB8
	cmp r0, #0
	beq _08054CBE
	b _08054CD8
_08054CB8:
	cmp r0, #2
	beq _08054CCC
	b _08054CD8
_08054CBE:
	bl sub_080576A8
	b _08054CD8
_08054CC4:
	movs r0, #6
	bl sub_0801AB50
	b _08054CD8
_08054CCC:
	movs r0, #6
	bl sub_0801AB90
	b _08054CD8
_08054CD4:
	bl sub_080003F0
_08054CD8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08054CD4
_08054CE0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08054904
