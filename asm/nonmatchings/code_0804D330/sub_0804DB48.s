	thumb_func_start sub_0804DB48
sub_0804DB48: @ 0x0804DB48
	push {r4, r5, r6, lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _0804DB8C
	bl sub_0801AB24
	cmp r0, #1
	beq _0804DB70
	cmp r0, #1
	bgt _0804DB64
	cmp r0, #0
	beq _0804DB6A
	b _0804DB84
_0804DB64:
	cmp r0, #2
	beq _0804DB78
	b _0804DB84
_0804DB6A:
	bl sub_080576A8
	b _0804DB84
_0804DB70:
	movs r0, #6
	bl sub_0801AB50
	b _0804DB84
_0804DB78:
	movs r0, #6
	bl sub_0801AB90
	b _0804DB84
_0804DB80:
	bl sub_080003F0
_0804DB84:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804DB80
_0804DB8C:
	ldr r6, _0804DB9C
	ldr r0, _0804DBA0
	ldr r0, [r0, #0]
	ldr r1, _0804DBA4
	adds r4, r0, r1
	movs r5, #0
	b _0804DBAC
	.2byte 0x0000
_0804DB9C: .4byte sub_0805664C
_0804DBA0: .4byte gUnk_03005CF4
_0804DBA4: .4byte 0x00000E34
_0804DBA8:
	adds r5, #1
	adds r4, #0x28
_0804DBAC:
	cmp r5, #0x1d
	bhi _0804DBEA
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804DBA8
	b _0804DBC0
_0804DBBC:
	bl sub_080003F0
_0804DBC0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804DBBC
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
	movs r1, #6
	bl sub_08000274
_0804DBEA:
	ldr r6, _0804DBF8
	ldr r0, _0804DBFC
	ldr r0, [r0, #0]
	ldr r1, _0804DC00
	adds r4, r0, r1
	movs r5, #0
	b _0804DC08
_0804DBF8: .4byte sub_0805664C
_0804DBFC: .4byte gUnk_03005CF4
_0804DC00: .4byte 0x00000E34
_0804DC04:
	adds r5, #1
	adds r4, #0x28
_0804DC08:
	cmp r5, #0x1d
	bhi _0804DC46
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804DC04
	b _0804DC1C
_0804DC18:
	bl sub_080003F0
_0804DC1C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804DC18
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
	movs r1, #7
	bl sub_08000274
_0804DC46:
	ldr r6, _0804DC54
	ldr r0, _0804DC58
	ldr r0, [r0, #0]
	ldr r1, _0804DC5C
	adds r4, r0, r1
	movs r5, #0
	b _0804DC64
_0804DC54: .4byte sub_0805664C
_0804DC58: .4byte gUnk_03005CF4
_0804DC5C: .4byte 0x00000E34
_0804DC60:
	adds r5, #1
	adds r4, #0x28
_0804DC64:
	cmp r5, #0x1d
	bhi _0804DCA2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804DC60
	b _0804DC78
_0804DC74:
	bl sub_080003F0
_0804DC78:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804DC74
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
	movs r1, #8
	bl sub_08000274
_0804DCA2:
	ldr r6, _0804DCB0
	ldr r0, _0804DCB4
	ldr r0, [r0, #0]
	ldr r1, _0804DCB8
	adds r4, r0, r1
	movs r5, #0
	b _0804DCC0
_0804DCB0: .4byte sub_0805664C
_0804DCB4: .4byte gUnk_03005CF4
_0804DCB8: .4byte 0x00000E34
_0804DCBC:
	adds r5, #1
	adds r4, #0x28
_0804DCC0:
	cmp r5, #0x1d
	bhi _0804DCFE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804DCBC
	b _0804DCD4
_0804DCD0:
	bl sub_080003F0
_0804DCD4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804DCD0
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
	movs r1, #9
	bl sub_08000274
_0804DCFE:
	ldr r6, _0804DD0C
	ldr r0, _0804DD10
	ldr r0, [r0, #0]
	ldr r1, _0804DD14
	adds r4, r0, r1
	movs r5, #0
	b _0804DD1C
_0804DD0C: .4byte sub_0805664C
_0804DD10: .4byte gUnk_03005CF4
_0804DD14: .4byte 0x00000E34
_0804DD18:
	adds r5, #1
	adds r4, #0x28
_0804DD1C:
	cmp r5, #0x1d
	bhi _0804DD5A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804DD18
	b _0804DD30
_0804DD2C:
	bl sub_080003F0
_0804DD30:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804DD2C
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
	movs r1, #0xa
	bl sub_08000274
_0804DD5A:
	ldr r6, _0804DD68
	ldr r0, _0804DD6C
	ldr r0, [r0, #0]
	ldr r1, _0804DD70
	adds r4, r0, r1
	movs r5, #0
	b _0804DD78
_0804DD68: .4byte sub_0805664C
_0804DD6C: .4byte gUnk_03005CF4
_0804DD70: .4byte 0x00000E34
_0804DD74:
	adds r5, #1
	adds r4, #0x28
_0804DD78:
	cmp r5, #0x1d
	bhi _0804DDB6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804DD74
	b _0804DD8C
_0804DD88:
	bl sub_080003F0
_0804DD8C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804DD88
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
	movs r1, #0xb
	bl sub_08000274
_0804DDB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_0804DB48
